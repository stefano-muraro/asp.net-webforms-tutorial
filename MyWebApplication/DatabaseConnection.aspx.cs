using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace MyWebApplication
{
    public partial class DataBaseConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["DBConnection"]; // See "connectionStrings" tag in Web.config
            using (SqlConnection dbConnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
            {
                try
                {
                    dbConnection.Open();
                    ltConnectionMessage.Text = "Connection successful";
                    try
                    {
                        SqlCommand command = new SqlCommand("SELECT Name, HexCode FROM tblColorHexCodes", dbConnection);
                        SqlDataReader reader = command.ExecuteReader();
                        if(reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                ltOutput.Text += string.Format("<li style='color:#{0};'>{1}</li>", reader.GetString(1), reader.GetString(0));
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        ltOutput.Text = "<li>" + ex.Message + "</li>";
                    }
                }
                catch (SqlException ex)
                {
                    ltConnectionMessage.Text = "Connection failed: " + ex.Message;
                }
                finally
                {
                    dbConnection.Close();
                    dbConnection.Dispose();
                }
            }
        }
    }
}