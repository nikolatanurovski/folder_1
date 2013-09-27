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
    public partial class Klubovi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label_potvrda.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
              try
            {
                //code


            if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
            {

                string Ime_Кlub = TBKlub_Ime.Text;
                string Lokacija_Klub = TBKlub_Lokacija.Text;
                string Tip_Klub = DropDownList_Klub_Tip.SelectedValue;
                string Trener_klub = TBTrener_klub.Text;
                string Adresa_Klub = TBKlub_Adresa.Text;
                string ID_turnir = DropDownList_VnesTurnir_ID.SelectedValue;

                Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;
                //MembershipUser userName = Membership.GetUser(User_Name);


                string klub_Ime = "ime_klub";
                string klub_Lokacija = "klub_lokacija";
                string klub_Tip = "klub_tip";
                string klub_Trener = "klub_trener";
                string klub_Adresa = "klub_adresa";
                string klub_ucestvo_turnir = "id_turnir";


                //string pUserName = "";

                string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                string sqlInsert = "INSERT INTO Klubovi (" + klub_Ime + ", " + klub_Lokacija + ", " + klub_Tip + ", " + klub_Trener + ", " + klub_Adresa + ", " + klub_ucestvo_turnir + ") VALUES ("
                      + "@" + klub_Ime + ", @" + klub_Lokacija + ", @" + klub_Tip + ", @" + klub_Trener + ", @" + klub_Adresa + ", @" + klub_ucestvo_turnir + ")";

                SqlConnection sqlConn = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);

                cmd.Parameters.Add(klub_Ime, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(klub_Lokacija, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(klub_Tip, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(klub_Trener, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(klub_Adresa, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(klub_ucestvo_turnir, System.Data.SqlDbType.Int);


                cmd.Parameters[klub_Ime].Value = Ime_Кlub;
                cmd.Parameters[klub_Lokacija].Value = Lokacija_Klub;
                cmd.Parameters[klub_Tip].Value = Tip_Klub;
                cmd.Parameters[klub_Trener].Value = Trener_klub;
                cmd.Parameters[klub_Adresa].Value = Adresa_Klub;
                cmd.Parameters[klub_ucestvo_turnir].Value = ID_turnir;


                cmd.CommandType = CommandType.Text;

                sqlConn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                sqlConn.Close();


                if (affectedRows != 0)
                {
                    Label_potvrda.Text = "Клубот е успешно додаден.";
                    Label_potvrda_1.Text = "Извршивте успешно Додавање";
                    clearFields();
                }
                else
                {
                    Label_potvrda.Text = "Грешка при додавање на Клубот";
                    
                }

            }
            else
            {

                Avtentikacija.Text = "За да Внесете Клуб Ве молиме" + "<br/>"+"<b>" + " Најавете се  на Апликацијата" + "</b>";
                Avt_Nadvor.Text = "За да внесете Клуб требе да сте Најавени на апликацијата";
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
                      Label4.Text = "Внесовте исти податоци за Клуб " + "<br/>" + "<b>" + " Овој запис веќе постои во Базата " + "<b/>" + " Обидете се повторно";

                  }

              }

           

        }


         public void btn_Potvrdi_Validate(object source, ServerValidateEventArgs args)
        {
            if (TBKlub_Ime.Text.Equals(String.Empty)
                || TBKlub_Lokacija.Equals(String.Empty)
                || DropDownList_Klub_Tip.SelectedIndex != 0
                || TBTrener_klub.Text.Equals(String.Empty)
                || TBKlub_Adresa.Text.Equals(String.Empty)
                || DropDownList_VnesTurnir_ID.SelectedIndex != 0
                )
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
            TBKlub_Ime.Text = String.Empty;
            TBKlub_Lokacija.Text = String.Empty;
            DropDownList_Klub_Tip.SelectedIndex = 0;
            TBTrener_klub.Text = String.Empty;
            TBKlub_Adresa.Text = String.Empty;
            DropDownList_VnesTurnir_ID.SelectedIndex = 0;    
        }

        

         protected void DropDownList_Klub_ID_SelectedIndexChanged(object sender, EventArgs e)
         {

             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

             if (DropDownList_VnesTurnir_ID.SelectedValue != null)
             {
                 con.Open();
                 string str = DropDownList_VnesTurnir_ID.SelectedValue;
                 //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                 SqlDataAdapter ad = new SqlDataAdapter("Select * from Turniri where id_turnir = '" + str + "'", con);
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


    }
}