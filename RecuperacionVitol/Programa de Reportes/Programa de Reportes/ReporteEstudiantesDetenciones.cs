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
    public partial class ReporteEstudiantesDetenciones : Form
    {
        public ReporteEstudiantesDetenciones()
        {
            InitializeComponent();
        }

        private void GenerarReporteEstudiantesConDetenciones()
        {
            DataTable dt = DetencionesDAL.ObtenerEstudiantesConDetenciones();

            ReportDataSource rds = new ReportDataSource("ReporteEstudiantesDetenciones", dt);
            reportViewer1.LocalReport.DataSources.Clear();
            reportViewer1.LocalReport.DataSources.Add(rds);
            reportViewer1.LocalReport.ReportPath = "ReporteEstudiantesDetenciones.rdlc";
            reportViewer1.RefreshReport();
        }

        private void ReporteEstudiantesDetenciones_Load(object sender, EventArgs e)
        {
            GenerarReporteEstudiantesConDetenciones();
            this.reportViewer1.RefreshReport();
        }
    }
}
