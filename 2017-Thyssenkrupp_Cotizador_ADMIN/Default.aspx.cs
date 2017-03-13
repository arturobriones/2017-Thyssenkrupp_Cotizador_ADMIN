using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace _2017_Thyssenkrupp_Cotizador_ADMIN
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UIButtonLogin_Click(object sender, EventArgs e)
        {
            string connectionString = null;
            SqlConnection cnn;
            SqlCommand command;
            string sql = null;
            SqlDataReader dataReader;
            bool contrasenaCorrecta;
            string[] usuario;

            // Conexión a la DB utilizando la conexión de Web Config

            connectionString = ConfigurationManager.ConnectionStrings["ThyskpDBCon"].ConnectionString;
            sql = "SELECT usuario_usuario, usuario_contrasena, usuario_id, usuario_categoria_id FROM Usuario WHERE usuario_usuario = '" + UITxtBxUser.Text + "' and usuario_contrasena= '" + UITxtBxPassword.Text + "'";
            usuario = new string[4];
            cnn = new SqlConnection(connectionString);


            try
            {
                cnn.Open();
                Console.Write("Connection Open");
                command = new SqlCommand(sql, cnn);
                dataReader = command.ExecuteReader();

                if (dataReader.HasRows)
                {
                    while (dataReader.Read())
                    {
                        usuario[0] = ((string)dataReader.GetValue(0)).Trim();
                        usuario[1] = ((string)dataReader.GetValue(1)).Trim();
                        usuario[2] = Convert.ToString(dataReader.GetValue(2));
                        Session["UsuarioID"] = usuario[2];
                        usuario[3] = Convert.ToString(dataReader.GetValue(3));
                        Session["UsuarioCategoriaID"] = usuario[3];
                        //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + dataReader.GetValue(0) + "+" + dataReader.GetValue(1) + "');", true);
                    }
                    // NOTA: CAMBIAR EL NUMERO A COPARAR EN usuario[2] == "2" POR EL NUMERO DEL CASINO NUEVO (1= ABUDABI EN LA DB) <<<---------------------
                    if (((usuario[0].Trim() == UITxtBxUser.Text.Trim()) && (usuario[1].Trim()) == UITxtBxPassword.Text.Trim()) && (usuario[3] == Convert.ToString(1)))
                    {
                        //Crea la variable de sesion y le da autorización de entrar al sistema   
                        //ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('Todo esta bien');", true);
                        Session["AccesoVerificado"] = "aprobado";

                        //Response.Redirect("Dashboard/Resumen.aspx");
                        cnn.Close();
                        dataReader.Close();
                        command.Dispose(); Server.Transfer("~/Admin/AdminHome.aspx");
                        return;
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('La contraseña no coincide con el usuario.');", true);

                        //Session["AccesoVerificado"] = "negado";
                        dataReader.Close();
                        command.Dispose();
                        cnn.Close();
                        return;
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Error", "alert('No existe el usuario.');", true);
                    

                    //Session["AccesoVerificado"] = "negado";
                    return;
                }

                dataReader.Close();
                command.Dispose();
                cnn.Close();
            }
            catch (Exception exc)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + exc.Message + "');", true);

                //Session["AccesoVerificado"] = "negado";
                cnn.Close();
            }

        }
    }
}