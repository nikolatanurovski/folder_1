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
    public partial class Clenovi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_Duplikat_Primary_Key.Text = "";
            Label_potvrda.Text = "";

        }



        protected void ButtonPotvrdi(object sender, EventArgs e)
        {


             try
            {
                //code

            if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated && Page.IsPostBack)
            {


                string C_embg = embgclen.Text;
                string Ime_Clen = TextBox_Ime_Clen.Text;
                string Prezime_Clen = TextBox_Prezime_Clen.Text;
                string pol_Clen = DropDownList_Pol.SelectedValue;
                string vozrast_Clen = TextBox_Vozrast_Clen.Text;
                string clen_ucestvo_klub = DropDownList_VnesiKlubID.SelectedValue;
                string User_Name = "";

                Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;

                MembershipUser userName = Membership.GetUser(User_Name);


                string Clen_embg = "embg";
                string Clen_ime = "ime_clen";
                string Clen_prezime = "prezime_clen";
                string Clen_pol = "pol";
                string Clen_vozrast = "vozrast";
                string Clen_ucestvo_klub = "id_klub";

                string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                string sqlInsert = "INSERT INTO Clenovi (" + Clen_embg + ", " + Clen_ime + ", " + Clen_prezime + ", " + Clen_pol + ", " + Clen_vozrast + ", " + Clen_ucestvo_klub + ") VALUES ("
                       + "@" + Clen_embg + ", @" + Clen_ime + ", @" + Clen_prezime + ", @" + Clen_pol + ", @" + Clen_vozrast + ", @" + Clen_ucestvo_klub + ")";

                SqlConnection sqlConn = new SqlConnection(connString);
                SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);

                cmd.Parameters.Add(Clen_embg, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(Clen_ime, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(Clen_prezime, System.Data.SqlDbType.VarChar);
                cmd.Parameters.Add(Clen_pol, System.Data.SqlDbType.Char);
                cmd.Parameters.Add(Clen_vozrast, System.Data.SqlDbType.Int);
                cmd.Parameters.Add(Clen_ucestvo_klub, System.Data.SqlDbType.Int);


                cmd.Parameters[Clen_embg].Value = C_embg;
                cmd.Parameters[Clen_ime].Value = Ime_Clen;
                cmd.Parameters[Clen_prezime].Value = Prezime_Clen;
                cmd.Parameters[Clen_pol].Value = pol_Clen;
                cmd.Parameters[Clen_vozrast].Value = vozrast_Clen;
                cmd.Parameters[Clen_ucestvo_klub].Value = clen_ucestvo_klub;

                cmd.CommandType = CommandType.Text;

                sqlConn.Open();
                int affectedRows = cmd.ExecuteNonQuery();
                sqlConn.Close();


                if (affectedRows != 0)
                {
                    Label_potvrda.Text = "Членот е успешно додаден.";
                    clearFields();

                   
                }
                else
                {
                    Label_potvrda.Text = "Грешка при додавање на Членот";
                   
                }

            }
            else
            {

                Avtentikacija.Text = "За да внесете Член Ве молиме " + "<b>" +" Најавете се на Апликацијата"+"</b>";
                Avt_Nadvor.Text = "За да внесете Член требе да сте Најавени на апликацијата";
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
                     Label_Duplikat_Primary_Key.Text = "Внесовте исти податоци за Член " + "<br/>" + "<b>" + " Овој запис веќе постои во Базата " + "<b/>" + " Обидете се повторно";

                 }

             }

        }




              public void btn_Potvrdi_Validate(object source, ServerValidateEventArgs args)
       
              {
            
             if (   embgclen.Text.Equals(String.Empty)   
                || TextBox_Ime_Clen.Text.Equals(String.Empty)
                || TextBox_Prezime_Clen.Text.Equals(String.Empty)
                || TextBox_Vozrast_Clen.Text.Equals(String.Empty)
                || DropDownList_VnesiKlubID.SelectedIndex !=0
                || DropDownList_Pol.SelectedIndex !=0
                
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
            TextBox_Ime_Clen.Text = String.Empty;
            TextBox_Prezime_Clen.Text = String.Empty;
            embgclen.Text = String.Empty;
            TextBox_Vozrast_Clen.Text = String.Empty;
            DropDownList_Pol.SelectedIndex = 0;
            DropDownList_VnesiKlubID.SelectedIndex = 0;
           
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Vnesi_Clenovi.aspx");

        }

       

        protected void DropDownList_VnesiKlubID_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_VnesiKlubID.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_VnesiKlubID.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Klubovi where id_klub = '" + str + "'", con);
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_VnesiKlubID.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_VnesiKlubID.SelectedValue;
                //string sql = "Select * from ManstaSalary where Department= '" + str+"'" ;
                SqlDataAdapter ad = new SqlDataAdapter("Select * from Klubovi where id_klub = '" + str + "'", con);
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

       
    
        }
    }
