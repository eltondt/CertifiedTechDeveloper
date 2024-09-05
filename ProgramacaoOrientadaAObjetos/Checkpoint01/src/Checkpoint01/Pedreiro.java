package Checkpoint01;

public class Pedreiro extends Empresa {

        private String nome;

        private String sobrenome;

        private Long cpf;

        private Integer quantidadeHoras;

        // construtor

    public Pedreiro(String razaoSocial, String login, String senha, Long cnpj, String endereco, Long tel, Long ie, String nome, String sobrenome, Long cpf, Integer quantidadeHoras) {
        super(razaoSocial, login, senha, cnpj, endereco, tel, ie);
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.cpf = cpf;
        this.quantidadeHoras = quantidadeHoras;
    }

    //METODO

    @Override
    public Double pagamentoTrab(Double valorHoraMes) {
        System.out.println("O valor a ser cobrado é" + (valorHoraMes + quantidadeHoras));
        return valorHoraMes;
    }
}
