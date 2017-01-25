<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Ahorro._Default" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 19px;
        }
        .style4
        {
            text-align: right;
        }
        .style5
        {
            height: 20px;
            text-align: right;
        }
        .style6
        {
            height: 19px;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2" align="center">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Regresar" 
                    Visible="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4" align="center">
                <CR:CrystalReportViewer ID="CRV1" runat="server" AutoDataBind="true" 
                    EnableDrillDown="False" EnableToolTips="False" HasCrystalLogo="False" 
                    HasGotoPageButton="False" HasToggleGroupTreeButton="False" 
                    ReuseParameterValuesOnRefresh="True" ShowAllPageIds="True" 
                    ToolPanelView="None" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2" colspan="2">
                Unidad de distancia de la construcción</td>
            <td class="style2" colspan="2">
                <asp:DropDownList ID="DDLUnidad" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DDLUnidad_SelectedIndexChanged">
                    <asp:ListItem Value="1">ft</asp:ListItem>
                    <asp:ListItem Value=".305">m</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6" colspan="2">
                <strong><em>GANANCIA DE CALOR</em></strong></td>
            <td class="style2" colspan="2">
                <asp:ValidationSummary ID="VS1" runat="server" Font-Bold="True" ForeColor="Red" 
                    HeaderText="Debe de corregir la información" ValidationGroup="VS1" />
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2" colspan="2">
                <strong>Por ubicación de las ventanas de la radiación directa al sol</strong></td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Noreste</td>
            <td style="text-align: right">
                <asp:DropDownList ID="DDLNE" runat="server">
                    <asp:ListItem Value="60">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="25">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="20">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtNE" runat="server">0</asp:TextBox>
                <asp:Label ID="lblNE" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtNE" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNE" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="stackedTabTitle">
            </td>
            <td class="stackedTabTitle">
                Este</td>
            <td class="style5">
                <asp:DropDownList ID="DDLE" runat="server">
                    <asp:ListItem Value="80">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="40">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="25">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="stackedTabTitle" colspan="2">
                <asp:TextBox ID="txtE" runat="server">0</asp:TextBox>
                <asp:Label ID="lblE" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtE" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtE" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td class="stackedTabTitle">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Sureste</td>
            <td class="style4">
                <asp:DropDownList ID="DDLSE" runat="server">
                    <asp:ListItem Value="75">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="30">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="20">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtSE" runat="server">0</asp:TextBox>
                <asp:Label ID="lblSE" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="txtSE" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtSE" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Sur</td>
            <td class="style4">
                <asp:DropDownList ID="DDLS" runat="server">
                    <asp:ListItem Value="75">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="35">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="20">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtS" runat="server">0</asp:TextBox>
                <asp:Label ID="lblS" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator4" runat="server" 
                    ControlToValidate="txtS" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtS" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Suroeste</td>
            <td class="style4">
                <asp:DropDownList ID="DDLSO" runat="server">
                    <asp:ListItem Value="110">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="45">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="30">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtSO" runat="server">0</asp:TextBox>
                <asp:Label ID="lblSO" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator5" runat="server" 
                    ControlToValidate="txtSO" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtSO" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Oeste</td>
            <td class="style4">
                <asp:DropDownList ID="DDLO" runat="server">
                    <asp:ListItem Value="150">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="65">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="45">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtO" runat="server">0</asp:TextBox>
                <asp:Label ID="lblO" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator6" runat="server" 
                    ControlToValidate="txtO" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtO" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Noroeste</td>
            <td class="style4">
                <asp:DropDownList ID="DDLNO" runat="server">
                    <asp:ListItem Value="120">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="50">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="35">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtNO" runat="server">0</asp:TextBox>
                <asp:Label ID="lblNO" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator7" runat="server" 
                    ControlToValidate="txtNO" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtNO" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Norte</td>
            <td class="style4">
                <asp:DropDownList ID="DDLN" runat="server">
                    <asp:ListItem Value="1">Sin Cortinas</asp:ListItem>
                    <asp:ListItem Value="2">Cortinas Interiores</asp:ListItem>
                    <asp:ListItem Value="3">Toldo Exterior</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtN" runat="server">0</asp:TextBox>
                <asp:Label ID="lblN" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator8" runat="server" 
                    ControlToValidate="txtN" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtN" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>Por conducción térmica de las ventanas</strong></td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Cristal sencillo</td>
            <td colspan="2">
                <asp:TextBox ID="txtCrSe" runat="server">0</asp:TextBox>
                <asp:Label ID="lblCS" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator9" runat="server" 
                    ControlToValidate="txtCrSe" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtCrSe" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Cristal doble o bloque de cristal</td>
            <td colspan="2">
                <asp:TextBox ID="txtCrDb" runat="server">0</asp:TextBox>
                <asp:Label ID="lblCD" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator10" runat="server" 
                    ControlToValidate="txtCrDb" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtCrDb" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>Por conducción térmica de las paredes</strong></td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Paredes (distancia lineal de la pared)</td>
            <td style="text-align: right">
                Grosor de la pared</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp; Distancia</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Pared exterior expuesta al Norte</td>
            <td style="text-align: right" dir="ltr">
                <asp:TextBox ID="txtPEENG" runat="server">0</asp:TextBox>
                <asp:Label ID="lblGN" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator19" runat="server" 
                    ControlToValidate="txtPEENG" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtPEENG" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtPEEND" runat="server">0</asp:TextBox>
                <asp:Label ID="lblDN" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator11" runat="server" 
                    ControlToValidate="txtPEEND" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtPEEND" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Pared exterior no expuesta al Norte</td>
            <td style="text-align: right">
                <asp:TextBox ID="txtPENENG" runat="server">0</asp:TextBox>
                <asp:Label ID="lblGNN" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator20" runat="server" 
                    ControlToValidate="txtPENENG" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtPENENG" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtPENEND" runat="server">0</asp:TextBox>
                <asp:Label ID="lblDNN" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator12" runat="server" 
                    ControlToValidate="txtPENEND" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtPENEND" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Paredes interiores (entre espacios a acodicionar y no acondicionados)</td>
            <td>
                <asp:TextBox ID="txtPID" runat="server">0</asp:TextBox>
                <asp:Label ID="lblPI" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator13" runat="server" 
                    ControlToValidate="txtPID" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtPID" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Techo o Cielo raso</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Elegir una opcion</td>
            <td style="text-align: right">
                <asp:DropDownList ID="DDLTecho" runat="server">
                    <asp:ListItem Value="19">Techo sin aislamiento</asp:ListItem>
                    <asp:ListItem Value="8">Techo con una o más pulgas de aislamiento</asp:ListItem>
                    <asp:ListItem Value="3">Cielo raso con espacio ocupado arriba</asp:ListItem>
                    <asp:ListItem Value="5">Cielo raso, aislado con ático arriba</asp:ListItem>
                    <asp:ListItem Value="12">Cielo raso, sin aislamiento con ático arriba</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td colspan="2">
                <asp:TextBox ID="txtTecho" runat="server">0</asp:TextBox>
                <asp:Label ID="lblTecho" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator14" runat="server" 
                    ControlToValidate="txtTecho" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtTecho" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>Por conducción térmica del piso</strong></td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Sin importar que el piso esté sobre el suelo o sobre un sótano</td>
            <td colspan="2">
                <asp:TextBox ID="txtPiso" runat="server">0</asp:TextBox>
                <asp:Label ID="lblPiso" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator15" runat="server" 
                    ControlToValidate="txtPiso" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtPiso" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>Otros datos</strong></td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Número de personas</td>
            <td colspan="2">
                <asp:TextBox ID="txtNH" runat="server">0</asp:TextBox>
                <asp:RangeValidator ID="RangeValidator16" runat="server" 
                    ControlToValidate="txtNH" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="txtNH" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Luces o equipo electrico en uso</td>
            <td colspan="2">
                <asp:TextBox ID="txtLuces" runat="server">0</asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="watts"></asp:Label>
                <asp:RangeValidator ID="RangeValidator17" runat="server" 
                    ControlToValidate="txtLuces" ErrorMessage="Debe ser un número" ForeColor="Red" 
                    MaximumValue="999999" MinimumValue="0" ToolTip="Debe de ingresar un número" 
                    Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="txtLuces" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Puertas y arcos</td>
            <td colspan="2">
                <asp:TextBox ID="txtPuertas" runat="server">0</asp:TextBox>
                <asp:Label ID="lblPuertas" runat="server"></asp:Label>
                <asp:RangeValidator ID="RangeValidator18" runat="server" 
                    ControlToValidate="txtPuertas" ErrorMessage="Debe ser un número" 
                    ForeColor="Red" MaximumValue="999999" MinimumValue="0" 
                    ToolTip="Debe de ingresar un número" Type="Double" ValidationGroup="VS1">*</asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="txtPuertas" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un número" ValidationGroup="VS1">Debe ingresar un número</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Nombre</td>
            <td colspan="2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ControlToValidate="txtNombre" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar un nombre" ValidationGroup="VS1">Debe ingresar un nombre</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                Correo electronico</td>
            <td colspan="2">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtCorreo" ErrorMessage="No es una dirección válida" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="VS1">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="txtCorreo" ErrorMessage="Campo requerido" ForeColor="Red" 
                    ToolTip="Debe ingresar una cuenta de correo electrónico" ValidationGroup="VS1">Debe ingresar una cuenta de correo electrónico</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Calcular" onclick="Button1_Click" 
                    ValidationGroup="VS1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4" rowspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
