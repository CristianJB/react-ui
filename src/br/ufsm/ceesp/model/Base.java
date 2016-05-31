package br.ufsm.ceesp.model;

import javax.persistence.*;

/**
 * Created by politecnico on 30/05/2016.
 */
@Entity
@Table(name = "BASES")
public class Base {

    private Long id;
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
