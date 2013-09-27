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
    public partial class Klub_Postignuva_Rezultati : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label_Duplikat_Key.Text = "";
            Label_potvrda_rezultat_klubovi.Text = "";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
               try
            {
                //code

            
            
            if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
            {


                string Vnes_rezultat_Id = DropDownList_ID_Rezultat.SelectedValue;
                string Vnes_ID_klub = DropDownList_Id_klub.SelectedValue;




                Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;

                // MembershipUser userName = Membership.GetUser(User_Name);


                string ID_rezultat_Vnes = "rezultat_id";
                string ID_klub_vnes = "id_klub";



                string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                string sqlInsert = "INSERT INTO Klub_Postignuva_Rezultat (" + ID_rezultat_Vnes + ", " + ID_klub_vnes + ") VALUES ("
                       + "@" + ID_rezultat_Vnes + ", @" + ID_klub_vnes + ")";

                SqlConnection sqlConn = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);

                cmd.Parameters.Add(ID_rezultat_Vnes, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(ID_klub_vnes, System.Data.SqlDbType.Int);




                cmd.Parameters[ID_rezultat_Vnes].Value = Vnes_rezultat_Id;
                cmd.Parameters[ID_klub_vnes].Value = Vnes_ID_klub;


                cmd.CommandType = CommandType.Text;

                sqlConn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                sqlConn.Close();


                if (affectedRows != 0)
                {
                    Label_potvrda_rezultat_klubovi.Text = "Резултатот за Клубот е успешно додаден.";
                    clearFields();
                }
                else
                {
                    Label_potvrda_rezultat_klubovi.Text = "Грешка при додавање на Резултатот за Клубот";

                }

            }
            else
            {

                klub_rezultat_vnatre.Text = "За да внесете Резултат за Клубот Ве молиме " + "<b>" + " Најавете се на Апликацијата" + "</b>";
                klub_rezultat_nadvor.Text = "За да внесете Резултат за Клубот требе да сте најавени на апликацијата";
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

            if (DropDownList_ID_Rezultat.SelectedIndex != 0 || DropDownList_Id_klub.SelectedIndex != 0)
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
            DropDownList_ID_Rezultat.SelectedIndex = 0;
            DropDownList_Id_klub.SelectedIndex = 0;

        }



        protected void DropDownList_ID_Rezultat_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_ID_Rezultat.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_ID_Rezultat.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Rezultati where rezultat_id= '" + str + "'", con);
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

        protected void DropDownList_Id_klub_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_Id_klub.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_Id_klub.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Klubovi where id_klub = '" + str + "'", con);
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
           
        }







    }
}