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
    public partial class Clen_Postignuva_Rezultati : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label_Duplikat_key.Text = "";
            Label_potvrda.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             try
            {
                //code


             if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
            {


                string Vnes_embg_rez = DropDownList_Rezultat_Clen_embg.SelectedValue;
                string Vnes_rezultat_clen = DropDownList_Clen_rez.SelectedValue;




                Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;

                // MembershipUser userName = Membership.GetUser(User_Name);


                string embg_Vnes_rez = "embg";
                string clen_Vnes_rez = "rezultat_id";
               

                string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                string sqlInsert = "INSERT INTO Clen_Postignuva_Rezultat (" + embg_Vnes_rez + ", " + clen_Vnes_rez + ") VALUES ("
                       + "@" + embg_Vnes_rez + ", @" + clen_Vnes_rez + ")";

                SqlConnection sqlConn = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);

                cmd.Parameters.Add(embg_Vnes_rez, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(clen_Vnes_rez, System.Data.SqlDbType.Int);




                cmd.Parameters[embg_Vnes_rez].Value = Vnes_embg_rez;
                cmd.Parameters[clen_Vnes_rez].Value = Vnes_rezultat_clen;


                cmd.CommandType = CommandType.Text;

                sqlConn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                sqlConn.Close();


                if (affectedRows != 0)
                {
                    Label_potvrda.Text = "Резултатот за Членот е успешно додаден.";
                    clearFields();
                }
                else
                {
                    Label_potvrda.Text = "Грешка при додавање на Резултатот за Членот";

                }

            }
            else
            {

                clen_rezultat_vnatre.Text = "За да внесете Член Ве молиме " + "<b>" + " Најавете се на Апликацијата" + "</b>";
                clen_rezultat_nadvor.Text = "За да внесете член требе да сте најавени на апликацијата";
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
                     Label_Duplikat_key.Text = "Внесовте исти податоци за Член-Учество турнир " + "<br/>" + "<b>" + " Овој запис веќе постои во Базата " + "<b/>" + " Обидете се повторно";

                 }

             }





        }

        public void btn_Potvrdi_Validate(object source, ServerValidateEventArgs args)
        {

            if (DropDownList_Rezultat_Clen_embg.SelectedIndex != 0 || DropDownList_Clen_rez.SelectedIndex != 0)
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
            DropDownList_Rezultat_Clen_embg.SelectedIndex = 0;
            DropDownList_Clen_rez.SelectedIndex = 0;

        }

        protected void DropDownList_Rezultat_Clen_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_Rezultat_Clen_embg.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_Rezultat_Clen_embg.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Clenovi where embg= '" + str + "'", con);
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

        protected void DropDownList_Clen_rez_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_Clen_rez.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_Clen_rez.SelectedValue;
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





        }
    }
