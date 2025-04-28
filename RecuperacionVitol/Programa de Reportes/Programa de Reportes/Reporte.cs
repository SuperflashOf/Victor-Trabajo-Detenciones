using Microsoft.Reporting.WinForms;
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
    public partial class Reporte : Form
    {
        public Reporte()
        {
            InitializeComponent();
        }

        private void GenerarReporteTop5()
        {
            DataTable dt = DetencionesDAL.ObtenerTop5Estudiantes();

            ReportDataSource rds = new ReportDataSource("DataSetTop5", dt);
            reportViewer1.LocalReport.DataSources.Clear();
            reportViewer1.LocalReport.DataSources.Add(rds);
            reportViewer1.LocalReport.ReportPath = "ReporteTop5.rdlc";
            reportViewer1.RefreshReport();
        }

        private void Reporte_Load(object sender, EventArgs e)
        {
            GenerarReporteTop5();
            this.reportViewer1.RefreshReport();
        }
    }
}
