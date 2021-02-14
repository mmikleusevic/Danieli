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

namespace Calculator
{ 
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void One_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("1");
        }

        private void Two_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("2");
        }

        private void Three_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("3");
        }

        private void Four_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("4");
        }

        private void Five_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("5");
        }

        private void Six_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("6");
        }

        private void Seven_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("7");
        }

        private void Eight_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("8");
        }

        private void Nine_Click(object sender, RoutedEventArgs e)
        {
            SetNumber("9");
        }

        private void Clear_Click(object sender, RoutedEventArgs e)
        {
            result.Content = "0";
        }

        void Setoperator(string op)
        {
            string c = (string)result.Content;
            if (c.Substring(c.Length - 1, 1) == ".")
                result.Content = result.Content + "0 " + op + " ";
            else
            {
                if (c.EndsWith(" "))
                    result.Content = c.Substring(0, c.IndexOf(" ")) + " " + op + " ";

                else
                {
                    if (c.Contains("+") || c.Contains("*") || c.Contains("-") || c.Contains("/"))
                        Calcul();

                    result.Content = result.Content + " " + op + " ";
                }
            }
        }

        void SetNumber(String num)
        {

            if ((string)result.Content == "0")
                result.Content = num;
            else
            {
                result.Content = result.Content + num;
            }
        }

        private void Zero_Click(object sender, RoutedEventArgs e)
        {
            result.Content = result.Content + "0";
        }

        private void Decimal_point_Click(object sender, RoutedEventArgs e)
        {
            string c = (string)result.Content;
            if (!(c.EndsWith(".")))
            {
                if (c.EndsWith(" "))
                    result.Content = result.Content + "0.";
                else
                    result.Content = result.Content + ".";
            }
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            Setoperator("+");
        }

        private void Subtract_Click(object sender, RoutedEventArgs e)
        {
            Setoperator("-");
        }

        private void Multiply_Click(object sender, RoutedEventArgs e)
        {
            Setoperator("*");
        }
        private void Divide_Click(object sender, RoutedEventArgs e)
        {
            Setoperator("/");
        }

        private void Equals_Click(object sender, RoutedEventArgs e)
        {
            string c = (string)result.Content;
            if (c.EndsWith(" "))
            {
                if (c.Contains("%"))
                {
                    float f = float.Parse(c.Substring(0, c.IndexOf(" "))) / 100;
                    result.Content = f.ToString();
                }
                else
                    result.Content = c.Substring(0, c.IndexOf(" "));

            }
            else
            {

                Calcul();
            }
        }

        void Calcul()
        {
            string c = (string)result.Content;
            string[] tokens = c.Split(' ');
            float a = float.Parse(tokens[0]);
            float b = float.Parse(tokens[2]);
            float res = 0;

            if (tokens[1] == "+")
                res = a + b;
            else if (tokens[1] == "-")
                res = a - b;
            else if (tokens[1] == "*")
                res = a * b;
            else if (tokens[1] == "/")
                res = a / b;
            result.Content = res.ToString();
        }
    }
}
