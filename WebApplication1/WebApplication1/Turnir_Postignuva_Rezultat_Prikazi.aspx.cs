using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList1_Turnir_ID.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList1_Turnir_ID.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Turniri where id_turnir = '" + str + "'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView2_Prikaz_Turniri.DataSource = ds;
                GridView2_Prikaz_Turniri.DataBind();
                con.Close();
            }
            else
            {



            }



        }

        
        
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

                if (DropDownList1_Turnir_ID.SelectedValue != null)
                {
                    con.Open();
                    //string str = DropDownList1_Clen_ID.SelectedValue;
                    string str2 = DropDownList1_Turnir_ID.SelectedValue;
                    // string str3 = DropDownList2.SelectedValue;

                    //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                    SqlDataAdapter ad = new SqlDataAdapter("SELECT Turniri.id_turnir, Turniri.turnir_ime, Turniri.turnir_lokacija, Turniri.turnir_tip, Turniri.datum, Rezultati.rezultat_id, Rezultati.rezultat_tip, Rezultati.rezultat_kategorija, Rezultati.rezultat_datum FROM Turniri INNER JOIN Turnir_Postignuva_Rezultat ON Turniri.id_turnir = Turnir_Postignuva_Rezultat.id_turnir INNER JOIN Rezultati ON Turnir_Postignuva_Rezultat.rezultat_id = Rezultati.rezultat_id where Turniri.id_turnir= '" + str2 + "'", con);
                    // SqlDataAdapter ad1 = new SqlDataAdapter("Select * from Rezultati where rezultat_id= '" + str + "'", con);
                    // SqlDataAdapter ad2 = new SqlDataAdapter("Select * from Turniri where id_turnir= '" + str3 + "'", con);


                    DataSet ds1 = new DataSet();


                    /**
                        ad1.Fill(ds);
                        GridView1.DataSource = ds;
                        GridView1.DataBind();

                    **/

                    ad.Fill(ds1);
                    GridView1.DataSource = ds1;
                    GridView1.DataBind();
                    con.Close();
                }


            }
            else
            {

                Label1.Text = "За да Извршите Промена во Апликацијата требе да се Најавите" + "<br/>" + " со корисничко име и лозинка";

            }






        }

  
    }
}