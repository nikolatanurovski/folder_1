using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Clen_Ucestvo_Turnir_Izmeni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Label_potvrda_izmeni_Clen_uces_turnir.Text = "Mожете да направите промена во апликацијата";
                GridView3.Columns[0].Visible = true;

            }
            else
            {

                izmeni_clen_ucest_turnir_vnatre.Text = "За да ги извршите промените морате да сте" +"<br/>" + "Најавени на апликацијата";
                izmeni_clen_uces_turnir_vnatre0.Text = "За да ги извршите промените морате да сте" + "<b>" + " Најавени на апликацијата " + "<b/>";
                GridView3.Columns[0].Visible = false;
            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clen_Ucestvo_Turnir_Izmeni.aspx");
        }
    }
}