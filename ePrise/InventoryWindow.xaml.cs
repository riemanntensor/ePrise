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
            using (var context = new ePriseContext()) {

                var itemList = context.Items.ToList<Item>();
                context.Items.Add(new Item() { ItemName = "Mouse Pad" });


            
            }
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
