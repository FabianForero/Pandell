using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace Webforms
{
    public partial class Pandell : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            List<int> lista = new List<int>();
            Random aleatorio = new Random();
            int i = Convert.ToInt32(TextBox1.Text);
            int inicial = Convert.ToInt32(TextBox1.Text);
            int final = Convert.ToInt32(TextBox2.Text) + 1;
            while (i < final)
            {
                int numAle = aleatorio.Next(inicial, final);
                if (!lista.Contains(numAle))
                {
                    lista.Add(numAle);
                    i++;
                }
            }
            Table1.Rows.Clear();
            TableRow tRow = new TableRow();
            tRow.CssClass = "trResults";
            Table1.Rows.Add(tRow);
            int tc = 0;
            foreach (int valor in lista)
            {
                TableCell tCell = new TableCell();
                tCell.Text = valor.ToString();
                tCell.CssClass = "tdResults";
                tRow.Cells.Add(tCell);
                if (tc == 19)
                {
                    tRow = new TableRow();
                    tRow.CssClass = "trResults";
                    Table1.Rows.Add(tRow);
                    tc = 0;
                }
                else
                {
                    tc += 1;
                }
            }
        }
    }
}