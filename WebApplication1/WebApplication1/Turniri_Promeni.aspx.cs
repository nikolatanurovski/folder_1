using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Turniri_Promeni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

             if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Label_potvrda.Text = "Mожете да направите промена во апликацијата";
                GridView1.Columns[0].Visible = true;

            }else{

                Avtentikacija.Text = "За да ги извршите промените морате да сте "+ "<b>"+ " Најавени на апликацијата"+"<b>";
                Avtentikacija_Nadvor.Text = "За да правите промени требе да сте " + "<b> " + " Најавени во Апликацијата" + "<b/>";
                 GridView1.Columns[0].Visible = false;
            }

        }



        }
    }
