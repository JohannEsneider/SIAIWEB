/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author APRENDIZ
 */
public class DocumentacionIng {
    
    int idDocumentacion;
    String nombre;
    String apellido;
    String acudiente;
    String matricula;
    String salud;
    String boletin;

    public DocumentacionIng() {
    }

    public DocumentacionIng(int idDocumentacion, String nombre, String apellido, String acudiente, String matricula, String salud, String boletin) {
        this.idDocumentacion = idDocumentacion;
        this.nombre = nombre;
        this.apellido = apellido;
        this.acudiente = acudiente;
        this.matricula = matricula;
        this.salud = salud;
        this.boletin = boletin;
    }

    public int getIdDocumentacion() {
        return idDocumentacion;
    }

    public void setIdDocumentacion(int idDocumentacion) {
        this.idDocumentacion = idDocumentacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getAcudiente() {
        return acudiente;
    }

    public void setAcudiente(String acudiente) {
        this.acudiente = acudiente;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getSalud() {
        return salud;
    }

    public void setSalud(String salud) {
        this.salud = salud;
    }

    public String getBoletin() {
        return boletin;
    }

    public void setBoletin(String boletin) {
        this.boletin = boletin;
    }
    
    
}
