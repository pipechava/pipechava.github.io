using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Threading;
    
    public partial class index : System.Web.UI.Page
    {


        private AutoAgenciaCR_WebSite.App_Code.UI.UIIndex p;
        bool usuarioValiado;
        String html = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            

            //html = "";
            //int i = 0;
            //while (i < 10)
            //{
            //    html += "<div id=\"test" + i + "\">";
            //    html += "Hola " + i;
            //    html += "</div>";
            //    i++;
            //}
            //Literal1.Text = html;

            usuarioValiado = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            p = new AutoAgenciaCR_WebSite.App_Code.UI.UIIndex();

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            String usuario = txtUsuarioLogin.Text;
            String password = txtPasswordLogin.Text;

             
            //si los textbox no estan vacios se procesa la peticion
            if (usuario != "" && password != "" && usuarioValiado.Equals(false))
            {
                bool condition = p.ValidarLogin(usuario, password);
                if (condition)
                {
                    usuarioValiado = true;

                    //si pudo encontrar el usuario y contraseña en la bd

                    if (usuarioValiado == true)
                    {
                        Label2.Text = "Nombre Usuario!";
                        
                    }
                    else
                    {
  
                    }

                    Response.Write(Request.RawUrl.ToString()); // redirect on itself

                }
                else
                {
                    usuarioValiado = false;
                    //lblInfoLogin.Text = "Datos invalidos";
                    //ModalPopupExtender1.Show();

                    Response.Write(Request.RawUrl.ToString()); // redirect on itself
                }
            }
            else
            {
                //lblInfoLogin.Text = "Digite los datos";
                //ModalPopupExtender1.Show();

                Response.Write(Request.RawUrl.ToString()); // redirect on itself
            }
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            html = "";
            int i = 0;
            while (i < 10)
            {
                html += "<div id=\"test" + i + "\">";
                html += "Hola " + i;
                html += "</div>";
                i++;
            }
            Literal1.Text = html;

        }
}
