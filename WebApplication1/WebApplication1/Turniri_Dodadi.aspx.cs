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

namespace WebApplication1.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load_1(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
            {

                Label_potvrda_1.Text = "";

            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
            {

                string Ime_turnir = TB_TurnirIme.Text;
                string Lokacija_turnir = TB_TurnirLokacija.Text;
                string Tip_turnir = DropDownList_Tip.SelectedValue;
                string Datum_turnir = TextBox_Datum.Text;

                Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;
                //MembershipUser userName = Membership.GetUser(User_Name);


                string turnir_Ime = "turnir_ime";
                string turnir_Lokacija = "turnir_lokacija";
                string turnir_Tip = "turnir_tip";
                string turnir_Datum = "datum";

                //string pUserName = "";

                string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                string sqlInsert = "INSERT INTO Turniri (" + turnir_Ime + ", " + turnir_Lokacija + ", " + turnir_Tip + ", " + turnir_Datum +  ") VALUES ("
                      + "@" + turnir_Ime + ", @" + turnir_Lokacija + ", @" + turnir_Tip + ", @" + turnir_Datum + ")";

                SqlConnection sqlConn = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);

                cmd.Parameters.Add(turnir_Ime, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(turnir_Lokacija, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(turnir_Tip, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(turnir_Datum, System.Data.SqlDbType.Date);

                cmd.Parameters[turnir_Ime].Value = Ime_turnir;
                cmd.Parameters[turnir_Lokacija].Value = Lokacija_turnir;
                cmd.Parameters[turnir_Tip].Value = Tip_turnir;
                cmd.Parameters[turnir_Datum].Value = Datum_turnir;

                cmd.CommandType = CommandType.Text;

                sqlConn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                sqlConn.Close();


                if (affectedRows != 0)
                {
                    Label_potvrda_1.Text = "Турнирот е успешно додаден.";
                    clearFields();
                }
                else
                {
                    Label_potvrda_1.Text = "Грешка при додавање на Турнирот";
                }

            }
            else
            {

                Avtentikacija_1.Text = "За да Внесете Турнир Ве молиме"+ "<b>" +" Најавете се  на Апликацијата"+"</b>";
                Avt_Nadvor.Text = "За да внесете член требе да сте Најавени на апликацијата";
            }
        }


        public void btn_Potvrdi_Validate(object source, ServerValidateEventArgs args)
        {
            if (TB_TurnirIme.Text.Equals(String.Empty)
                || TB_TurnirLokacija.Text.Equals(String.Empty)
                || DropDownList_Tip.SelectedIndex != 0
                || TextBox_Datum.Text.Equals(String.Empty)
                
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
            TB_TurnirIme.Text = String.Empty;
            TB_TurnirLokacija.Text = String.Empty;
            DropDownList_Tip.SelectedIndex = 0;
            TextBox_Datum.Text = String.Empty;
        }

  
       
    }
}