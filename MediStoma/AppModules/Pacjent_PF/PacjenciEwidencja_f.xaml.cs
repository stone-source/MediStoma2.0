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

namespace MediStoma.AppModules.Pacjent_PF
{
    /// <summary>
    /// Logika interakcji dla klasy PacjenciEwidencja_f.xaml
    /// </summary>
    public partial class PacjenciEwidencja_f : Page
    {
        public PacjenciEwidencja_f()
        {
            InitializeComponent();
        }

        public static implicit operator ContentControl(PacjenciEwidencja_f v)
        {
            throw new NotImplementedException();
        }
    }
}
