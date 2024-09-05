package Checkpoint01;

import java.time.LocalDate;

public class Servico {

    private Long idServico;

    private LocalDate dataInicio;

    private LocalDate dataTermino;


    // contrutor

    public Servico(Long idServico, LocalDate dataInicio, LocalDate dataTermino) {
        this.idServico = idServico;
        this.dataInicio = dataInicio;
        this.dataTermino = dataTermino;
    }

    // get e set
    public Long getIdServico() {
        return idServico;
    }

    public void setIdServico(Long idServico) {
        this.idServico = idServico;
    }

    public LocalDate getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(LocalDate dataInicio) {
        this.dataInicio = dataInicio;
    }

    public LocalDate getDataTermino() {
        return dataTermino;
    }

    public void setDataTermino(LocalDate dataTermino) {
        this.dataTermino = dataTermino;
    }
}
