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
    public partial class estudiantes : Form
    {
        public estudiantes()
        {
            InitializeComponent();
            etdidestud.Enabled = false;
        }

        public void refrescar()
        {
            etdverest.DataSource = EstudiantesDAL.PresentarEstudiantesF();
        }

        private void addestu_Click(object sender, EventArgs e)
        {
            EstudiantesF estudiantesf = new EstudiantesF();
            estudiantesf.nombre = etdnombre.Text;
            estudiantesf.matricula = etdmatricula.Text;
            estudiantesf.edad = Convert.ToInt32(etdedad.Text);
            estudiantesf.telefono = etdtelefono.Text;
            estudiantesf.id_curso = Convert.ToInt32(etdidcurso.Text);

            int result = EstudiantesDAL.AgregarEstudiante(estudiantesf);

            if (result > 0)
            {
                MessageBox.Show("Estudiante agregado");
            }
            else
            {
                MessageBox.Show("Estudiante no agregado");
            }
        }

        private void updateestu_Click(object sender, EventArgs e)
        {
            EstudiantesF estudiantesf = new EstudiantesF();
            estudiantesf.id_estudiante = Convert.ToInt32(etdidestud.Text);
            estudiantesf.nombre = etdnombre.Text;
            estudiantesf.matricula = etdmatricula.Text;
            estudiantesf.edad = Convert.ToInt32(etdedad.Text);
            estudiantesf.telefono = etdtelefono.Text;
            estudiantesf.id_curso = Convert.ToInt32(etdidcurso.Text);

            int result = EstudiantesDAL.ModificarEstudiante(estudiantesf);

            if (result > 0)
            {
                MessageBox.Show("Estudiante actualizado");
            }
            else
            {
                MessageBox.Show("Estudiante no actualizado");
            }
            
            refrescar();
        }

        private void estudiantes_Load(object sender, EventArgs e)
        {
            refrescar();
            vercursos.DataSource = EstudiantesDAL.PresentarCursos();
        }

        private void etdverest_SelectionChanged(object sender, EventArgs e)
        {
            etdidestud.Text = Convert.ToString(etdverest.CurrentRow.Cells["id_estudiante"].Value);
            etdnombre.Text = Convert.ToString(etdverest.CurrentRow.Cells["nombre"].Value);
            etdmatricula.Text = Convert.ToString(etdverest.CurrentRow.Cells["matricula"].Value);
            etdedad.Text = Convert.ToString(etdverest.CurrentRow.Cells["edad"].Value);
            etdtelefono.Text = Convert.ToString(etdverest.CurrentRow.Cells["telefono"].Value);
            etdidcurso.Text = Convert.ToString(etdverest.CurrentRow.Cells["id_curso"].Value);
        }

        private void clearevery_Click(object sender, EventArgs e)
        {
            refrescar();
            etdidestud.Text = "";
            etdnombre.Text = "";
            etdmatricula.Text = "";
            etdedad.Text = "";
            etdtelefono.Text = "";
            etdidcurso.Text = "";
        }
    }
}
