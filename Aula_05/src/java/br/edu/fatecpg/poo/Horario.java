package br.edu.fatecpg.poo;

/**
 *
 * @author Luiz
 */
public class Horario {

    private int hora;
    private int minutos;
    private int segundo;

    public Horario() {}
    
    public Horario(int hora, int minutos, int segundo) {
        this.hora = hora;
        this.minutos = minutos;
        this.segundo = segundo;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getMinutos() {
        return minutos;
    }

    public void setMinutos(int minutos) {
        this.minutos = minutos;
    }

    public int getSegundo() {
        return segundo;
    }

      public void setSegundo(int segundo) {
        this.segundo = segundo;
    }

}
