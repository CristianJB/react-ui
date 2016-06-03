package br.ufsm.ceesp.model;

import com.google.gson.annotations.Expose;

import javax.persistence.*;

/**
 * Created by politecnico on 22/04/2016.
 */
@Entity
@Table(name = "ORDENS_SERVICO")
public class OrdemServico {

    @Expose
    private Long id;
    @Expose
    private String numero;
    @Expose
    private String tipo;
    @Expose
    private Localizacao localizacao;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "NUMERO", unique = true)
    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }


    @Column(name = "TIPO")
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Embedded
    public Localizacao getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(Localizacao localizacao) {
        this.localizacao = localizacao;
    }


}
