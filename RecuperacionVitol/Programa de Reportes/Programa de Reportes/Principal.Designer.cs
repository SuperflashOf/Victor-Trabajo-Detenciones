﻿namespace Programa_de_Reportes
{
    partial class Principal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.EstudianteAbrir = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(442, 39);
            this.label1.TabIndex = 0;
            this.label1.Text = "Programa de Detenciones";
            // 
            // EstudianteAbrir
            // 
            this.EstudianteAbrir.BackColor = System.Drawing.Color.ForestGreen;
            this.EstudianteAbrir.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.EstudianteAbrir.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.EstudianteAbrir.Location = new System.Drawing.Point(50, 161);
            this.EstudianteAbrir.Name = "EstudianteAbrir";
            this.EstudianteAbrir.Size = new System.Drawing.Size(373, 72);
            this.EstudianteAbrir.TabIndex = 1;
            this.EstudianteAbrir.Text = "Agregar Estudiante";
            this.EstudianteAbrir.UseVisualStyleBackColor = false;
            this.EstudianteAbrir.Click += new System.EventHandler(this.EstudianteAbrir_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.DarkRed;
            this.button1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(50, 64);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(373, 72);
            this.button1.TabIndex = 2;
            this.button1.Text = "Agregar Detencion";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(494, 283);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.EstudianteAbrir);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Principal";
            this.Text = "Principal";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button EstudianteAbrir;
        private System.Windows.Forms.Button button1;
    }
}