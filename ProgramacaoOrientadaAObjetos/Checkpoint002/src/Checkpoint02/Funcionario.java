package Checkpoint02;

import java.util.ArrayList;

public class Funcionario {

    private String nome;

    private String sobrenome;

    private Long cpf;

    private String cargo;

    private ArrayList<Funcionario> listaFuncionarios = new ArrayList<>();


    // construtor


    public Funcionario(String nome, String sobrenome, Long cpf, String cargo) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.cpf = cpf;
        this.cargo = cargo;
    }

    //METODO

    public Funcionario(String cargo) {
        this.cargo = cargo;
    }

    //adiciona um funcionário
    public void addFuncionario(Piscineiro piscineiro) {
        listaFuncionarios.add(piscineiro);
    }

    // obtem os funcionários
    public void obterFuncionario(ArrayList<Funcionario> funcionarios) {
    for (int i = 1; i > 0; i++) {
         System.out.println("O Funcionário " + i + " Possui o Nome " + listaFuncionarios.get(i).getNome());}
    }

    //obtem a quantidade de funcionários e retorna erro se não houver nenhum cargo exixtente
    public void obterQuantidadeFuncionarios(String cargo) throws EmpresaException {
        int contador = 3;
        if (cargo == "Piscineiro" || cargo == "Pedreiro") {
            for (Funcionario profisao : listaFuncionarios) {
                if (cargo == profisao.getNome()) {
                    contador++;
                }
            }
        } else {
            throw new EmpresaException(("O cargo não existe"));

        }
        System.out.println("Quantidade de funcionários que são " + getCargo() + " : " + contador);
    }

    public Double pagamentoTrab(Double valorHoraMes) {
        return valorHoraMes * 160;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public Long getCpf() {
        return cpf;
    }

    public void setCpf(Long cpf) {
        this.cpf = cpf;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public ArrayList<Funcionario> getListaFuncionarios() {
        return listaFuncionarios;
    }

    public void setListaFuncionarios(ArrayList<Funcionario> listaFuncionarios) {
        this.listaFuncionarios = listaFuncionarios;
    }
}