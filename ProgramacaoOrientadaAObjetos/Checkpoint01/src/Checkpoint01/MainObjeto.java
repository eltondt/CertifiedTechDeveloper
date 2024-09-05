package Checkpoint01;

import java.time.LocalDate;

public class MainObjeto {

    public static void main(String[] args) {
        Cliente clienteMarcos = new Cliente("Marcos","Silva","marsilva23","dwoi290",29884927863L,"Rua: Fernando, 345");
        System.out.println(clienteMarcos.getNome());

        Jardineiro jardineiroRs = new Jardineiro("RS Empresa","RS", "rsempresa",28459040000184L,"Av. João Ferreira",15998376465L,737392908L,"Marcos","Silva",29304029129L,4);
        System.out.println(jardineiroRs.pagamentoTrab(100.0));

        Servico jardineiro = new Servico(988L, LocalDate.of(2023,10,06),LocalDate.of(2023,10,30));
        System.out.println(jardineiro.getIdServico());
    }
}
