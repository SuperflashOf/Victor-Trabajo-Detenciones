namespace Programa_de_Reportes
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.estudiantesver = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.buscart = new System.Windows.Forms.TextBox();
            this.button5 = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.detencionesver = new System.Windows.Forms.DataGridView();
            this.fechadet = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.motiv = new System.Windows.Forms.TextBox();
            this.tipodeten = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.estad = new System.Windows.Forms.TextBox();
            this.labelestu = new System.Windows.Forms.Label();
            this.idestudi = new System.Windows.Forms.TextBox();
            this.button6 = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.iddetenc = new System.Windows.Forms.TextBox();
            this.button7 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.estudiantesver)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.detencionesver)).BeginInit();
            this.SuspendLayout();
            // 
            // estudiantesver
            // 
            this.estudiantesver.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.estudiantesver.Location = new System.Drawing.Point(370, 46);
            this.estudiantesver.Name = "estudiantesver";
            this.estudiantesver.Size = new System.Drawing.Size(668, 143);
            this.estudiantesver.TabIndex = 0;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(902, 482);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(136, 49);
            this.button1.TabIndex = 1;
            this.button1.Text = "Reporte del Top 5 Mas Detenciones";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(370, 502);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(62, 29);
            this.button2.TabIndex = 2;
            this.button2.Text = "Agregar";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(438, 502);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(64, 29);
            this.button3.TabIndex = 3;
            this.button3.Text = "Actualizar";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(760, 482);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(136, 49);
            this.button4.TabIndex = 4;
            this.button4.Text = "Reporte Todas las Detenciones";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(238, 31);
            this.label1.TabIndex = 5;
            this.label1.Text = "Nueva Detencion";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(370, 480);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Buscar por ID:";
            // 
            // buscart
            // 
            this.buscart.Location = new System.Drawing.Point(451, 477);
            this.buscart.Name = "buscart";
            this.buscart.Size = new System.Drawing.Size(121, 20);
            this.buscart.TabIndex = 7;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(508, 502);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(64, 29);
            this.button5.TabIndex = 8;
            this.button5.Text = "Buscar";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(17, 106);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(116, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "Fecha de la detencion:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(364, 12);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(168, 31);
            this.label4.TabIndex = 11;
            this.label4.Text = "Estudiantes";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(364, 195);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(177, 31);
            this.label5.TabIndex = 13;
            this.label5.Text = "Detenciones";
            // 
            // detencionesver
            // 
            this.detencionesver.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.detencionesver.Location = new System.Drawing.Point(370, 229);
            this.detencionesver.Name = "detencionesver";
            this.detencionesver.Size = new System.Drawing.Size(668, 242);
            this.detencionesver.TabIndex = 12;
            this.detencionesver.SelectionChanged += new System.EventHandler(this.detencionesver_SelectionChanged);
            // 
            // fechadet
            // 
            this.fechadet.Location = new System.Drawing.Point(139, 104);
            this.fechadet.Name = "fechadet";
            this.fechadet.Size = new System.Drawing.Size(196, 20);
            this.fechadet.TabIndex = 14;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(17, 142);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(42, 13);
            this.label6.TabIndex = 15;
            this.label6.Text = "Motivo:";
            // 
            // motiv
            // 
            this.motiv.Location = new System.Drawing.Point(65, 140);
            this.motiv.Name = "motiv";
            this.motiv.Size = new System.Drawing.Size(270, 20);
            this.motiv.TabIndex = 17;
            // 
            // tipodeten
            // 
            this.tipodeten.Location = new System.Drawing.Point(121, 177);
            this.tipodeten.Name = "tipodeten";
            this.tipodeten.Size = new System.Drawing.Size(214, 20);
            this.tipodeten.TabIndex = 18;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(17, 180);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(98, 13);
            this.label7.TabIndex = 19;
            this.label7.Text = "Tipo de Detencion:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.Color.ForestGreen;
            this.label8.Location = new System.Drawing.Point(17, 216);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(126, 24);
            this.label8.TabIndex = 20;
            this.label8.Text = "Tipo 1: Leve";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.ForeColor = System.Drawing.Color.Goldenrod;
            this.label9.Location = new System.Drawing.Point(16, 263);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(175, 24);
            this.label9.TabIndex = 21;
            this.label9.Text = "Tipo 2: Moderada";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.Color.DarkRed;
            this.label10.Location = new System.Drawing.Point(16, 316);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(136, 24);
            this.label10.TabIndex = 23;
            this.label10.Text = "Tipo 3: Grave";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(17, 372);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(43, 13);
            this.label11.TabIndex = 25;
            this.label11.Text = "Estado:";
            // 
            // estad
            // 
            this.estad.Location = new System.Drawing.Point(66, 369);
            this.estad.Name = "estad";
            this.estad.Size = new System.Drawing.Size(269, 20);
            this.estad.TabIndex = 24;
            // 
            // labelestu
            // 
            this.labelestu.AutoSize = true;
            this.labelestu.Location = new System.Drawing.Point(17, 67);
            this.labelestu.Name = "labelestu";
            this.labelestu.Size = new System.Drawing.Size(91, 13);
            this.labelestu.TabIndex = 27;
            this.labelestu.Text = "ID del Estudiante:";
            // 
            // idestudi
            // 
            this.idestudi.Location = new System.Drawing.Point(114, 64);
            this.idestudi.Name = "idestudi";
            this.idestudi.Size = new System.Drawing.Size(221, 20);
            this.idestudi.TabIndex = 26;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(18, 482);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(346, 49);
            this.button6.TabIndex = 28;
            this.button6.Text = "Limpiar Todo";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(17, 424);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(99, 13);
            this.label12.TabIndex = 30;
            this.label12.Text = "ID de la Detencion:";
            // 
            // iddetenc
            // 
            this.iddetenc.Location = new System.Drawing.Point(121, 421);
            this.iddetenc.Name = "iddetenc";
            this.iddetenc.Size = new System.Drawing.Size(214, 20);
            this.iddetenc.TabIndex = 29;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(578, 477);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(125, 54);
            this.button7.TabIndex = 31;
            this.button7.Text = "Agregar Estudiantes";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1050, 543);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.iddetenc);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.labelestu);
            this.Controls.Add(this.idestudi);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.estad);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.tipodeten);
            this.Controls.Add(this.motiv);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.fechadet);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.detencionesver);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.buscart);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.estudiantesver);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.estudiantesver)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.detencionesver)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView estudiantesver;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox buscart;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DataGridView detencionesver;
        private System.Windows.Forms.DateTimePicker fechadet;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox motiv;
        private System.Windows.Forms.TextBox tipodeten;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox estad;
        private System.Windows.Forms.Label labelestu;
        private System.Windows.Forms.TextBox idestudi;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox iddetenc;
        private System.Windows.Forms.Button button7;
    }
}

