package br.ufsm.ceesp.model;

import com.google.gson.annotations.Expose;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by politecnico on 22/04/2016.
 */
@Entity
@Table(name = "ROTAS")
public class Rota {

    @Expose
    private Long id;
    @Expose
    private ArquivoSaida arquivoSaida;
    @Expose
    private Equipe equipe;
    @Expose
    private Collection<DespachoOrdemServico> ordems;
    @Expose
    private Long tempoAcumulado;

    @Column(name = "TEMPO_ACUMULADO")
    public Long getTempoAcumulado() {
        return tempoAcumulado;
    }

    public void setTempoAcumulado(Long tempoAcumulado) {
        this.tempoAcumulado = tempoAcumulado;
    }

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
    @JoinColumn(name = "ID_EQUIPE")
    public Equipe getEquipe() {
        return equipe;
    }

    public void setEquipe(Equipe equipe) {
        this.equipe = equipe;
    }

    @OneToMany(mappedBy = "rota")
    @OrderBy("sequencia")
    public Collection<DespachoOrdemServico> getOrdems() {
        return ordems;
    }

    public void setOrdems(Collection<DespachoOrdemServico> ordems) {
        this.ordems = ordems;
    }

    @ManyToOne
    @JoinColumn(name = "ID_ARQUIVO_SAIDA")
    public ArquivoSaida getArquivoSaida() {
        return arquivoSaida;
    }

    public void setArquivoSaida(ArquivoSaida arquivoSaida) {
        this.arquivoSaida = arquivoSaida;
    }
}
