using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Klub_Postignuva_rezultati_Izmeni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Label_potvrda_izmeni_rezultat_Klub.Text = "Mожете да направите промена во апликацијата";
                GridView1.Columns[0].Visible = true;

            }
            else
            {

                izmeni_rezultat_Klub_vnatre.Text = "За да ги извршите промените морате да сте " + "<br/>" + "<b>" + " Најавени на апликацијата" + "<b/>";
                izmeni_rezultat_Klub_nadvor.Text = "За да ги извршите промените морате да сте" + "<b>" + " Најавени на апликацијата " + "<b/>";
                GridView1.Columns[0].Visible = false;
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Klub_Postignuva_rezultati_Izmeni.aspx");
        }
    }
}