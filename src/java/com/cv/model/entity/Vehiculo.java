package com.cv.model.entity;

public class Vehiculo {

    private Integer Idvehi;
    private String Codigo;
    private String placa;
    private String marca;
    private String Estado;

    public Vehiculo() {
    }

    public Integer getIdvehi() {
        return Idvehi;
    }

    public void setIdvehi(Integer Idvehi) {
        this.Idvehi = Idvehi;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

}
