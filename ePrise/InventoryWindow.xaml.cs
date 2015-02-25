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
    }
}
