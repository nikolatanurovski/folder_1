using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1.Account
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
            Guid newUserId = (Guid)newUser.ProviderUserKey;
            String Ime = ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("Ime")).Text;
           // String LastName = ((TextBox)RegisterUser.CreateUserStep.ContentTemplateContainer.FindControl("LastName")).Text;
            string connectionString = ConfigurationManager.ConnectionStrings["login_probaConnectionString"].ConnectionString;
            string insertSql = "INSERT INTO aspnet_Profile(UserId,Ime,LastUpdatedDate) VALUES(@UserId,@Ime,GETDATE())";
            
            string insertSql_1 = "INSERT INTO Ime(Ime) VALUES(@Ime)";


            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {

                myConnection.Open();

                SqlCommand myCommand = new SqlCommand(insertSql, myConnection);
                SqlCommand myCommand_1 = new SqlCommand(insertSql_1, myConnection);

                myCommand.Parameters.AddWithValue("@Ime",Ime);
                myCommand.Parameters.AddWithValue("@UserId", newUserId);

                myCommand_1.Parameters.AddWithValue("@Ime", Ime);
                myCommand.ExecuteNonQuery();
                myCommand_1.ExecuteNonQuery();
                myConnection.Close();

            }

           

            
            
            
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);
            
            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (String.IsNullOrEmpty(continueUrl))
            {
                continueUrl = "~/";
            }
            Response.Redirect(continueUrl);
        }

        protected void StepNextButton_Click(object sender, EventArgs e)
        {

        }

        protected void StepBackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        


        
    }
}
