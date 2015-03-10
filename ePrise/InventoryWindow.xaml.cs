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

namespace ePrise
{
    /// <summary>
    /// Interaction logic for InventoryWindow.xaml
    /// </summary>
    public partial class InventoryWindow : Window
    {
        //declare a previous window object so that I can code the back button
        private Window previousWindow;

        public InventoryWindow()
        {
            InitializeComponent();
        }

        void OnLoad(object sender, RoutedEventArgs e)
        {
            using (var context = new ePriseContext())
            {

            }
        }

        //overload the InventoryWindow method to take a parameter of the last window shown
        public InventoryWindow(Window window)
        {
            InitializeComponent();
            previousWindow = window;

        }

        //show the previous window 
        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            previousWindow.Show();
        }

        //Testing the database to query--Code will not go in this position
        private void btnAddItem_Click(object sender, RoutedEventArgs e)
        {
            var newVendor = new Vendor();

            newVendor.VendorName = "publix";

            using (var context = new ePriseContext()) {

                //add student object into students dbset
                context.Vendors.Add(newVendor);

                //add newItem entity into context and mark Entitystate Added
                //context.Entry(newVendor).State = System.Data.Entity.EntityState.Added;

                //execute queries in the database
                context.SaveChanges();

            
            }
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnAddItem_Click_1(object sender, RoutedEventArgs e)
        {
            var newItem = new Item();

            newItem.ItemName = "mouse pad";
            newItem.ItemCost = 5;
            newItem.VendorVendorId = 1;

            using (var context = new ePriseContext())
            {
                context.Items.Add(newItem);
                context.SaveChanges();
            }
        }
    }
}
