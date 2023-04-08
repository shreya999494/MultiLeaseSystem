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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MultiLease_System
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void AddLease_Click(object sender, RoutedEventArgs e)
        {
            AddLease AddForm = new AddLease();
            AddForm.Show();
        }

        private void PaymentsReports_Click(object sender, RoutedEventArgs e)
        {
            PaymentReport payRep = new PaymentReport();
            payRep.ShowDialog();
        }

        private void MakePayment_Click(object sender, RoutedEventArgs e)
        {
            Payment payments = new Payment();
            payments.ShowDialog();
        }
    }
}
