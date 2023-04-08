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
    /// Interaction logic for Payment.xaml
    /// </summary>
    public partial class Payment : Window
    {
        public Payment()
        {
            InitializeComponent();
        }

        string Amount, LeaseID, Date, LeaseIdVoid, DateVoid;

        private void AmountBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Amount = AmountBox.Text;
        }

        private void LeaseIDBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            LeaseID = LeaseIDBox.Text;
       
        }

        private void DateVoidBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            DateVoid = DateVoidBox.Text;
        }

        private void DateBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Date = DateBox.Text;
        }

        private void SubmitPaymentButton_Click(object sender, RoutedEventArgs e)
        {
            string connectionString;
            connectionString =
"Data Source=(local);Initial Catalog=ML635221553;"
+ "Integrated Security=true";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand payments = connection.CreateCommand();

            payments.CommandText = "INSERT INTO PAYMENTS (Lease_Terms_ID, Date, Amount)" +
                " VALUES (@LeaseId, @DateEntry, @AmountEntry)";
            payments.Parameters.AddWithValue("@LeaseId", LeaseIDBox.Text);
            payments.Parameters.AddWithValue("@DateEntry", DateBox.Text);
            payments.Parameters.AddWithValue("@AmountEntry", AmountBox.Text);
            try
            {
                connection.Open();
                payments.ExecuteNonQuery();
                MessageBox.Show("Payment Successfuly Added!");
            }
            catch
            {
                MessageBox.Show("Something went wrong!");
            }
            finally
            {
                connection.Close();

                DateBox.Clear();
                AmountBox.Clear();
                LeaseIDBox.Clear();
            }
        }

        private void PaymentIDBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            LeaseIdVoid = PaymentIDBox.Text;
        }

        private void VoidPaymentBox_Click(object sender, RoutedEventArgs e)
        {
            string connectionString;
            connectionString =
"Data Source=(local);Initial Catalog=ML635221553;"
+ "Integrated Security=true";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand payments = connection.CreateCommand();

            payments.CommandText = "UPDATE PAYMENTS SET PAYMENTS.Amount = 0 FROM PAYMENTS p" + 
                " WHERE p.Lease_Terms_ID = @LeaseIdV AND p.Date = @DateEntryV";
            payments.Parameters.AddWithValue("@LeaseIdV", PaymentIDBox.Text);
            payments.Parameters.AddWithValue("@DateEntryV", DateVoidBox.Text);
            
            try
            {
                connection.Open();
                payments.ExecuteNonQuery();
                MessageBox.Show("Payment Successfuly Voided!");
            }
            catch
            {
                MessageBox.Show("Something went wrong!");
            }
            finally
            {
                connection.Close();
                PaymentIDBox.Clear();
                DateVoidBox.Clear();
            }
        }
    }
    }

