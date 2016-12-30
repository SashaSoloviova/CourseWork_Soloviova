<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="coursework_soloviova.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID_SHIP" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="ID_SHIP" HeaderText="ID_SHIP" ReadOnly="True" SortExpression="ID_SHIP" />
        <asp:BoundField DataField="DATE_SHIP" HeaderText="DATE_SHIP" SortExpression="DATE_SHIP" />
        <asp:BoundField DataField="NUMBER_SHIP" HeaderText="NUMBER_SHIP" SortExpression="NUMBER_SHIP" />
        <asp:BoundField DataField="AMOUNT_SUGAR" HeaderText="AMOUNT_SUGAR" SortExpression="AMOUNT_SUGAR" />
        <asp:BoundField DataField="AMOUNT_BAGASSE" HeaderText="AMOUNT_BAGASSE" SortExpression="AMOUNT_BAGASSE" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SOLOVIOVA_DBConnectionString %>" DeleteCommand="DELETE FROM [INVOICE_SHIPMENT] WHERE [ID_SHIP] = @original_ID_SHIP AND (([DATE_SHIP] = @original_DATE_SHIP) OR ([DATE_SHIP] IS NULL AND @original_DATE_SHIP IS NULL)) AND (([NUMBER_SHIP] = @original_NUMBER_SHIP) OR ([NUMBER_SHIP] IS NULL AND @original_NUMBER_SHIP IS NULL)) AND (([AMOUNT_SUGAR] = @original_AMOUNT_SUGAR) OR ([AMOUNT_SUGAR] IS NULL AND @original_AMOUNT_SUGAR IS NULL)) AND (([AMOUNT_BAGASSE] = @original_AMOUNT_BAGASSE) OR ([AMOUNT_BAGASSE] IS NULL AND @original_AMOUNT_BAGASSE IS NULL))" InsertCommand="INSERT INTO [INVOICE_SHIPMENT] ([ID_SHIP], [DATE_SHIP], [NUMBER_SHIP], [AMOUNT_SUGAR], [AMOUNT_BAGASSE]) VALUES (@ID_SHIP, @DATE_SHIP, @NUMBER_SHIP, @AMOUNT_SUGAR, @AMOUNT_BAGASSE)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [INVOICE_SHIPMENT]" UpdateCommand="UPDATE [INVOICE_SHIPMENT] SET [DATE_SHIP] = @DATE_SHIP, [NUMBER_SHIP] = @NUMBER_SHIP, [AMOUNT_SUGAR] = @AMOUNT_SUGAR, [AMOUNT_BAGASSE] = @AMOUNT_BAGASSE WHERE [ID_SHIP] = @original_ID_SHIP AND (([DATE_SHIP] = @original_DATE_SHIP) OR ([DATE_SHIP] IS NULL AND @original_DATE_SHIP IS NULL)) AND (([NUMBER_SHIP] = @original_NUMBER_SHIP) OR ([NUMBER_SHIP] IS NULL AND @original_NUMBER_SHIP IS NULL)) AND (([AMOUNT_SUGAR] = @original_AMOUNT_SUGAR) OR ([AMOUNT_SUGAR] IS NULL AND @original_AMOUNT_SUGAR IS NULL)) AND (([AMOUNT_BAGASSE] = @original_AMOUNT_BAGASSE) OR ([AMOUNT_BAGASSE] IS NULL AND @original_AMOUNT_BAGASSE IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID_SHIP" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_DATE_SHIP" />
        <asp:Parameter Name="original_NUMBER_SHIP" Type="Int32" />
        <asp:Parameter Name="original_AMOUNT_SUGAR" Type="Double" />
        <asp:Parameter Name="original_AMOUNT_BAGASSE" Type="Double" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID_SHIP" Type="Int32" />
        <asp:Parameter DbType="Date" Name="DATE_SHIP" />
        <asp:Parameter Name="NUMBER_SHIP" Type="Int32" />
        <asp:Parameter Name="AMOUNT_SUGAR" Type="Double" />
        <asp:Parameter Name="AMOUNT_BAGASSE" Type="Double" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="DATE_SHIP" />
        <asp:Parameter Name="NUMBER_SHIP" Type="Int32" />
        <asp:Parameter Name="AMOUNT_SUGAR" Type="Double" />
        <asp:Parameter Name="AMOUNT_BAGASSE" Type="Double" />
        <asp:Parameter Name="original_ID_SHIP" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_DATE_SHIP" />
        <asp:Parameter Name="original_NUMBER_SHIP" Type="Int32" />
        <asp:Parameter Name="original_AMOUNT_SUGAR" Type="Double" />
        <asp:Parameter Name="original_AMOUNT_BAGASSE" Type="Double" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_SHIP" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID_SHIP" HeaderText="ID_SHIP" ReadOnly="True" SortExpression="ID_SHIP" />
        <asp:BoundField DataField="DATE_SHIP" HeaderText="DATE_SHIP" SortExpression="DATE_SHIP" />
        <asp:BoundField DataField="NUMBER_SHIP" HeaderText="NUMBER_SHIP" SortExpression="NUMBER_SHIP" />
        <asp:BoundField DataField="AMOUNT_SUGAR" HeaderText="AMOUNT_SUGAR" SortExpression="AMOUNT_SUGAR" />
        <asp:BoundField DataField="AMOUNT_BAGASSE" HeaderText="AMOUNT_BAGASSE" SortExpression="AMOUNT_BAGASSE" />
    </Columns>
</asp:GridView>
</asp:Content>
