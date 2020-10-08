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
								
								<asp:GridView ID="MinhaConexao" runat="server" AllowSorting="True" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="conexao" ForeColor="#333333" GridLines="None">
									<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
									<Columns>
										<asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
										<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
										<asp:BoundField DataField="professor" HeaderText="professor" SortExpression="professor" />
										<asp:BoundField DataField="sala" HeaderText="sala" SortExpression="sala" />
									</Columns>
									<EditRowStyle BackColor="#999999" />
									<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
									<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
									<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
									<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
									<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
									<SortedAscendingCellStyle BackColor="#E9E7E2" />
									<SortedAscendingHeaderStyle BackColor="#506C8C" />
									<SortedDescendingCellStyle BackColor="#FFFDF8" />
									<SortedDescendingHeaderStyle BackColor="#6F8DAE" />
								</asp:GridView>
								
							<asp:SqlDataSource ID="conexao" runat="server"
								  connectionString="<%$ ConnectionStrings:DBSalaAulaConnectionString %>"
							      SelectCommand="SELECT [id], [professor], [sala] FROM [ManutSalas]"
							 	  UpdateCommand="UPDATE ManutSalas SET [professor]=@professor, [sala]=@sala Where [id]=@id"
								  DeleteCommand="Delete From ManutSalas Where [id]=@id">
							</asp:SqlDataSource>
									
							</td>
						</tr>


					</table>
					<asp:HyperLink ID="Home" runat="server" Text="Home" Visible="True" NavigateUrl="~/Default.aspx">Volta Home</asp:HyperLink>
					

				</div>
			</div>

		</div>

	</form>
</body>
</html>
