using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace facto.Models
{
    public class Empresa
    {
        public string emp_tipíd { get; set; }
        public string emp_numid { get; set; }
        public string emp_nom   { get; set; }
        public string emp_dir   { get; set; }
        public string emp_ciu   { get; set; }
        public string emp_depto { get; set; }
        public string emp_tel   { get; set; }
        public string emp_tel2  { get; set; }
        public string emp_tel3  { get; set; }
        public string emp_email { get; set; }
        public string emp_web   { get; set; }
        public string emp_rlegal{ get; set; }
        public DateTime emp_fconstit { get; set; }
        public DateTime emp_fregistro { get; set; }
    }
}
