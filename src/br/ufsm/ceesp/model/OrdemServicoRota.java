package br.ufsm.ceesp.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by politecnico on 22/04/2016.
 */
@Entity
@Table(name = "ORDEM_SERVICO_ROTA")
public class OrdemServicoRota {

    private Long id;
    private Rota rota;
    private Integer sequencia;
    private Date dataHoraChegada;
    private Date dataHoraSaida;
    private Integer prioridade;
    private Integer tempoAcumulado;
    private OrdemServico ordemServico;
    private Double custo;
    private Double distanciaPosEquipe;
    private Double distanciaPosAnterior;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @ManyToOne
    @JoinColumn(name = "ID_ORDEM_SERVICO")
    public OrdemServico getOrdemServico() {
        return ordemServico;
    }

    public void setOrdemServico(OrdemServico ordemServico) {
        this.ordemServico = ordemServico;
    }

    @Column(name = "SEQUENCIA")
    public Integer getSequencia() {
        return sequencia;
    }

    public void setSequencia(Integer sequencia) {
        this.sequencia = sequencia;
    }

    @Column(name = "DATAHORA_CHEGADA")
    public Date getDataHoraChegada() {
        return dataHoraChegada;
    }

    public void setDataHoraChegada(Date dataHoraChegada) {
        this.dataHoraChegada = dataHoraChegada;
    }

    @Column(name = "DATAHORA_SAIDA")
    public Date getDataHoraSaida() {
        return dataHoraSaida;
    }

    public void setDataHoraSaida(Date dataHoraSaida) {
        this.dataHoraSaida = dataHoraSaida;
    }

    @Column(name = "PRIORIDADE")
    public Integer getPrioridade() {
        return prioridade;
    }

    public void setPrioridade(Integer prioridade) {
        this.prioridade = prioridade;
    }

    @Column(name = "TEMPO_ACUMULADO")
    public Integer getTempoAcumulado() {
        return tempoAcumulado;
    }

    public void setTempoAcumulado(Integer tempoAcumulado) {
        this.tempoAcumulado = tempoAcumulado;
    }

    @ManyToOne
    @JoinColumn(name = "ID_ROTA")
    public Rota getRota() {
        return rota;
    }

    public void setRota(Rota rota) {
        this.rota = rota;
    }

    public void setCusto(Double custo) {
        this.custo = custo;
    }

    @Column(name = "CUSTO")
    public Double getCusto() {
        return custo;
    }

    @Column(name = "DISTANCIA_POS_EQUIPE")
    public Double getDistanciaPosEquipe() {
        return distanciaPosEquipe;
    }

    @Column(name = "DISTANCIA_POS_ANTERIOR")
    public Double getDistanciaPosAnterior() {
        return distanciaPosAnterior;
    }

    public void setDistanciaPosEquipe(Double distanciaPosEquipe) {
        this.distanciaPosEquipe = distanciaPosEquipe;
    }

    public void setDistanciaPosAnterior(Double distanciaPosAnterior) {
        this.distanciaPosAnterior = distanciaPosAnterior;
    }
}
