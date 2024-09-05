package Checkpoint02;

import java.time.LocalDate;

public class Objeto {

    public static void main(String[] args) {

        Cliente clienteMarcos = new Cliente("Marcos","Silva","marsilva23","dwoi290",29884927863L,"Rua: Fernando, 345");
        System.out.println(clienteMarcos.getNome());

        Funcionario pedreiro = new Funcionario("Marcos","Silva", 28459040184L, "pedreiro");
        System.out.println(pedreiro.pagamentoTrab(100.0));

        Servico funcionario = new Servico(988L, LocalDate.of(2023,10,06),LocalDate.of(2023,10,30));
        System.out.println(funcionario.getIdServico());

        Funcionario cargo = new Funcionario("Piscineiro");

        Piscineiro funcionario1 = new Piscineiro("Francisco", "Marques", 29384930291L, "Piscineiro", 1L, 100);
        Piscineiro funcionario2 = new Piscineiro("Marcia", "Helena", 38493029182L, "Piscineiro", 2L, 200);
        Piscineiro funcionario3 = new Piscineiro("Erica", "Sila", 273748593402L, "Piscineiro", 3L, 500);


        cargo.addFuncionario(funcionario1);
        cargo.addFuncionario(funcionario2);
        cargo.addFuncionario(funcionario3);

        cargo.obterFuncionario(cargo.getListaFuncionarios());

        try {
            cargo.obterQuantidadeFuncionarios("pedreiro");
        } catch ( Exception e){
            e.printStackTrace();
        }


    }
}
