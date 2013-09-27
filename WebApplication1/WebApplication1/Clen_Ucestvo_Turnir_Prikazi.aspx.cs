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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_ID_Turnir_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList1_ID_Turnir.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList1_ID_Turnir.SelectedValue;
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

                if (DropDownList1_ID_Turnir.SelectedValue != null)
                {
                    con.Open();
                    //string str = DropDownList1_Clen_ID.SelectedValue;
                    string str2 = DropDownList1_ID_Turnir.SelectedValue;
                    // string str3 = DropDownList2.SelectedValue;

                    //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                    SqlDataAdapter ad = new SqlDataAdapter("SELECT Clenovi.embg, Clenovi.ime_clen, Clenovi.prezime_clen, Clenovi.pol, Clenovi.vozrast, Turniri.id_turnir, Turniri.turnir_ime, Turniri.turnir_lokacija, Turniri.turnir_tip, Turniri.datum FROM Clenovi INNER JOIN ClenUcestvoTurnir ON Clenovi.embg = ClenUcestvoTurnir.embg INNER JOIN Turniri ON ClenUcestvoTurnir.id_turnir = Turniri.id_turnir where Turniri.id_turnir = '" + str2 + "'", con);
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