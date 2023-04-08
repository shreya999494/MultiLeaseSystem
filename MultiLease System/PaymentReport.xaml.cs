using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;

namespace MultiLease_System
{
    /// <summary>
    /// Interaction logic for PaymentReport.xaml
    /// </summary>
    public partial class PaymentReport : Window
    {
        public PaymentReport()
        {
            InitializeComponent();
            FillGridData();
        }

        public void FillGridData()
        {
            string connectionString;
            connectionString =
"Data Source=(local);Initial Catalog=ML635221553;"
+ "Integrated Security=true";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string queryString = "select * from Leases_Audit";
                SqlCommand command = new SqlCommand(queryString, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable data = new DataTable("Leases_Audit");
                adapter.Fill(data);
                datagrid111.ItemsSource = data.DefaultView;

            }


        }

        private void datagrid111_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

    }
}
