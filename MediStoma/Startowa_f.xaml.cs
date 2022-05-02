﻿using System.Windows;
using Npgsql;
using System.Data;
using System.Windows.Media;
using MediStoma.AppModules.DatabaseConnection;

namespace MediStoma
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            OkreslStanPolaczenia();         
        }

        private void OkreslStanPolaczenia()
        {
            using (NpgsqlConnection connection = CDBAccess.GetConnection())
            {
                try
                {
                    connection.Open();
                }
                catch (System.Exception)
                {

                    //throw new System.Exception("Błąd otwarcia połączenia do bazy danych");
                }
                
                if (connection.State == ConnectionState.Open)
                {
                    lblWynikStatusuPolaczenia.Content = "OK";
                    lblWynikStatusuPolaczenia.Foreground = Brushes.Green;
                }
            }
        }

        private void btnGabinet_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void btnWyjscie_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnKartoteka_Click(object sender, RoutedEventArgs e)
        {
            
        }
    }
}
