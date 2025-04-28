using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Programa_de_Reportes
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 detencion = new Form1();

            detencion.Show();
        }

        private void EstudianteAbrir_Click(object sender, EventArgs e)
        {
            estudiantes est = new estudiantes();

            est.Show();
        }
    }
}
