using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Turnir_Postignuva_Rezultati : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label_Duplikat_Key.Text = "";
            Label_potvrda_rezultat_turniri.Text = "";



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

              try
            {
                //code
 
            if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
            {


                string Vnes_turnir_Id = DropDownList1_Turnir.SelectedValue;
                string Vnes_rezultat_Id = DropDownList1_Rezultat.SelectedValue;




                Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;

                // MembershipUser userName = Membership.GetUser(User_Name);


                string ID_turnir_Vnes = "id_turnir";
                string ID_Rezultat_Vnes = "rezultat_id";
               


                string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                string sqlInsert = "INSERT INTO Turnir_Postignuva_Rezultat (" + ID_turnir_Vnes + ", " + ID_Rezultat_Vnes + ") VALUES ("
                       + "@" + ID_turnir_Vnes+ ", @" + ID_Rezultat_Vnes + ")";

                SqlConnection sqlConn = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);


                cmd.Parameters.Add(ID_turnir_Vnes, System.Data.SqlDbType.Int);
                cmd.Parameters.Add(ID_Rezultat_Vnes, System.Data.SqlDbType.Int);



                cmd.Parameters[ID_turnir_Vnes].Value = Vnes_turnir_Id;
                cmd.Parameters[ID_Rezultat_Vnes].Value = Vnes_rezultat_Id;
               

                cmd.CommandType = CommandType.Text;

                sqlConn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                sqlConn.Close();


                if (affectedRows != 0)
                {
                    Label_potvrda_rezultat_turniri.Text = "Резултатот за Турнирот е успешно додаден.";
                    clearFields();
                }
                else
                {
                    Label_potvrda_rezultat_turniri.Text = "Грешка при додавање на Резултатот за Клубот";

                }

            }
            else
            {

                turnir_rezultat_vnatre.Text = "За да внесете Резултат за Турнирот Ве молиме " + "<b>" + " Најавете се на Апликацијата" + "</b>";
                turnir_rezultat_nadvor.Text = "За да внесете Резултат за Турнирот требе да сте најавени на апликацијата";
            }

            }
              catch (SqlException sqlEx)
              {
                  if (sqlEx.Message.StartsWith("Cannot insert duplicate key row in object"))
                  {
                      //code

                      // Label4.Text = "Vnesovte Duplikat kluc vo Tabelata";
                  }
                  else
                  {
                      Label_Duplikat_Key.Text = "Внесовте исти податоци за Член-Учество турнир " + "<br/>" + "<b>" + " Овој запис веќе постои во Базата " + "<b/>" + " Обидете се повторно";

                  }

              }




          


        }

        public void btn_Potvrdi_Validate(object source, ServerValidateEventArgs args)
        {

            if (DropDownList1_Rezultat.SelectedIndex != 0 || DropDownList1_Turnir.SelectedIndex != 0)
            {

                args.IsValid = false;

            }
            else
            {

                args.IsValid = true;


            }


        }


        private void clearFields()
        {
            DropDownList1_Rezultat.SelectedIndex = 0;
            DropDownList1_Turnir.SelectedIndex = 0;

        }

       


        protected void DropDownList1_Turnir_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList1_Turnir.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList1_Turnir.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Turniri where id_turnir = '" + str + "'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            else
            {



            }



        }

        protected void DropDownList1_Rezultat_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList1_Rezultat.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList1_Rezultat.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Rezultati where rezultat_id = '" + str + "'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                con.Close();
            }
            else
            {



            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Turnir_Postignuva_Rezultati.aspx");
        }







    
    
    }
}