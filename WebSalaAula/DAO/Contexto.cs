using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using WebSalaAula.Entidade;

namespace WebSalaAula.DAO
{
	class Contexto : DbContext
	{

		public Contexto() : base("conexao")
		{

		}

		public DbSet<ManutSala> ManutSala { get; set; }
	}
}