using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2017_Thyssenkrupp_Cotizador_ADMIN.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        public void Page_Init(object o, EventArgs e)
        {
            string statusVar = "";

            if (Session["AccesoVerificado"] == null)
            {

                Response.Redirect("~/Default.aspx"); return;

            }
            else
            {
                statusVar = (string)Session["AccesoVerificado"];
                if (statusVar == "")
                {
                    Response.Redirect("~/Default.aspx");
                    return;
                }
                return;
            }
        }

        protected void Page_Load(object sender, EventArgs e){
            
            if (!IsPostBack)
            {
                string statusVar = "";

                if (Session["AccesoVerificado"] == null)
                {

                    Response.Redirect("~/Default.aspx"); return;

                }
                else
                {
                    statusVar = (string)Session["AccesoVerificado"];
                    if (statusVar == "")
                    {
                        Response.Redirect("~/Default.aspx");
                        return;
                    }
                    return;
                }


                if (statusVar == "negado")
                {
                    Response.Redirect("~/Default.aspx");
                    return;
                }
            }

        }

       
        protected void RadButtonEndSession_Click(object sender, EventArgs e)
        {
            Session["AccesoVerificado"] = "";
            Session.Remove("AccesoVerificado");
            Response.Redirect("~/Default.aspx");
        }

      


    }
}