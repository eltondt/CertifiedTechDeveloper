package Checkpoint02;

import java.util.ArrayList;

public class Empresa {
    private String razaoSocial;

    private String login;

    private String senha;

    private Long cnpj;

    private String endereco;

    private Long tel;

    private Long ie;

    protected Long orcamento;

    // construtor

    public Empresa(String razaoSocial, String login, String senha, Long cnpj, String endereco, Long tel, Long ie, Long orcamento) {
        this.razaoSocial = razaoSocial;
        this.login = login;
        this.senha = senha;
        this.cnpj = cnpj;
        this.endereco = endereco;
        this.tel = tel;
        this.ie = ie;
        this.orcamento = orcamento;
    }

    // get e set

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Long getCnpj() {
        return cnpj;
    }

    public void setCnpj(Long cnpj) {
        this.cnpj = cnpj;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Long getTel() {
        return tel;
    }

    public void setTel(Long tel) {
        this.tel = tel;
    }

    public Long getIe() {
        return ie;
    }

    public void setIe(Long ie) {
        this.ie = ie;
    }

    public Long getOrcamento() {
        return orcamento;
    }

    public void setOrcamento(Long orcamento) {
        this.orcamento = orcamento;
    }
}
