using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
//using MySql.Data.MySqlClient;

namespace AutoAgenciaCR_WebSite.App_Code.Negocio
{
    public class Administrador
    {

        Datos.Cliente c;
        Datos.Agencia a;
        Contenedor contenedor;

        public Boolean ingresarUsuario(String usuario, String password)
        {
            bool condition = false;
            MySql.Data.MySqlClient.MySqlConnection conn;
            MySql.Data.MySqlClient.MySqlCommand cmd;
            //para leer datos de bd
            MySql.Data.MySqlClient.MySqlDataReader reader;
            String name;
            String connString = "Data Source=localhost;Initial Catalog=test;Integrated Security=True;Uid=root;Pwd=root;port=3306";
            String query;
            
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            query = "";
            query = "select * from cliente where contrasena='"+password+"' and username='"+usuario+"'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(query,conn);

            reader = cmd.ExecuteReader();
            name = "";
            //retorna nombre y apellido del las credenciales asociadas
            while (reader.HasRows && reader.Read()){
                name = reader.GetString(reader.GetOrdinal("nombre")) + " " +
                       reader.GetString(reader.GetOrdinal("apellido"));
                name.ToString();
            }
            //usuario existe
            if (reader.HasRows) {
                
                condition = true;
            }
                //si usuario no existe
            else { condition = false; }
            reader.Close();
            conn.Close();
            //
            return condition;
        }

        public Boolean registrarUsuario(String nombre, String apellido, String correo,
            String direccion, int telefono, String contraseña, String usuario)
        {
                bool condition = false;
                c = new Datos.Cliente(nombre, apellido, direccion, usuario, correo, telefono, contraseña);
                contenedor = new Contenedor();
                contenedor.registrarUsuario(nombre, apellido, correo,
            direccion, telefono, contraseña, usuario);
                return condition;
        }

        public Boolean registrarAgencia(String nombre,String direccion,String ciudad,
            int telefono,String sitioWeb,String descripcion,String correo) {
            a = new Datos.Agencia(nombre,direccion,correo,sitioWeb,ciudad,telefono, descripcion);
            contenedor = new Negocio.Contenedor();
            contenedor.registrarAgencia(a);
            return true;
        }
    }
}