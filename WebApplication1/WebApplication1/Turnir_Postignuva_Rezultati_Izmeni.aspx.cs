using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Turnir_Postignuva_Rezultati_Izmeni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Label_potvrda_izmeni_turnir_postignuva_rezult.Text = "Mожете да направите промена во апликацијата";
                GridView1.Columns[0].Visible = true;

            }
            else
            {

                Label_potvrda_izmeni_turnir_postignuva_rezult_Vnatre.Text = "За да ги извршите промените морате да сте" + "<br/>" + "Најавени на апликацијата";
                Label_potvrda_izmeni_turnir_postignuva_rezult_Nadvor.Text = "За да ги извршите промените морате да сте" + "<b>" + " Најавени на апликацијата " + "<b/>";
                GridView1.Columns[0].Visible = false;
            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Turnir_Postignuva_Rezultati_Izmeni.aspx");
        }
    }
}