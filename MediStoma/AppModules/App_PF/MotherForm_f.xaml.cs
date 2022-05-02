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
using MediStoma.AppModules.Pacjent_PF;
using MediStoma.AppModules.Gabinet_PF;

namespace MediStoma.AppModules.App_PF
{
    /// <summary>
    /// Logika interakcji dla klasy MotherForm.xaml
    /// </summary>
    public partial class MotherForm_f : Window
    {
        private GabinetEwidencja_f _ctnGabinetEwidencja { get; set; }
        private PacjenciEwidencja_f _ctnPacjenciEwidencja { get; set; }

        public MotherForm_f()
        {
            InitializeComponent();
            this._ctnGabinetEwidencja = new GabinetEwidencja_f();
            this._ctnPacjenciEwidencja = new PacjenciEwidencja_f();
        }

        private void btnKartoteka_Click(object sender, RoutedEventArgs e)
        {
            frmKontent.Content = _ctnPacjenciEwidencja;
        }

        private void btnGabinet_Click(object sender, RoutedEventArgs e)
        {
            frmKontent.Content = _ctnGabinetEwidencja;
        }
    }
}
