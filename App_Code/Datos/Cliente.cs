using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoAgenciaCR_WebSite.App_Code.Datos
{
    public class Cliente
    {
         String nombre;
         String apellido;
         String Direccion;
         String usuario;
         String correo;
         String contraseña;
         int telefono;

        //constructor vacio
         public Cliente() { 
         
         }
        // 2 constructor
         public Cliente(String nombre, String apellido, String Direccion, String usuario,
         String correo, int telefono, String contraseña)         {
             this.nombre = nombre;
             this.apellido = apellido;
             this.Direccion = Direccion;
             this.usuario = usuario;
             this.correo = correo;
             this.telefono = telefono;
             this.contraseña = contraseña;
         }

         public void setnombre(String name)
         {
             nombre = name;
         }

         

    }
}