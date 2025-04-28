using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace Programa_de_Reportes
{
    public class SchoolBD
    {

        public static SqlConnection Conexion()
        {
            SqlConnection conection = new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=SchoolBD;Data Source=DESKTOP-9RQ3DVQ");
            conection.Open();

            return conection;
        }

    }
}
