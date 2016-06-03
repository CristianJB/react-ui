package br.ufsm.ceesp.model;

import com.google.gson.annotations.Expose;

import javax.persistence.*;

/**
 * Created by politecnico on 30/05/2016.
 */
@Entity
@Table(name = "BASES")
public class Base {

    @Expose
    private Long id;
    @Expose
    private String nome;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "NOME", unique = true)
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
