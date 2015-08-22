using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoAgenciaCR_WebSite.App_Code.UI
{
	public class UIIndex
	{

        private Negocio.Validaciones v;
        private Negocio.Administrador a;

        public UIIndex()
        {
            //
            // TODO: Add constructor logic here
            //
        }

		public Boolean ValidarLogin(String usuario, String password)
		{
			bool condition = false;
			a = new Negocio.Administrador();
			if (a.ingresarUsuario(usuario, password))
			{
				condition = true;
			}
			else
			{
				condition = false;
			}


			return condition;
		}

		public Boolean validarRegistro(String nombre, String apellido, String correo,
			String direccion, int telefono, String contraseña, String usuario)
		{
			bool condition = false;
			//v.isEmpty(nombre, apellido, correo, direccion, telefono, contraseña, usuario);
			//validar nombre-apellido-telefono-correo
			//if condicion false entonces mando a admin

			a = new Negocio.Administrador();
			//bool condition=false;
			a.registrarUsuario(nombre, apellido, correo, direccion, telefono, contraseña, usuario);
			return condition;
		}

	}
}