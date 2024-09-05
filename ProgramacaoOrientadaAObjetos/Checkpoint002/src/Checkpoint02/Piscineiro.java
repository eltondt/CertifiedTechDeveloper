package Checkpoint02;

import java.util.ArrayList;

public class Piscineiro extends Funcionario{
    private Long idPiscineiro;

    private Integer quantidadeHoras;


    // construtor

    public Piscineiro(String nome, String sobrenome, Long cpf, String cargo, Long idPiscineiro, Integer quantidadeHoras) {
        super(nome, sobrenome, cpf, cargo);
        this.idPiscineiro = idPiscineiro;
        this.quantidadeHoras = quantidadeHoras;
    }


    //METODO
    // Realiza a conta de valor do pagamento

    @Override
    public Double pagamentoTrab(Double valorHoraMes) {
        System.out.println("O valor a ser cobrado é" + (valorHoraMes + quantidadeHoras));
        return valorHoraMes;
    }

    public Long getIdPiscineiro() {
        return idPiscineiro;
    }

    public void setIdPiscineiro(Long idPiscineiro) {
        this.idPiscineiro = idPiscineiro;
    }
}
