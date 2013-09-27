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
    public partial class Rezultati : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
            {


                string Tip_rezultat = DropDownList_Rezultat_tip.SelectedValue;
                string Tip_kategorija = DropDownListRezultat_Kategorija.SelectedValue;
                string Datum_rezultat = TextBox_Datum.Text;
             
                string User_Name = "";

                Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;

                MembershipUser userName = Membership.GetUser(User_Name);


                string rezultat_tip = "rezultat_tip";
                string rezult_kategorija = "rezultat_kategorija";
                string rezultat_datum = "rezultat_datum";
               

                string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                string sqlInsert = "INSERT INTO Rezultati (" + rezultat_tip + ", " + rezult_kategorija + ", " + rezultat_datum + ") VALUES ("
                       + "@" + rezultat_tip + ", @" + rezult_kategorija + ", @" + rezultat_datum + ")";

                SqlConnection sqlConn = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);

                cmd.Parameters.Add(rezultat_tip, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(rezult_kategorija, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(rezultat_datum, System.Data.SqlDbType.VarChar);
              


                cmd.Parameters[rezultat_tip].Value = Tip_rezultat;
                cmd.Parameters[rezult_kategorija].Value = Tip_kategorija;
                cmd.Parameters[rezultat_datum].Value = Datum_rezultat;
                

                cmd.CommandType = CommandType.Text;

                sqlConn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                sqlConn.Close();


                if (affectedRows != 0)
                {
                    Label_potvrda.Text = "Резултатот е успешно додаден.";
                    clearFields();


                }
                else
                {
                    Label_potvrda.Text = "Грешка при додавање на Резултатот";

                }

            }
            else
            {

                Avtentikacija.Text = "За да внесете Резултат Ве молиме " + "<b>" + " Најавете се на Апликацијата" + "</b>";
                Avt_Nadvor.Text = "За да внесете Резултат требе да сте најавени на апликацијата";
            }


        }

        public void btn_Potvrdi_Validate(object source, ServerValidateEventArgs args)
        {

            if ( DropDownList_Rezultat_tip.SelectedIndex !=0
                || DropDownListRezultat_Kategorija.SelectedIndex !=0
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
            DropDownList_Rezultat_tip.SelectedIndex = 0;
            DropDownListRezultat_Kategorija.SelectedIndex = 0;
            TextBox_Datum.Text = String.Empty;

        }




    }
}