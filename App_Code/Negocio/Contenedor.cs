using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoAgenciaCR_WebSite.App_Code.Negocio
{
    public class Contenedor
    {



        public Boolean registrarUsuario(String nombre, String apellido, String correo,
            String direccion, int telefono, String contraseña, String usuario)
        {
            bool condition = false;
            MySql.Data.MySqlClient.MySqlConnection conn;
            MySql.Data.MySqlClient.MySqlCommand cmd;
            String connString = "Data Source=localhost;Initial Catalog=test;Integrated Security=True;Uid=root;Pwd=mysql";
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            cmd = new MySql.Data.MySqlClient.MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "CALL ClienteProcedure(@MyParam1, @MyParam2, @MyParam3, @MyParam4, @MyParam5, @MyParam6, @MyParam7, @MyParam8);";
            cmd.Parameters.AddWithValue("@MyParam1", 0);//el id cambia en el procedimiento almacenado
            cmd.Parameters.AddWithValue("@MyParam2", nombre);
            cmd.Parameters.AddWithValue("@MyParam3", apellido);
            cmd.Parameters.AddWithValue("@MyParam4", usuario);
            cmd.Parameters.AddWithValue("@MyParam5", contraseña);
            cmd.Parameters.AddWithValue("@MyParam6", direccion);
            cmd.Parameters.AddWithValue("@MyParam7", correo);
            cmd.Parameters.AddWithValue("@MyParam8", telefono);
            conn.Open();
            cmd.ExecuteNonQuery();
            condition = true;
            conn.Close();

            return condition;
        }

        public Boolean registrarAgencia(Datos.Agencia agency)
        {
            bool condition = false;
            MySql.Data.MySqlClient.MySqlConnection conn;
            MySql.Data.MySqlClient.MySqlCommand cmd;
            String connString = "Data Source=localhost;Initial Catalog=test;Integrated Security=True;Uid=root;Pwd=mysql";
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            cmd = new MySql.Data.MySqlClient.MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "CALL RegistroAgenciaAdmin(@MyParam1, @MyParam2, @MyParam3, @MyParam4, @MyParam5, @MyParam6);";
            cmd.Parameters.AddWithValue("@MyParam1", 0);//el id cambia en el procedimiento almacenado
            cmd.Parameters.AddWithValue("@MyParam2", agency.getNombre());
            cmd.Parameters.AddWithValue("@MyParam3", agency.getDireccion());
            cmd.Parameters.AddWithValue("@MyParam4", agency.getCiudad());
            cmd.Parameters.AddWithValue("@MyParam5", agency.getTelefono());
            cmd.Parameters.AddWithValue("@MyParam6", agency.getSitioWeb());
            //parametros descripcion falta
            //parametros user y pass el cliente los valida
            conn.Open();
            cmd.ExecuteNonQuery();
            condition = true;
            conn.Close();

            return condition;
        }
    }
}
