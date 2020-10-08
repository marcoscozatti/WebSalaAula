<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSalaAula.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="\App_Themes\Temas\StyleSheet1.css" rel="stylesheet" type="text/css" />
	<title></title>
</head>

<body>
     <div class="container">
        <div class="box">
			  <h1>Aula/Professores por sala</h1>
			<asp:HyperLink ID="Manutencao" runat="server" Text="Manutenção" Visible="True" NavigateUrl="~/Manutencao.aspx">Manutenção de Salas</asp:HyperLink>
			
          
         </div>
     </div>
 </body>
</html>
