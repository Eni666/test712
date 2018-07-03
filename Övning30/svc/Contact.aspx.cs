using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySQLLibrary;
using Newtonsoft.Json;

namespace Övning30
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQL.ConnectionString = @"Data Source=.;Initial Catalog=Contacts;Integrated Security=True";
            Response.Write(JsonConvert.SerializeObject(SQL.GetAllContacts()));
        }

    }
}