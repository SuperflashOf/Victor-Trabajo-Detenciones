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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            iddetenc.Enabled = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Detenciones detenciones = new Detenciones();
            detenciones.id_estudiante = Convert.ToInt32(idestudi.Text);
            detenciones.fecha_detencion = fechadet.Value;
            detenciones.motivo = motiv.Text;
            detenciones.id_tipo = Convert.ToInt32(tipodeten.Text);
            detenciones.estado = estad.Text;

            int result = DetencionesDAL.AgregarDetencion(detenciones);

            if (result > 0)
            {
                MessageBox.Show("Detencion agregada");
            }
            else
            {
                MessageBox.Show("Detencion no agregada");
            }
            refrescar();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            refrescar();
            estudiantesver.DataSource = DetencionesDAL.PresentarEstudiantes();
        }

        public void refrescar()
        {
            detencionesver.DataSource = DetencionesDAL.PresentarDetenciones();
        }

        private void detencionesver_SelectionChanged(object sender, EventArgs e)
        {
            iddetenc.Text = Convert.ToString(detencionesver.CurrentRow.Cells["id_detencion"].Value);
            idestudi.Text = Convert.ToString(detencionesver.CurrentRow.Cells["id_estudiante"].Value);
            fechadet.Text = Convert.ToString(detencionesver.CurrentRow.Cells["fecha_detencion"].Value);
            motiv.Text = Convert.ToString(detencionesver.CurrentRow.Cells["motivo"].Value);
            tipodeten.Text = Convert.ToString(detencionesver.CurrentRow.Cells["id_tipo"].Value);
            estad.Text = Convert.ToString(detencionesver.CurrentRow.Cells["estado"].Value);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Detenciones detenciones = new Detenciones();
            detenciones.id_detencion = Convert.ToInt32(iddetenc.Text);
            detenciones.id_estudiante = Convert.ToInt32(idestudi.Text);
            detenciones.fecha_detencion = fechadet.Value;
            detenciones.motivo = motiv.Text;
            detenciones.id_tipo = Convert.ToInt32(tipodeten.Text);
            detenciones.estado = estad.Text;

            int result = DetencionesDAL.ModificarDetencion(detenciones);

            if (result > 0)
            {
                MessageBox.Show("Detencion actualizada");
            }
            else
            {
                MessageBox.Show("Detencion no actualizada");
            }

            refrescar();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            refrescar();
            iddetenc.Text = "";
            iddetenc.Text = "";
            idestudi.Text = "";
            fechadet.Text = "";
            motiv.Text = "";
            tipodeten.Text = "";
            estad.Text = "";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Detenciones detenciones = new Detenciones();
            detenciones.id_estudiante = Convert.ToInt32(buscart.Text);

            List<Detenciones> resultados = DetencionesDAL.BuscarDetenciones(detenciones);

            detencionesver.DataSource = resultados;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Reporte frm = new Reporte();

            frm.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            ReporteEstudiantesDetenciones OtroForm = new ReporteEstudiantesDetenciones();

            OtroForm.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            estudiantes AgrEst = new estudiantes();

            AgrEst.Show();
        }

        private void BotonBuscar_Click(object sender, EventArgs e)
        {
            Estudiantes estudiantes = new Estudiantes();
            estudiantes.nombre = boxbuscarestudiante.Text;

            List<Estudiantes> resultados = DetencionesDAL.BuscarEstud(estudiantes);

            estudiantesver.DataSource = resultados;
        }

        private void limp2_Click(object sender, EventArgs e)
        {
            boxbuscarestudiante.Text = "";
            estudiantesver.DataSource = DetencionesDAL.PresentarEstudiantes();
        }

        private void BscID_Click(object sender, EventArgs e)
        {
            Estudiantes estudiantes = new Estudiantes();
            estudiantes.id_estudiante = Convert.ToInt32(boxbuscarid.Text);

            List<Estudiantes> resultados = DetencionesDAL.BuscarIdEstudiante(estudiantes);

            estudiantesver.DataSource = resultados;
        }
    }
}
