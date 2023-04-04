using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using facto.Models;

namespace facto
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Display();
        }

        public void Display()
        {
            using (factoEntities _entity = new factoEntities())
            {
                List<Empresa> _empresaList = new List<Empresa>();

                _empresaList = _entity.empresa.Select(x => new Empresa
                { emp_numid = x.emp_numid }
                ).ToList();

                /*
                _studentList = _entity.StudentDetails.Select(x => new StudentInformation
                {
                    Id = x.Id,
                    Name = x.Name,
                    Age = x.Age,
                    City = x.City,
                    Gender = x.Gender
                }).ToList();
                */
                dataGridView1.DataSource = _empresaList;
            }
        }
    }
}
