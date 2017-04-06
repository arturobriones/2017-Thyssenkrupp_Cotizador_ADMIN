using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace _2017_Thyssenkrupp_Cotizador_ADMIN.Admin
{
    public partial class Admin_IHS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload(object sender, EventArgs e)
        {
            //Upload and save the file
            string csvPath = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(csvPath);

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[29]
            {
                new DataColumn("ihs_id", typeof(int)),
                new DataColumn("ihs_oem", typeof(string)),
                new DataColumn("ihs_vehicle", typeof(string)),
                new DataColumn("ihs_sop", typeof(string)),
                new DataColumn("ihs_eop", typeof(string)),
                new DataColumn("ihs_maxVolumeNext4Years", typeof(string)),
                new DataColumn("ihs_averageVolumeNext4Years", typeof(string)),
                new DataColumn("ihs_2016", typeof(string)),
                new DataColumn("ihs_2017", typeof(string)),
                new DataColumn("ihs_2018", typeof(string)),
                new DataColumn("ihs_2019", typeof(string)),
                new DataColumn("ihs_2020", typeof(string)),
                new DataColumn("ihs_2021", typeof(string)),
                new DataColumn("ihs_2022", typeof(string)),
                new DataColumn("ihs_2023", typeof(string)),
                new DataColumn("ihs_2024", typeof(string)),
                new DataColumn("ihs_2025", typeof(string)),
                new DataColumn("ihs_2026", typeof(string)),
                new DataColumn("ihs_2027", typeof(string)),
                new DataColumn("ihs_2028", typeof(string)),
                new DataColumn("ihs_2029", typeof(string)),
                new DataColumn("ihs_2030", typeof(string)),
                new DataColumn("ihs_2031", typeof(string)),
                new DataColumn("ihs_2032", typeof(string)),
                new DataColumn("ihs_2033", typeof(string)),
                new DataColumn("ihs_2034", typeof(string)),
                new DataColumn("ihs_2035", typeof(string)),
                new DataColumn("ihs_2036", typeof(string)),
                new DataColumn("ihs_descripcion", typeof(string))
            });

            try
            {
                string csvData = File.ReadAllText(csvPath);
                foreach (string row in csvData.Split('\n'))
                {
                    if (!string.IsNullOrEmpty(row))
                    {
                        dt.Rows.Add();
                        int i = 0;
                        foreach (string cell in row.Split(','))
                        {
                            dt.Rows[dt.Rows.Count - 1][i] = cell;
                            i++;
                        }
                    }

                }


                string consString = ConfigurationManager.ConnectionStrings["ThykDBCotizadorConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(consString))
                {
                    using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                    {
                        //Set the database table name
                        sqlBulkCopy.DestinationTableName = "dbo.IHS";
                        con.Open();

                        sqlBulkCopy.WriteToServer(dt);
                        con.Close();
                    }
                }

                Response.Write(
                    "<script>alert('El archivo se agrego CORRECTAMENTE.');</script>");
            }
            catch (Exception exception)
            {
                Response.Write(
                    "<script>alert('ERROR en el documento, validar que la información sea correcta.');</script>");
            }
        }

        protected void DeleteTable(object sender, EventArgs e)
        {
            try
            {
                string consString = ConfigurationManager.ConnectionStrings["ThykDBCotizadorConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(consString);
                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.DeleteCommand = new SqlCommand("Delete from IHS");
                adapter.DeleteCommand.Connection = con;

                con.Open();
                SqlCommand cmd = new SqlCommand("Delete * from IHS");
                adapter.DeleteCommand.ExecuteNonQuery();
                // cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();

                Response.Write("<script>alert('La información se ha eliminado CORRECTAMENTE.');</script>");

            }
            catch (Exception exception)
            {
                Response.Write("<script>alert('Error al tratar de borrar la información.');</script>");
            }




        }
    }
}