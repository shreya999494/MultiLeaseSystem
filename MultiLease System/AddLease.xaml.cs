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
    /// Interaction logic for AddLease.xaml
    /// </summary>
    public partial class AddLease : Window
    {
        public AddLease()
        {
            InitializeComponent();
        }

        string DateBegin, FirstPay, AmountPay, NumbPay, stVehicleLeased, CustLeasing;
        string LeaseIdST;

        private void DateLeaseBeginBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            DateBegin = DateLeaseBeginBox.Text;
        }

        private void FirstPaymentDueBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            FirstPay = FirstPaymentDueBox.Text;
        }

        private void AmountMonthPayBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            AmountPay = AmountMonthPayBox.Text;
        }

        private void NumbMonthlyPayBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            NumbPay = NumbMonthlyPayBox.Text;
        }

        private void VehicleLeasedBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            stVehicleLeased = VehicleLeasedBox.Text;
        }

        private void CustLeasingBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            CustLeasing = CustLeasingBox.Text;
        }


        private void LeaseIDBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            LeaseIdST = LeaseIDBox.Text;
        }

        private void SubmitAddLease_Click(object sender, RoutedEventArgs e)
        {
            string connectionString;
            connectionString =
"Data Source=(local);Initial Catalog=ML635221553;"
+ "Integrated Security=true";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand showLeases = connection.CreateCommand();

            showLeases.CommandText = "INSERT INTO Leases (Cust_Name, Vehicle_VIN, Monthly_Payment_Number, Monthly_Payment_Amount, First_Payment_Date, Date_Lease_Begins)" + 
                " VALUES (@Cust, @VIN, @MPN, @MPA, @FirstPay, @DateBegin)";
            showLeases.Parameters.AddWithValue("@Cust", CustLeasing);
            showLeases.Parameters.AddWithValue("@VIN", stVehicleLeased);
            showLeases.Parameters.AddWithValue("@MPN", NumbPay);
            showLeases.Parameters.AddWithValue("@MPA", AmountPay);
            showLeases.Parameters.AddWithValue("@FirstPay", FirstPay);
            showLeases.Parameters.AddWithValue("@DateBegin", DateBegin);
            try
            {
                connection.Open();
                showLeases.ExecuteNonQuery();
                MessageBox.Show("Lease Successfuly Added!");
            }
            catch
            {
                MessageBox.Show("Something went wrong!");
            }
            finally
            {
                connection.Close();
            }
        }

        private void UpdateLease_Click(object sender, RoutedEventArgs e)
        {
            string connectionString;
            connectionString =
"Data Source=(local);Initial Catalog=ML635221553;"
+ "Integrated Security=true";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand showLeases = connection.CreateCommand();

            showLeases.CommandText = "Update Leases SET Date_Lease_Begins = ISNULL(@dateLeaseBegins, Date_Lease_Begins), " +
                "First_Payment_Date = ISNULL(@firstPaymentDate, First_Payment_Date), " +
                "Monthly_Payment_Amount = ISNULL(@monthlyPaymentAmount, Monthly_Payment_Amount), " +
                "Monthly_Payment_Number = ISNULL(@monthlyPaymentNumber, Monthly_Payment_Number), " +
                "Vehicle_VIN = ISNULL(@vehicleVIN, Vehicle_VIN), " +
                "Customer_ID = ISNULL(@customerID, Customer_ID), " +
                "Cust_Name = ISNULL(@custName, Cust_Name) " +
                 "WHERE @id = Lease_Terms_ID";
            string[] arrayVars = { DateBegin, FirstPay, AmountPay, NumbPay, stVehicleLeased, CustLeasing };
            string[] arrayParams = { "@dateLeaseBegins", "@firstPaymentDate", "@monthlyPaymentAmount", "@monthlyPaymentNumber", "@vehicleVIN", "@custName" };

            for(var i = 0; i < arrayVars.Length; i++)
            {
                if (string.IsNullOrEmpty(arrayVars[i]))
                {
                    showLeases.Parameters.AddWithValue(arrayParams[i], DBNull.Value);
                }
                else
                {
                    showLeases.Parameters.AddWithValue(arrayParams[i], arrayVars[i]);
                }
            }
            showLeases.Parameters.AddWithValue("@customerID", DBNull.Value);
            showLeases.Parameters.AddWithValue("@id", LeaseIdST);
            try
            {
                connection.Open();
                showLeases.ExecuteNonQuery();
                MessageBox.Show("Lease Updated Successfuly!");
            }
            catch
            {
                MessageBox.Show("Something went wrong!");
            }
            finally
            {
                connection.Close();
            }
        }
    }
    }

