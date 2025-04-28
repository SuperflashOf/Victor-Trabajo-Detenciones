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
    public class EstudiantesF
    {
        public int id_estudiante {  get; set; }
        public string nombre { get; set; }
        public string matricula { get; set; }
        public int edad {  get; set; }
        public string telefono { get; set; }
        public int id_curso { get; set; }
        public EstudiantesF() { }

        public EstudiantesF(int id_estudiante, string nombre, string matricula, int edad, string telefono, int id_curso)
        {
            this.id_estudiante = id_estudiante;
            this.nombre = nombre;
            this.matricula = matricula;
            this.edad = edad;
            this.telefono = telefono;
            this.id_curso = id_curso;
        }
    }

    public class Cursos
    {
        public int id_curso { get; set; }
        public string nombre_curso { get; set; }
        public Cursos() { }
        public Cursos(int id_curso, string nombre_curso)
        {
            this.id_curso = id_curso;
            this.nombre_curso = nombre_curso;
        }
    }

    public class EstudiantesDAL
    {
        public static int AgregarEstudiante(EstudiantesF estudiantesf)
        {
            int retorna = 0;

            using (SqlConnection conection = SchoolBD.Conexion())
            {
                string query = $"insert into Estudiantes(nombre, matricula, edad, telefono, id_curso) values('{estudiantesf.nombre}', '{estudiantesf.matricula}', '{estudiantesf.edad}', '{estudiantesf.telefono}', '{estudiantesf.id_curso}')";
                SqlCommand comando = new SqlCommand(query, conection);

                retorna = comando.ExecuteNonQuery();
            }
            return retorna;
        }
        public static List<EstudiantesF> PresentarEstudiantesF()
        {
            List<EstudiantesF> Listaf = new List<EstudiantesF>();

            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = "Select * From Estudiantes";
                SqlCommand comando = new SqlCommand(query, connection);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    EstudiantesF estudiantesf = new EstudiantesF();
                    estudiantesf.id_estudiante = reader.GetInt32(reader.GetOrdinal("id_estudiante"));
                    estudiantesf.nombre = reader.GetString(reader.GetOrdinal("nombre"));
                    estudiantesf.matricula = reader.GetString(reader.GetOrdinal("matricula"));
                    estudiantesf.edad = reader.GetInt32(reader.GetOrdinal("edad"));
                    estudiantesf.telefono = reader.GetString(reader.GetOrdinal("telefono"));
                    estudiantesf.id_curso = reader.GetInt32(reader.GetOrdinal("id_curso"));
                    Listaf.Add(estudiantesf);
                }

                connection.Close();
                return Listaf;
            }
        }
        public static int ModificarEstudiante(EstudiantesF estudiantesf)
        {
            int result = 0;
            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = $"update Estudiantes set nombre='{estudiantesf.nombre}', matricula='{estudiantesf.matricula}', edad='{estudiantesf.edad}', telefono='{estudiantesf.telefono}', id_curso='{estudiantesf.id_curso}' where id_estudiante={estudiantesf.id_estudiante}";
                SqlCommand comando = new SqlCommand(query, connection);

                result = comando.ExecuteNonQuery();
                connection.Close();
            }
            return result;
        }
        public static List<Cursos> PresentarCursos()
        {
            List<Cursos> Listac = new List<Cursos>();

            using (SqlConnection connection = SchoolBD.Conexion())
            {
                string query = "select * from Cursos";
                SqlCommand comando = new SqlCommand(query, connection);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    Cursos cursos = new Cursos();
                    cursos.id_curso = reader.GetInt32(reader.GetOrdinal("id_curso"));
                    cursos.nombre_curso = reader.GetString(reader.GetOrdinal("nombre_curso"));
                    Listac.Add(cursos);
                }

                connection.Close();
                return Listac;
            }
        }
    }
}
