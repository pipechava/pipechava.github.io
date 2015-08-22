using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoAgenciaCR_WebSite.App_Code.Datos
{
    public class Login
    {
        private String usuario;
        private String contrasena;

        public Login() { }
        public Login(String _usuario, String _contrasena) {
            this.contrasena = _contrasena;
            this.usuario = _usuario;
        }
        public String getUsuario() {
            return usuario;
        }
        public String getContrasena() {
            return contrasena;
        }

        public void setUsuario(String usuario) {
            this.usuario = usuario;
        }

        public void setContrasena(String contrasena) {
            this.contrasena = contrasena;
        }
    }
}