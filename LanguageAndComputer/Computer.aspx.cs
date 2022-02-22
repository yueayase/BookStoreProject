using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LanguageAndComputer_Computer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        HttpCookie cookie;
        int index = Convert.ToInt32(e.CommandArgument);

        if (e.CommandName == "AddToCart")
        {
            cookie = new HttpCookie("Product");
            cookie["Order"] = GridView1.Rows[index].Cells[0].Text;
            Response.Cookies.Add(cookie);
            Response.Redirect("~/Buy/ShoppingCart.aspx");
        }
        else if (e.CommandName == "Select")
        {
            cookie = new HttpCookie("Product2");
            cookie["Order"] = GridView1.Rows[index].Cells[0].Text;
            Response.Cookies.Add(cookie);
            Response.Redirect("~/Detailed_Information.aspx");
        }
    }
}
