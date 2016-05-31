package br.ufsm.ceesp.util;

import br.ufsm.ceesp.beans.PlanejDinamicoDAO;
import br.ufsm.ceesp.model.*;
import br.ufsm.ceesp.model.teste.Servico;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

/**
 * Created by politecnico on 04/03/2016.
 */
@Repository
public class CargaArquivos {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private PlanejDinamicoDAO planejDinamicoDAO;

    @Transactional
    public ArquivoSaida carregaArquivoSaida(InputStream in, String tipo) throws IOException, ParseException {
        ArquivoSaida arq = new ArquivoSaida();
        arq.setRotas(new ArrayList<>());
        LeitorCSV leitorCSV = new LeitorCSV(in, '\t');
        SimpleDateFormat SDF_data = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat SDF_dataHora = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        String[] linhaArquivo = leitorCSV.nextLine();
        String[] primeiraLinha = linhaArquivo[0].split(" ");
        String dataHora = SDF_data.format(new Date()) + " " + primeiraLinha[0];
        arq.setData(SDF_dataHora.parse(dataHora));
        arq.setNumEquipes(Integer.parseInt(primeiraLinha[1]));
        arq.setNumOrdensEmergenciaisNaoAtribuidas(Integer.parseInt(primeiraLinha[2]));
        arq.setTipo(tipo);
        sessionFactory.getCurrentSession().save(arq);
        linhaArquivo = leitorCSV.nextLine();
        Rota rota = null;
        while(linhaArquivo != null) {
            if (linhaArquivo.length == 5) {
                if (rota != null) {
                    arq.getRotas().add(rota);
                }
                rota = new Rota();
                rota.setOrdems(new ArrayList<>());
                Equipe equipe = planejDinamicoDAO.findEquipeByNumero(Long.parseLong(linhaArquivo[0]));
                if (equipe == null) {
                    equipe = new Equipe();
                    equipe.setNumero(Long.parseLong(linhaArquivo[0]));
                    sessionFactory.getCurrentSession().save(equipe);
                }
                String lat = linhaArquivo[1].trim();
                String longi = linhaArquivo[2].trim();
                equipe.setLocalizacao(converteParaLocalizacao(lat, longi));
                rota.setTempoAcumulado(Long.parseLong(linhaArquivo[4]));
                rota.setEquipe(equipe);
                rota.setArquivoSaida(arq);
                sessionFactory.getCurrentSession().save(rota);
            } else if (linhaArquivo.length > 5){
                DespachoOrdemServico ordemRota = new DespachoOrdemServico();
                String seq = linhaArquivo[0].trim();
                String tipoOrdem = linhaArquivo[1].trim();
                String num = linhaArquivo[2].trim();
                String horaChegada = linhaArquivo[5].trim();
                String horaSaida = linhaArquivo[6].trim();
                String prioridade = null;
                String custo = null;
                String tempoChegadaAcumudado = null;
                String distanciaPosEquipe = null;
                String distanciaAnterior = null;
                Localizacao localizacao = converteParaLocalizacao(linhaArquivo[3].trim(), linhaArquivo[4].trim());
                OrdemServico ordem = planejDinamicoDAO.findOrdemServicoByNumero(num);
                if (ordem == null) {
                    ordem = new OrdemServico();
                    ordem.setNumero(num);
                    sessionFactory.getCurrentSession().save(ordem);
                }
                ordem.setTipo(tipoOrdem);
                ordem.setLocalizacao(localizacao);
                ordemRota.setOrdemServico(ordem);
                ordemRota.setSequencia(Integer.parseInt(seq));
                ordemRota.setDataHoraChegada(SDF_dataHora.parse(SDF_data.format(new Date()) + " " + horaChegada));
                ordemRota.setDataHoraSaida(SDF_dataHora.parse(SDF_data.format(new Date()) + " " + horaSaida));
                ordemRota.setRota(rota);
                if (tipo.equals("C")) {
                    prioridade = linhaArquivo[7].trim();
                    tempoChegadaAcumudado = linhaArquivo[8].trim();
                } else if (tipo.equals("E")) {
                    custo = linhaArquivo[7];
                    tempoChegadaAcumudado = linhaArquivo[8].trim();
                    distanciaPosEquipe = linhaArquivo[9].trim().replace(",", ".");
                    distanciaAnterior = linhaArquivo[10].trim().replace(",", ".");
                }
                if (prioridade != null) {
                    ordemRota.setPrioridade(Integer.parseInt(prioridade));
                }
                if (custo != null) {
                    ordemRota.setCusto(Double.parseDouble(custo));
                }
                if (tempoChegadaAcumudado != null) {
                    ordemRota.setTempoAcumulado(Integer.parseInt(tempoChegadaAcumudado));
                }
                if (distanciaPosEquipe != null) {
                    ordemRota.setDistanciaPosEquipe(new Double(distanciaPosEquipe));
                }
                if (distanciaAnterior != null) {
                    ordemRota.setDistanciaPosAnterior(new Double(distanciaAnterior));
                }
                sessionFactory.getCurrentSession().save(ordemRota);
            }
            linhaArquivo = leitorCSV.nextLine();
        }
        return arq;
    }

    private Localizacao converteParaLocalizacao(String lat, String longi) {
        Localizacao localizacao = new Localizacao();
        if (!lat.contains(".")) {
            localizacao.setLatitude(Double.parseDouble("-0." + lat.replace("-", "")) * 100.0);
        } else {
            localizacao.setLatitude(Double.parseDouble("-" + lat.replace("-", "")));
        }
        if (!longi.contains(".")) {
            localizacao.setLongitude(Double.parseDouble("-0." + longi.replace("-", "")) * 100.0);
        } else {
            localizacao.setLongitude(Double.parseDouble("-" + longi.replace("-", "")));
        }
        return localizacao;
    }

    @Transactional
    public Collection<Servico> carregaArquivoChamadosComercial(InputStream in) {
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        NumberFormat nf = new DecimalFormat("#,##0.00");
        Collection<Servico> servicos = new ArrayList<>();
        LeitorCSV leitorCSV = new LeitorCSV(in, ';');
        try {
            String[] linha = leitorCSV.nextLine();
            linha = leitorCSV.nextLine();
            while (linha != null) {
                try {
                    Servico servico = new Servico();

                    servico.setNumOS(Long.getLong(linha[0]));
                    servico.setTipoOS(linha[1]);
                    Date dataGeracao = null;
                    try {
                        dataGeracao = sdf1.parse(linha[2]);
                    } catch (Exception e) {
                        dataGeracao = sdf2.parse(linha[2]);
                    }
                    Date dataPrazo = null;
                    try {
                        dataPrazo = sdf1.parse(linha[3]);
                    } catch (Exception e) {
                        dataPrazo = sdf2.parse(linha[3]);
                    }
                    servico.setDataRealizacao(dataGeracao);
                    servico.setDataPrazo(dataPrazo);
                    servico.setLocalizacao(new Localizacao());
                    servico.getLocalizacao().setLatitude(nf.parse(linha[4]).doubleValue());
                    servico.getLocalizacao().setLongitude(nf.parse(linha[5]).doubleValue());
                    try {
                        servico.setTempoExecucao(Integer.parseInt(linha[6]));
                    } catch (Exception e) {
                        servico.setTempoExecucao(null);
                    }
                    servico.setGrupo(linha[7]);
                    if (linha.length > 8) {
                        servico.setRegulada(linha[8]);
                    }
                    linha = leitorCSV.nextLine();
                    servicos.add(servico);
                    sessionFactory.getCurrentSession().save(servico);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return servicos;
    }

}
