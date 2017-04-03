using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2017_Thyssenkrupp_Cotizador_ADMIN.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            else
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

        }
}