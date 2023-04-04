namespace facto
{
    partial class Form1
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lb_empnumid = new System.Windows.Forms.Label();
            this.tb_empnumid = new System.Windows.Forms.TextBox();
            this.lb_emptipid = new System.Windows.Forms.Label();
            this.tb_emptipid = new System.Windows.Forms.TextBox();
            this.lb_empdir = new System.Windows.Forms.Label();
            this.tb_empdir = new System.Windows.Forms.TextBox();
            this.lb_empciu = new System.Windows.Forms.Label();
            this.tb_empciu = new System.Windows.Forms.TextBox();
            this.lb_empdepto = new System.Windows.Forms.Label();
            this.tb_empdepto = new System.Windows.Forms.TextBox();
            this.lb_emptel = new System.Windows.Forms.Label();
            this.tb_emptel = new System.Windows.Forms.TextBox();
            this.lb_emptel2 = new System.Windows.Forms.Label();
            this.tb_emptel2 = new System.Windows.Forms.TextBox();
            this.lb_emptel3 = new System.Windows.Forms.Label();
            this.tb_emptel3 = new System.Windows.Forms.TextBox();
            this.lb_empemail = new System.Windows.Forms.Label();
            this.tb_empemail = new System.Windows.Forms.TextBox();
            this.lb_empweb = new System.Windows.Forms.Label();
            this.tb_empweb = new System.Windows.Forms.TextBox();
            this.lb_emprlegal = new System.Windows.Forms.Label();
            this.tb_emprlegal = new System.Windows.Forms.TextBox();
            this.lb_empfconstit = new System.Windows.Forms.Label();
            this.dtp_empfconstit = new System.Windows.Forms.DateTimePicker();
            this.lb_empfregistro = new System.Windows.Forms.Label();
            this.dtp_empfregist = new System.Windows.Forms.DateTimePicker();
            this.btn_guardar = new System.Windows.Forms.Button();
            this.btn_actualizar = new System.Windows.Forms.Button();
            this.btn_eliminar = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btn_eliminar);
            this.groupBox1.Controls.Add(this.btn_actualizar);
            this.groupBox1.Controls.Add(this.btn_guardar);
            this.groupBox1.Controls.Add(this.dtp_empfregist);
            this.groupBox1.Controls.Add(this.lb_empfregistro);
            this.groupBox1.Controls.Add(this.dtp_empfconstit);
            this.groupBox1.Controls.Add(this.lb_empfconstit);
            this.groupBox1.Controls.Add(this.tb_emprlegal);
            this.groupBox1.Controls.Add(this.lb_emprlegal);
            this.groupBox1.Controls.Add(this.tb_empweb);
            this.groupBox1.Controls.Add(this.lb_empweb);
            this.groupBox1.Controls.Add(this.tb_empemail);
            this.groupBox1.Controls.Add(this.lb_empemail);
            this.groupBox1.Controls.Add(this.tb_emptel3);
            this.groupBox1.Controls.Add(this.lb_emptel3);
            this.groupBox1.Controls.Add(this.tb_emptel2);
            this.groupBox1.Controls.Add(this.lb_emptel2);
            this.groupBox1.Controls.Add(this.tb_emptel);
            this.groupBox1.Controls.Add(this.lb_emptel);
            this.groupBox1.Controls.Add(this.tb_empdepto);
            this.groupBox1.Controls.Add(this.lb_empdepto);
            this.groupBox1.Controls.Add(this.tb_empciu);
            this.groupBox1.Controls.Add(this.lb_empciu);
            this.groupBox1.Controls.Add(this.tb_empdir);
            this.groupBox1.Controls.Add(this.lb_empdir);
            this.groupBox1.Controls.Add(this.tb_emptipid);
            this.groupBox1.Controls.Add(this.lb_emptipid);
            this.groupBox1.Controls.Add(this.tb_empnumid);
            this.groupBox1.Controls.Add(this.lb_empnumid);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(776, 176);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos";
            // 
            // lb_empnumid
            // 
            this.lb_empnumid.AutoSize = true;
            this.lb_empnumid.Location = new System.Drawing.Point(222, 25);
            this.lb_empnumid.Name = "lb_empnumid";
            this.lb_empnumid.Size = new System.Drawing.Size(74, 16);
            this.lb_empnumid.TabIndex = 0;
            this.lb_empnumid.Text = "Numero ID:";
            // 
            // tb_empnumid
            // 
            this.tb_empnumid.Location = new System.Drawing.Point(302, 19);
            this.tb_empnumid.MaxLength = 20;
            this.tb_empnumid.Name = "tb_empnumid";
            this.tb_empnumid.Size = new System.Drawing.Size(100, 22);
            this.tb_empnumid.TabIndex = 1;
            // 
            // lb_emptipid
            // 
            this.lb_emptipid.AutoSize = true;
            this.lb_emptipid.Location = new System.Drawing.Point(15, 25);
            this.lb_emptipid.Name = "lb_emptipid";
            this.lb_emptipid.Size = new System.Drawing.Size(119, 16);
            this.lb_emptipid.TabIndex = 2;
            this.lb_emptipid.Text = "Tipo Identificación:";
            // 
            // tb_emptipid
            // 
            this.tb_emptipid.Location = new System.Drawing.Point(141, 18);
            this.tb_emptipid.MaxLength = 5;
            this.tb_emptipid.Name = "tb_emptipid";
            this.tb_emptipid.Size = new System.Drawing.Size(75, 22);
            this.tb_emptipid.TabIndex = 3;
            // 
            // lb_empdir
            // 
            this.lb_empdir.AutoSize = true;
            this.lb_empdir.Location = new System.Drawing.Point(409, 24);
            this.lb_empdir.Name = "lb_empdir";
            this.lb_empdir.Size = new System.Drawing.Size(67, 16);
            this.lb_empdir.TabIndex = 4;
            this.lb_empdir.Text = "Dirección:";
            // 
            // tb_empdir
            // 
            this.tb_empdir.Location = new System.Drawing.Point(483, 18);
            this.tb_empdir.MaxLength = 80;
            this.tb_empdir.Name = "tb_empdir";
            this.tb_empdir.Size = new System.Drawing.Size(287, 22);
            this.tb_empdir.TabIndex = 5;
            // 
            // lb_empciu
            // 
            this.lb_empciu.AutoSize = true;
            this.lb_empciu.Location = new System.Drawing.Point(18, 54);
            this.lb_empciu.Name = "lb_empciu";
            this.lb_empciu.Size = new System.Drawing.Size(53, 16);
            this.lb_empciu.TabIndex = 6;
            this.lb_empciu.Text = "Ciudad:";
            // 
            // tb_empciu
            // 
            this.tb_empciu.Location = new System.Drawing.Point(78, 47);
            this.tb_empciu.MaxLength = 20;
            this.tb_empciu.Name = "tb_empciu";
            this.tb_empciu.Size = new System.Drawing.Size(116, 22);
            this.tb_empciu.TabIndex = 7;
            // 
            // lb_empdepto
            // 
            this.lb_empdepto.AutoSize = true;
            this.lb_empdepto.Location = new System.Drawing.Point(200, 50);
            this.lb_empdepto.Name = "lb_empdepto";
            this.lb_empdepto.Size = new System.Drawing.Size(96, 16);
            this.lb_empdepto.TabIndex = 8;
            this.lb_empdepto.Text = "Departamento:";
            // 
            // tb_empdepto
            // 
            this.tb_empdepto.Location = new System.Drawing.Point(302, 47);
            this.tb_empdepto.MaxLength = 20;
            this.tb_empdepto.Name = "tb_empdepto";
            this.tb_empdepto.Size = new System.Drawing.Size(100, 22);
            this.tb_empdepto.TabIndex = 9;
            // 
            // lb_emptel
            // 
            this.lb_emptel.AutoSize = true;
            this.lb_emptel.Location = new System.Drawing.Point(405, 52);
            this.lb_emptel.Name = "lb_emptel";
            this.lb_emptel.Size = new System.Drawing.Size(71, 16);
            this.lb_emptel.TabIndex = 10;
            this.lb_emptel.Text = "Teléfono1:";
            // 
            // tb_emptel
            // 
            this.tb_emptel.Location = new System.Drawing.Point(483, 48);
            this.tb_emptel.MaxLength = 20;
            this.tb_emptel.Name = "tb_emptel";
            this.tb_emptel.Size = new System.Drawing.Size(100, 22);
            this.tb_emptel.TabIndex = 11;
            // 
            // lb_emptel2
            // 
            this.lb_emptel2.AutoSize = true;
            this.lb_emptel2.Location = new System.Drawing.Point(589, 52);
            this.lb_emptel2.Name = "lb_emptel2";
            this.lb_emptel2.Size = new System.Drawing.Size(37, 16);
            this.lb_emptel2.TabIndex = 12;
            this.lb_emptel2.Text = "Tel2:";
            // 
            // tb_emptel2
            // 
            this.tb_emptel2.Location = new System.Drawing.Point(632, 46);
            this.tb_emptel2.MaxLength = 20;
            this.tb_emptel2.Name = "tb_emptel2";
            this.tb_emptel2.Size = new System.Drawing.Size(100, 22);
            this.tb_emptel2.TabIndex = 13;
            // 
            // lb_emptel3
            // 
            this.lb_emptel3.AutoSize = true;
            this.lb_emptel3.Location = new System.Drawing.Point(18, 83);
            this.lb_emptel3.Name = "lb_emptel3";
            this.lb_emptel3.Size = new System.Drawing.Size(43, 16);
            this.lb_emptel3.TabIndex = 14;
            this.lb_emptel3.Text = "Tel. 3:";
            // 
            // tb_emptel3
            // 
            this.tb_emptel3.Location = new System.Drawing.Point(78, 76);
            this.tb_emptel3.MaxLength = 20;
            this.tb_emptel3.Name = "tb_emptel3";
            this.tb_emptel3.Size = new System.Drawing.Size(100, 22);
            this.tb_emptel3.TabIndex = 15;
            // 
            // lb_empemail
            // 
            this.lb_empemail.AutoSize = true;
            this.lb_empemail.Location = new System.Drawing.Point(203, 82);
            this.lb_empemail.Name = "lb_empemail";
            this.lb_empemail.Size = new System.Drawing.Size(44, 16);
            this.lb_empemail.TabIndex = 16;
            this.lb_empemail.Text = "Email:";
            // 
            // tb_empemail
            // 
            this.tb_empemail.Location = new System.Drawing.Point(254, 76);
            this.tb_empemail.MaxLength = 30;
            this.tb_empemail.Name = "tb_empemail";
            this.tb_empemail.Size = new System.Drawing.Size(148, 22);
            this.tb_empemail.TabIndex = 17;
            // 
            // lb_empweb
            // 
            this.lb_empweb.AutoSize = true;
            this.lb_empweb.Location = new System.Drawing.Point(408, 81);
            this.lb_empweb.Name = "lb_empweb";
            this.lb_empweb.Size = new System.Drawing.Size(39, 16);
            this.lb_empweb.TabIndex = 18;
            this.lb_empweb.Text = "Web:";
            // 
            // tb_empweb
            // 
            this.tb_empweb.Location = new System.Drawing.Point(483, 77);
            this.tb_empweb.Name = "tb_empweb";
            this.tb_empweb.Size = new System.Drawing.Size(178, 22);
            this.tb_empweb.TabIndex = 19;
            // 
            // lb_emprlegal
            // 
            this.lb_emprlegal.AutoSize = true;
            this.lb_emprlegal.Location = new System.Drawing.Point(18, 108);
            this.lb_emprlegal.Name = "lb_emprlegal";
            this.lb_emprlegal.Size = new System.Drawing.Size(76, 16);
            this.lb_emprlegal.TabIndex = 20;
            this.lb_emprlegal.Text = "Rep. Legal:";
            // 
            // tb_emprlegal
            // 
            this.tb_emprlegal.Location = new System.Drawing.Point(100, 102);
            this.tb_emprlegal.Name = "tb_emprlegal";
            this.tb_emprlegal.Size = new System.Drawing.Size(196, 22);
            this.tb_emprlegal.TabIndex = 21;
            // 
            // lb_empfconstit
            // 
            this.lb_empfconstit.AutoSize = true;
            this.lb_empfconstit.Location = new System.Drawing.Point(302, 105);
            this.lb_empfconstit.Name = "lb_empfconstit";
            this.lb_empfconstit.Size = new System.Drawing.Size(96, 16);
            this.lb_empfconstit.TabIndex = 22;
            this.lb_empfconstit.Text = "F. Constitución:";
            // 
            // dtp_empfconstit
            // 
            this.dtp_empfconstit.CustomFormat = "yyyy-MM-dd";
            this.dtp_empfconstit.Location = new System.Drawing.Point(408, 103);
            this.dtp_empfconstit.Name = "dtp_empfconstit";
            this.dtp_empfconstit.Size = new System.Drawing.Size(200, 22);
            this.dtp_empfconstit.TabIndex = 23;
            // 
            // lb_empfregistro
            // 
            this.lb_empfregistro.AutoSize = true;
            this.lb_empfregistro.Location = new System.Drawing.Point(18, 134);
            this.lb_empfregistro.Name = "lb_empfregistro";
            this.lb_empfregistro.Size = new System.Drawing.Size(72, 16);
            this.lb_empfregistro.TabIndex = 24;
            this.lb_empfregistro.Text = "F.Registro:";
            // 
            // dtp_empfregist
            // 
            this.dtp_empfregist.CustomFormat = "yyyy-MM-dd";
            this.dtp_empfregist.Location = new System.Drawing.Point(100, 131);
            this.dtp_empfregist.Name = "dtp_empfregist";
            this.dtp_empfregist.Size = new System.Drawing.Size(200, 22);
            this.dtp_empfregist.TabIndex = 25;
            // 
            // btn_guardar
            // 
            this.btn_guardar.Location = new System.Drawing.Point(372, 147);
            this.btn_guardar.Name = "btn_guardar";
            this.btn_guardar.Size = new System.Drawing.Size(75, 23);
            this.btn_guardar.TabIndex = 26;
            this.btn_guardar.Text = "Guardar";
            this.btn_guardar.UseVisualStyleBackColor = true;
            // 
            // btn_actualizar
            // 
            this.btn_actualizar.Location = new System.Drawing.Point(483, 147);
            this.btn_actualizar.Name = "btn_actualizar";
            this.btn_actualizar.Size = new System.Drawing.Size(75, 23);
            this.btn_actualizar.TabIndex = 27;
            this.btn_actualizar.Text = "Actualizar";
            this.btn_actualizar.UseVisualStyleBackColor = true;
            // 
            // btn_eliminar
            // 
            this.btn_eliminar.Location = new System.Drawing.Point(586, 147);
            this.btn_eliminar.Name = "btn_eliminar";
            this.btn_eliminar.Size = new System.Drawing.Size(75, 23);
            this.btn_eliminar.TabIndex = 28;
            this.btn_eliminar.Text = "Eliminar";
            this.btn_eliminar.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 195);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(776, 243);
            this.dataGridView1.TabIndex = 1;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "CRUD - Empresas";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lb_empdir;
        private System.Windows.Forms.TextBox tb_emptipid;
        private System.Windows.Forms.Label lb_emptipid;
        private System.Windows.Forms.TextBox tb_empnumid;
        private System.Windows.Forms.Label lb_empnumid;
        private System.Windows.Forms.TextBox tb_empdir;
        private System.Windows.Forms.TextBox tb_emptel;
        private System.Windows.Forms.Label lb_emptel;
        private System.Windows.Forms.TextBox tb_empdepto;
        private System.Windows.Forms.Label lb_empdepto;
        private System.Windows.Forms.TextBox tb_empciu;
        private System.Windows.Forms.Label lb_empciu;
        private System.Windows.Forms.DateTimePicker dtp_empfregist;
        private System.Windows.Forms.Label lb_empfregistro;
        private System.Windows.Forms.DateTimePicker dtp_empfconstit;
        private System.Windows.Forms.Label lb_empfconstit;
        private System.Windows.Forms.TextBox tb_emprlegal;
        private System.Windows.Forms.Label lb_emprlegal;
        private System.Windows.Forms.TextBox tb_empweb;
        private System.Windows.Forms.Label lb_empweb;
        private System.Windows.Forms.TextBox tb_empemail;
        private System.Windows.Forms.Label lb_empemail;
        private System.Windows.Forms.TextBox tb_emptel3;
        private System.Windows.Forms.Label lb_emptel3;
        private System.Windows.Forms.TextBox tb_emptel2;
        private System.Windows.Forms.Label lb_emptel2;
        private System.Windows.Forms.Button btn_eliminar;
        private System.Windows.Forms.Button btn_actualizar;
        private System.Windows.Forms.Button btn_guardar;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}

