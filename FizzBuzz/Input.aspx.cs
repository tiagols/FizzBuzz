using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FizzBuzz
{
    public class ValueResult
    {
        public Double value { get; set; }
      
        public string result { get; set; }

        public ValueResult(double val, string res)
        {
            value = val;
            result = res;
        }

        public ValueResult()
        {
           
        }
    }
    public partial class Input : System.Web.UI.Page
    {
        List<ValueResult> objs;
        Double higher = 0;
        Double lower = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblErro.Text = string.Empty;
            if (!IsPostBack)
            {
                objs = new List<ValueResult>();
                Session["objs"] = objs;
            }
            else
            {
                objs = (List<ValueResult>)Session["objs"];
                validateFields();
            }
        }

        private bool validateFields()
        {
            bool valid = true;
            string msg = string.Empty;
            if (!Double.TryParse(txtHigher.Text, out higher))
            {
                msg = "Higher is not a number, ";
            }
            if (!Double.TryParse(txtLower.Text, out lower))
            {
                msg += "Lower is not a number, ";
            }
            if(!msg.Equals(string.Empty))
            {
                valid = false;
            }
            lblErro.Text = msg;
            return valid;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Double value = 0;
            string result = string.Empty;

            if (validateFields())
            {

                if (Double.TryParse(txtValue.Text, out value))
                {
                    ValueResult vr = new ValueResult();
                    if ((value % lower) == 0)
                        result = "Fizz";

                    if ((value % higher) == 0)
                        result += "Buzz";

                    if (result.Equals(string.Empty))
                        result = "N/A";

                    vr.value = value;
                    vr.result = result;
                    objs.Add(vr);
                    Session["objs"] = objs;
                }
                else
                {
                    lblErro.Text = "Value is not a Number.";
                }
            }
                bindGVResult();
            
        }

        public void bindGVResult()
        {
            gvResultado.DataSource = objs;
            gvResultado.DataBind();
        }
    }
}