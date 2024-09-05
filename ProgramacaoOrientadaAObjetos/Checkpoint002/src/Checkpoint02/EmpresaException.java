package Checkpoint02;

public class EmpresaException extends Exception{

    public EmpresaException() {
    }

    public EmpresaException(String message) {
        super(message);
    }

    @Override
    public String toString() {
        return getMessage();
    }
}
