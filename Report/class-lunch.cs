namespace Report
{
    using System;
    using System.ComponentModel;
    using System.Drawing;
    using System.Windows.Forms;
    using Telerik.Reporting;
    using Telerik.Reporting.Drawing;
    using System.Text;

    /// <summary>
    /// Summary description for class_lunch.
    /// </summary>
    public partial class class_lunch : Telerik.Reporting.Report
    {
        public class_lunch()
        {
            //
            // Required for telerik Reporting designer support
            //
            InitializeComponent();

            //
            // TODO: Add any constructor code after InitializeComponent call
            //
        }
        public static string ConvertArrayToString(object[] values)
        {
            var result = new StringBuilder(values[0].ToString(), values.Length);

            for (int i = 1; i < values.Length; i++)
            {
                result.AppendFormat(", {0}", values[i]);
            }
            return result.ToString();
        }
    }
}