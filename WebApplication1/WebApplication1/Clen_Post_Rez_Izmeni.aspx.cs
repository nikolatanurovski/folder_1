using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Clen_Post_Rez_Izmeni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Label_potvrda_izmeni_rezultat_Clen.Text = "Mожете да направите промена во апликацијата";
                GridView1.Columns[0].Visible = true;

            }
            else
            {

                izmeni_rezultat_clen_vnatre.Text = "За да ги извршите промените морате да сте Најавени на апликацијата";
                izmeni_rezultat_clen_vnatre0.Text = "За да ги извршите промените морате да сте" + "<b>" + " Најавени на апликацијата "+"<b/>";
                GridView1.Columns[0].Visible = false;
            }






        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clen_Post_Rez_Izmeni.aspx");
        }
    }
}