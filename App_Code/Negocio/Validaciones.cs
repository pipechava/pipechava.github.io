using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace AutoAgenciaCR_WebSite.App_Code.Negocio
{
    public class Validaciones
    {
        public Boolean isEmpty(String nombre, String apellido, String correo,
            String direccion, int telefono, String contraseña, String usuario) {
                if (nombre == "" || apellido == "" || correo == "" ||
                   direccion == "" || telefono == null || contraseña == "" || usuario == "")
                {
                    return false;
                }
                else
                {
                    return true; 
                }
        }

        public Boolean isName(String dato) {
            if ( !Regex.Match(dato,"^[A-Z][a-zA-Z]*$" ).Success){
                return true;
            }
            else{
                return false;
            }
        }

        public Boolean isEmail(String dato) { 
            return true;
        }
    }
}