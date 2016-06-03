package br.ufsm.ceesp.model;

import com.google.gson.annotations.Expose;

import javax.persistence.*;

/**
 * Created by politecnico on 22/04/2016.
 */
@Entity
@Table(name = "EQUIPES")
public class Equipe {

    @Expose
    private Long id;
    @Expose
    private Long numero;
    @Expose
    private Localizacao localizacao;
    @Expose
    private Base base;

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
    public Long getNumero() {
        return numero;
    }

    public void setNumero(Long numero) {
        this.numero = numero;
    }

    @Embedded
    public Localizacao getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(Localizacao localizacao) {
        this.localizacao = localizacao;
    }

    @ManyToOne
    @JoinColumn(name = "ID_BASE")
    public Base getBase() {
        return base;
    }

    public void setBase(Base base) {
        this.base = base;
    }
}
