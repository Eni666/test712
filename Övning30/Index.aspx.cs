using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySQLLibrary;

namespace Övning30
{
    partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string contentTable = "";
                SQL.ConnectionString = @"Data Source=.;Initial Catalog=Contacts;Integrated Security=True";
                foreach (var p in SQL.GetAllContacts())
                {
                    contentTable += $"<tr><td><a href ='/contact.aspx?contact={p.ID}'/> {p.FirstName}</td><td> {p.LastName}</td><td>{p.SSN}</td></tr>";   
                  
                }
                LiteralContacts.Text = contentTable;
            }
        }
     
        
    }

}