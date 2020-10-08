namespace WebSalaAula.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ManutSalas",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        professor = c.String(),
                        sala = c.String(),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.ManutSalas");
        }
    }
}
