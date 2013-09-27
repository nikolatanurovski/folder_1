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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label_duplikat_Key.Text = "";
            Label_potvrda.Text = "";

        }

            protected void Button1_Click1(object sender, EventArgs e)
        {


            try
            {
                //code

                if (Page.IsValid && HttpContext.Current.User.Identity.IsAuthenticated)
                {


                    string Vnes_embg = DropDownList_Clen.SelectedValue;
                    string Vnes_turnir_id = DropDownList_Turnir.SelectedValue;



                    Guid userId = (Guid)Membership.GetUser(Page.User.Identity.Name).ProviderUserKey;

                    // MembershipUser userName = Membership.GetUser(User_Name);


                    string embg_Vnes = "embg";
                    string id_turnir_Vnes = "id_turnir";


                    string connString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ToString();

                    string sqlInsert = "INSERT INTO ClenUcestvoTurnir (" + embg_Vnes + ", " + id_turnir_Vnes + ") VALUES ("
                           + "@" + embg_Vnes + ", @" + id_turnir_Vnes + ")";

                    SqlConnection sqlConn = new SqlConnection(connString);
                    SqlCommand cmd = new SqlCommand(sqlInsert, sqlConn);

                    cmd.Parameters.Add(embg_Vnes, System.Data.SqlDbType.VarChar);
                    cmd.Parameters.Add(id_turnir_Vnes, System.Data.SqlDbType.Int);




                    cmd.Parameters[embg_Vnes].Value = Vnes_embg;
                    cmd.Parameters[id_turnir_Vnes].Value = Vnes_turnir_id;


                    cmd.CommandType = CommandType.Text;

                    sqlConn.Open();
                    int affectedRows = cmd.ExecuteNonQuery();
                    sqlConn.Close();


                    if (affectedRows != 0)
                    {
                        Label_potvrda.Text = "Членот е успешно додаден на Турнирот.";
                        clearFields();
                    }
                    else
                    {
                        Label_potvrda.Text = "Грешка при додавање на Членот";

                    }

                }
                else
                {

                    Avtentikacija.Text = "За да внесете Член Ве молиме " + "<b>" + " Најавете се на Апликацијата" + "</b>";
                    Avt_Nadvor.Text = "За да внесете член требе да сте најавени на апликацијата";
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
                    Label_duplikat_Key.Text = "Внесовте исти податоци за Член-Учество турнир "+"<br/>" +"<b>"+ " Овој запис веќе постои во Базата "+"<b/>"+" Обидете се повторно";
                
                }

            }


        }

        public void btn_Potvrdi_Validate(object source, ServerValidateEventArgs args)
        {

            if (DropDownList_Clen.SelectedIndex != 0 || DropDownList_Turnir.SelectedIndex != 0)
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
            DropDownList_Clen.SelectedIndex = 0;
            DropDownList_Turnir.SelectedIndex = 0;
            
        }

     

        protected void DropDownList_Clen_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_Clen.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_Clen.SelectedValue;
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

        protected void DropDownList_Turnir_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString);

            if (DropDownList_Turnir.SelectedValue != null)
            {
                con.Open();
                string str = DropDownList_Turnir.SelectedValue;
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
