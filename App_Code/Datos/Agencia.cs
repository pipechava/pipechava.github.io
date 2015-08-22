using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoAgenciaCR_WebSite.App_Code.Datos
{
    public class Agencia
    {
        private String nombre;
        private String direccion;
        private String correoElectronico;
        private String sitioWeb;
        private String ciudad;
        private int telefono;
        private String descripcion;
        private String username;
        private String contrasena;

        public Agencia(String nombre, String direccion, String correoElectronico, String sitioWeb, String ciudad, int telefono, String descripcion)
        {
            this.nombre = nombre;
            this.direccion = direccion;
            this.correoElectronico = correoElectronico;
            this.sitioWeb = sitioWeb;
            this.ciudad = ciudad;
            this.telefono = telefono;
            this.descripcion = descripcion;
        }



        public Agencia(String username, String contrasena)
        {
            this.username = username;
            this.contrasena = contrasena;
        }

        public String getNombre()
        {
            return nombre;
        }

        public void setNombre(String nombre)
        {
            this.nombre = nombre;
        }

        public String getDireccion()
        {
            return direccion;
        }

        public void setDireccion(String direccion)
        {
            this.direccion = direccion;
        }

        public String getCorreoElectronico()
        {
            return correoElectronico;
        }

        public void setCorreoElectronico(String correoElectronico)
        {
            this.correoElectronico = correoElectronico;
        }

        public String getSitioWeb()
        {
            return sitioWeb;
        }

        public void setSitioWeb(String sitioWeb)
        {
            this.sitioWeb = sitioWeb;
        }

        public String getCiudad()
        {
            return ciudad;
        }

        public void setCiudad(String ciudad)
        {
            this.ciudad = ciudad;
        }

        public int getTelefono()
        {
            return telefono;
        }

        public void setTelefono(int telefono)
        {
            this.telefono = telefono;
        }

        public String getDescripcion()
        {
            return descripcion;
        }

        public void setDescripcion(String descripcion)
        {
            this.descripcion = descripcion;
        }

        public String getUsername()
        {
            return username;
        }

        public void setUsername(String username)
        {
            this.username = username;
        }

        public String getContrasena()
        {
            return contrasena;
        }

        public void setContrasena(String contrasena)
        {
            this.contrasena = contrasena;
        }
    
    
    }
}