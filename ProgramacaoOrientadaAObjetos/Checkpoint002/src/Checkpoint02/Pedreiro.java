package Checkpoint02;

public class Pedreiro extends Funcionario{

    private Long idPedreiro;

    private Integer quantidadeHoras;


    // construtor

    public Pedreiro(String nome, String sobrenome, Long cpf, String cargo, Long idPedreiro, Integer quantidadeHoras) {
        super(nome, sobrenome, cpf, cargo);
        this.idPedreiro = idPedreiro;
        this.quantidadeHoras = quantidadeHoras;
    }


    //METODO
    // Realiza a conta de valor do pagamento

    @Override
    public Double pagamentoTrab(Double valorHoraMes) {
        System.out.println("O valor a ser cobrado é" + (valorHoraMes + quantidadeHoras));
        return valorHoraMes;
    }

    public Long getIdPedreiro() {
        return idPedreiro;
    }

    public void setIdPedreiro(Long idPedreiro) {
        this.idPedreiro = idPedreiro;
    }

    public Integer getQuantidadeHoras() {
        return quantidadeHoras;
    }

    public void setQuantidadeHoras(Integer quantidadeHoras) {
        this.quantidadeHoras = quantidadeHoras;
    }
}
