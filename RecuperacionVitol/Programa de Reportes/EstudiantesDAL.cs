using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Programa_de_Reportes
{
    public class Detenciones
    {
        public int id_detencion { get; set; }
        public int id_estudiante { get; set; }
        public DateTime fecha_detencion { get; set; }
        public string motivo { get; set; }
        public int id_tipo { get; set; }
        public string estado { get; set; }

        public Detenciones() { }

        public Detenciones(int id_detencion, int id_estudiante, DateTime fecha_detencion, string motivo, int id_tipo, string estado)
        {
            this.id_detencion = id_detencion;
            this.id_estudiante = id_estudiante;
            this.fecha_detencion = fecha_detencion;
            this.motivo = motivo;
            this.id_tipo = id_tipo;
            this.estado = estado;

        }
    }

    public class Estudiantes
    {
        public int id_estudiante { get; set; }
        public string nombre { get; set; }

        public string matricula { get; set; }
        public int edad { get; set; }
        public string telefono { get; set; }

        public int id_curso { get; set; }

        public Estudiantes() { }

        public Estudiantes(int id_estudiante, string nombre, string matricula, int edad, string telefono, int id_curso)
        {
            this.id_estudiante = id_estudiante;
            this.nombre = nombre;
            this.matricula = matricula;
            this.edad = edad;
            this.telefono = telefono;
            this.id_curso = id_curso;
        }
    }

    public class DetencionesDAL
    {

        public static int AgregarDetencion(Detenciones detenciones)
        {
            int retorna = 0;

            using (SqlConnection conection = SchoolBD.Conexion())
            {
                string query = $"insert into Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) values('{detenciones.id_estudiante}', '{detenciones.fecha_detencion:yyyy-MM-dd}', '{detenciones.motivo}', {detenciones.id_tipo}, '{detenciones.estado}')";
                SqlCommand comando = new SqlCommand(query, conection);

                retorna = comando.ExecuteNonQuery();
            }

            return retorna;
        }

        public static List<Detenciones> PresentarDetenciones()
        {
            List<Detenciones> Lista = new List<Detenciones>();

            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = "Select * From Detenciones";
                SqlCommand comando = new SqlCommand(query, connection);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Detenciones detenciones = new Detenciones();
                    detenciones.id_detencion = reader.GetInt32(reader.GetOrdinal("id_detencion"));
                    detenciones.id_estudiante = reader.GetInt32(reader.GetOrdinal("id_estudiante"));
                    detenciones.fecha_detencion = reader.GetDateTime(reader.GetOrdinal("fecha_detencion"));
                    detenciones.motivo = reader.GetString(reader.GetOrdinal("motivo"));
                    detenciones.id_tipo = reader.GetInt32(reader.GetOrdinal("id_tipo"));
                    detenciones.estado = reader.GetString(reader.GetOrdinal("estado"));
                    Lista.Add(detenciones);
                }

                connection.Close();
                return Lista;
            }
        }

        public static List<Detenciones> BuscarDetenciones(Detenciones detenciones)
        {
            List<Detenciones> Lista = new List<Detenciones>();

            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = $"Select * From Detenciones Where id_estudiante ={detenciones.id_estudiante}";
                SqlCommand comando = new SqlCommand(query, connection);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Detenciones det = new Detenciones()
                    {
                        id_detencion = reader.GetInt32(reader.GetOrdinal("id_detencion")),
                        id_estudiante = reader.GetInt32(reader.GetOrdinal("id_estudiante")),
                        fecha_detencion = reader.GetDateTime(reader.GetOrdinal("fecha_detencion")),
                        motivo = reader.GetString(reader.GetOrdinal("motivo")),
                        id_tipo = reader.GetInt32(reader.GetOrdinal("id_tipo")),
                        estado = reader.GetString(reader.GetOrdinal("estado"))
                    };

                    Lista.Add(det);
                }

                connection.Close();
                return Lista;
            }
        }

        public static int ModificarDetencion(Detenciones detenciones)
        {
            int result = 0;
            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = $"update Detenciones set id_estudiante='{detenciones.id_estudiante}', fecha_detencion='{detenciones.fecha_detencion:yyyy-MM-dd}', motivo='{detenciones.motivo}', id_tipo={detenciones.id_tipo}, estado='{detenciones.estado}' where id_detencion={detenciones.id_detencion}";
                SqlCommand comando = new SqlCommand(query, connection);

                result = comando.ExecuteNonQuery();
                connection.Close();
            }
            return result;
        }

        public static List<Estudiantes> PresentarEstudiantes()
        {
            List<Estudiantes> Listae = new List<Estudiantes>();

            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = "select * from Estudiantes";
                SqlCommand comando = new SqlCommand(query, connection);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Estudiantes estudiantes = new Estudiantes();
                    estudiantes.id_estudiante = reader.GetInt32(reader.GetOrdinal("id_estudiante"));
                    estudiantes.nombre = reader.GetString(reader.GetOrdinal("nombre"));
                    estudiantes.matricula = reader.GetString(reader.GetOrdinal("matricula"));
                    estudiantes.edad = reader.GetInt32(reader.GetOrdinal("edad"));
                    estudiantes.telefono = reader.GetString(reader.GetOrdinal("telefono"));
                    estudiantes.id_curso = reader.GetInt32(reader.GetOrdinal("id_curso"));
                    Listae.Add(estudiantes);
                }

                connection.Close();
                return Listae;
            }
        }

        public static DataTable ObtenerTop5Estudiantes()
        {
            DataTable dt = new DataTable();

            using (SqlConnection conn = SchoolBD.Conexion())
            {
                string query = @"
            SELECT TOP 5 
                E.nombre AS NombreEstudiante,
                COUNT(D.id_detencion) AS CantidadReportes,
                MIN(D.fecha_detencion) AS PrimerReporte
            FROM 
                Detenciones D
            JOIN 
                Estudiantes E ON D.id_estudiante = E.id_estudiante
            GROUP BY 
                E.nombre
            ORDER BY 
                MAX(D.fecha_detencion) DESC";

                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }

            return dt;
        }
        public static DataTable ObtenerEstudiantesConDetenciones()
        {
            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = @"SELECT 
                            E.nombre AS NombreEstudiante,
                            COUNT(D.id_detencion) AS CantidadDetenciones,
                            C.nombre_curso AS Curso
                        FROM 
                            Estudiantes E
                        JOIN 
                            Detenciones D ON E.id_estudiante = D.id_estudiante
                        JOIN 
                            Cursos C ON E.id_curso = C.id_curso
                        GROUP BY 
                            E.nombre, C.nombre_curso
                        ORDER BY 
                            CantidadDetenciones DESC";

                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
        }
    }
}