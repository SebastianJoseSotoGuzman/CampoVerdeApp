package com.cv.model.entity;

public class Usuario { 
   

    int id; 
    String Codigo;
    private String nombre;
    private int idTipodocumento;
    private String nrodocumento;
    private double sueldo;
    private String telefono;
    private String direccion;
    private String email;
    private String fechaderegistro;
    private String Filename1;
    private String Path1;
    String usu, salt, password, rol;
    private String estado;

  
    public Usuario() {
    }

   
    public String getFilename1() {
        return Filename1;
    }

    public void setFilename1(String Filename1) {
        this.Filename1 = Filename1;
    }

    public String getPath1() {
        return Path1;
    }

    public void setPath1(String Path1) {
        this.Path1 = Path1;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdTipodocumento() {
        return idTipodocumento;
    }

    public void setIdTipodocumento(int idTipodocumento) {
        this.idTipodocumento = idTipodocumento;
    }

    public String getNrodocumento() {
        return nrodocumento;
    }

    public void setNrodocumento(String nrodocumento) {
        this.nrodocumento = nrodocumento;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFechaderegistro() {
        return fechaderegistro;
    }

    public void setFechaderegistro(String fechaderegistro) {
        this.fechaderegistro = fechaderegistro;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public String getUsu() {
        return usu;
    }

    public void setUsu(String usu) {
        this.usu = usu;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

}
