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
    public partial class Clenovi_Spored_rezultat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void DropDownList1_Turnir_ID_SelectedIndexChanged(object sender, EventArgs e)
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
                GridView1_Turnir_Prikaz.DataSource = ds;
                GridView1_Turnir_Prikaz.DataBind();
                con.Close();
            }
            else
            {



            }


        }

        protected void DropDownList_Rezultat_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_Rezultat.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_Rezultat.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Rezultati where rezultat_id = '" + str + "'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView_Rezultati.DataSource = ds;
                GridView_Rezultati.DataBind();
                con.Close();
            }
            else
            {



            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

                if ( DropDownList1_Turnir_ID.SelectedValue != null && DropDownList_Rezultat.SelectedValue != null)
                {
                    con.Open();
                    
                    string str2 = DropDownList1_Turnir_ID.SelectedValue;
                    string str3 = DropDownList_Rezultat.SelectedValue;
                    // string str3 = DropDownList2.SelectedValue;

                    //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                    SqlDataAdapter ad = new SqlDataAdapter("SELECT Clenovi.embg, Clenovi.ime_clen, Clenovi.prezime_clen, Clenovi.pol, Clenovi.vozrast, Rezultati.rezultat_id, Rezultati.rezultat_tip, Rezultati.rezultat_kategorija, Turniri.id_turnir, Turniri.turnir_ime, Turniri.turnir_lokacija, Turniri.turnir_tip FROM Clenovi INNER JOIN Clen_Postignuva_Rezultat ON Clenovi.embg = Clen_Postignuva_Rezultat.embg INNER JOIN Rezultati ON Clen_Postignuva_Rezultat.rezultat_id = Rezultati.rezultat_id INNER JOIN Turnir_Postignuva_Rezultat ON Rezultati.rezultat_id = Turnir_Postignuva_Rezultat.rezultat_id INNER JOIN Turniri ON Turnir_Postignuva_Rezultat.id_turnir = Turniri.id_turnir where Turniri.id_turnir= '" + str2 + "'" + " and Rezultati.rezultat_id= '" + str3 + "'", con);
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
                else if ( DropDownList1_Turnir_ID.SelectedValue != null && DropDownList_Rezultat.SelectedValue != null && GridView1.Rows.Count == 0)
                {

                    Label2.Text = "Nevalidna strana---Dali vleguva vo ovoj else";

                }


            }
            else
            {

                Label1.Text = "Pregled na stranite bez administratorski pristap";

            }



        }





    }
}