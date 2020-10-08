<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manutencao.aspx.cs" Inherits="WebSalaAula.Manutencao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<style type="text/css">
		.auto-style1 {
			height: 27px;
		}

		.auto-style3 {
			width: 755px;
			height: 47px;
		}

		.auto-style4 {
			height: 27px;
			width: 494px;
		}

		.auto-style5 {
			width: 494px;
		}
		.auto-style6 {
			text-align: center;
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div class="container"">
			<div class="box">
				<h1>Manutenção de cadastro de Sala/Professores </h1>

				<div class="box2">
					<table border="1" class="auto-style3">
						<tr>
							<td class="auto-style1">
								ID</td>

							<td class="auto-style4">
								<asp:TextBox ID="txtID" runat="server" Width="137px"></asp:TextBox>


							</td>
						</tr>
						<tr>
							<td class="auto-style1">
								<asp:Label ID="lblProfessor" runat="server" Height="23px" Text="Professor" Width="82px"></asp:Label>

							</td>

							<td class="auto-style4">
								<asp:TextBox ID="txtProfessor" runat="server" Width="344px"></asp:TextBox>


							</td>
						</tr>
						<tr>
							<td>
								<asp:Label ID="lblSala" runat="server" Text="Sala"></asp:Label>
							</td>
							<td class="auto-style5">
								<asp:TextBox ID="txtSala" runat="server" Width="207px"></asp:TextBox>
							</td>
						</tr>


						<tr>
							<td>
								
							</td>
							<td class="auto-style5">
								<asp:Button ID="btnIncluir" runat="server" Text="Incluir" OnClick="btnIncluir_Click" style="height: 29px" />
								<asp:Button ID="btnAlterar" runat="server" Text="Alterar" OnClick="btnAlterar_Click" />
								<asp:Button ID="btnExcluir" runat="server" Text="Excluir" OnClick="btnExcluir_Click" />
							</td>
						</tr>


						<tr>
							<td class="auto-style6" colspan="2">
								&nbsp;</td>
						</tr>


					</table>
					<asp:HyperLink ID="Home" runat="server" Text="Home" Visible="True" NavigateUrl="~/Default.aspx">Volta Home</asp:HyperLink>

				</div>
			</div>

		</div>

	</form>
</body>
</html>
