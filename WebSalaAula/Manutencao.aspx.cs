using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data.Entity;
using WebSalaAula.DAO;
using System.Data.Entity.Infrastructure;
using WebSalaAula.Entidade;

namespace WebSalaAula
{
	public partial class Manutencao : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnIncluir_Click(object sender, EventArgs e)
		{
			using (var tb = new Contexto())
			{
				tb.ManutSala.Add(new ManutSala { professor = txtProfessor.Text, sala = txtSala.Text });
				tb.SaveChanges();

				MessageBox.Show("Incluido com sucesso", "Inclusão");
				limpacampos(); 

			}
		}

		protected void btnAlterar_Click(object sender, EventArgs e)
		{
			using (var tb = new Contexto())
			{
				try
				{
					var objeto = tb.ManutSala.Find(Convert.ToInt32(txtID.Text));
					objeto.professor = txtProfessor.Text;
					objeto.sala = txtSala.Text;
					tb.Entry(objeto).State = EntityState.Modified;
					tb.SaveChanges();
					MessageBox.Show("Alteração realizada com sucesso", "Alteração");
					limpacampos();

				}
				catch (Exception ex)
				{

					MessageBox.Show(ex.Message);
				}


			}
		}

		protected void btnExcluir_Click(object sender, EventArgs e)
		{
			using (var tb = new Contexto())
			{
				try
				{
					var objeto = tb.ManutSala.Find(Convert.ToInt32(txtID.Text));
					tb.ManutSala.Remove(objeto);
					tb.SaveChanges();
					MessageBox.Show("Exlcuido com sucesso", "Exclusão");
					limpacampos();
				}
				catch (Exception ex)
				{

					MessageBox.Show(ex.Message);
				}

			}

		}

		public void limpacampos()
		{
			txtID.Text = "";
			txtProfessor.Text = "";
			txtSala.Text = "";
			txtProfessor.Focus();
		}






	}



}
