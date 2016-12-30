<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="coursework_soloviova.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID_GIVER" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AllowPaging="True">
    <Fields>
        <asp:BoundField DataField="ID_GIVER" HeaderText="ID_GIVER" ReadOnly="True" SortExpression="ID_GIVER" />
        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
        <asp:BoundField DataField="PATRONYMIC" HeaderText="PATRONYMIC" SortExpression="PATRONYMIC" />
        <asp:BoundField DataField="SURNAME" HeaderText="SURNAME" SortExpression="SURNAME" />
        <asp:BoundField DataField="REST_SUGAR" HeaderText="REST_SUGAR" SortExpression="REST_SUGAR" />
        <asp:BoundField DataField="REST_BAGASSE" HeaderText="REST_BAGASSE" SortExpression="REST_BAGASSE" />
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_GIVER" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID_GIVER" HeaderText="ID_GIVER" ReadOnly="True" SortExpression="ID_GIVER" />
        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
        <asp:BoundField DataField="PATRONYMIC" HeaderText="PATRONYMIC" SortExpression="PATRONYMIC" />
        <asp:BoundField DataField="SURNAME" HeaderText="SURNAME" SortExpression="SURNAME" />
        <asp:BoundField DataField="REST_SUGAR" HeaderText="REST_SUGAR" SortExpression="REST_SUGAR" />
        <asp:BoundField DataField="REST_BAGASSE" HeaderText="REST_BAGASSE" SortExpression="REST_BAGASSE" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SOLOVIOVA_DBConnectionString %>" DeleteCommand="DELETE FROM [GIVER] WHERE [ID_GIVER] = @original_ID_GIVER AND (([NAME] = @original_NAME) OR ([NAME] IS NULL AND @original_NAME IS NULL)) AND (([PATRONYMIC] = @original_PATRONYMIC) OR ([PATRONYMIC] IS NULL AND @original_PATRONYMIC IS NULL)) AND (([SURNAME] = @original_SURNAME) OR ([SURNAME] IS NULL AND @original_SURNAME IS NULL)) AND (([REST_SUGAR] = @original_REST_SUGAR) OR ([REST_SUGAR] IS NULL AND @original_REST_SUGAR IS NULL)) AND (([REST_BAGASSE] = @original_REST_BAGASSE) OR ([REST_BAGASSE] IS NULL AND @original_REST_BAGASSE IS NULL))" InsertCommand="INSERT INTO [GIVER] ([ID_GIVER], [NAME], [PATRONYMIC], [SURNAME], [REST_SUGAR], [REST_BAGASSE]) VALUES (@ID_GIVER, @NAME, @PATRONYMIC, @SURNAME, @REST_SUGAR, @REST_BAGASSE)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [GIVER]" UpdateCommand="UPDATE [GIVER] SET [NAME] = @NAME, [PATRONYMIC] = @PATRONYMIC, [SURNAME] = @SURNAME, [REST_SUGAR] = @REST_SUGAR, [REST_BAGASSE] = @REST_BAGASSE WHERE [ID_GIVER] = @original_ID_GIVER AND (([NAME] = @original_NAME) OR ([NAME] IS NULL AND @original_NAME IS NULL)) AND (([PATRONYMIC] = @original_PATRONYMIC) OR ([PATRONYMIC] IS NULL AND @original_PATRONYMIC IS NULL)) AND (([SURNAME] = @original_SURNAME) OR ([SURNAME] IS NULL AND @original_SURNAME IS NULL)) AND (([REST_SUGAR] = @original_REST_SUGAR) OR ([REST_SUGAR] IS NULL AND @original_REST_SUGAR IS NULL)) AND (([REST_BAGASSE] = @original_REST_BAGASSE) OR ([REST_BAGASSE] IS NULL AND @original_REST_BAGASSE IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID_GIVER" Type="Int32" />
        <asp:Parameter Name="original_NAME" Type="String" />
        <asp:Parameter Name="original_PATRONYMIC" Type="String" />
        <asp:Parameter Name="original_SURNAME" Type="String" />
        <asp:Parameter Name="original_REST_SUGAR" Type="Double" />
        <asp:Parameter Name="original_REST_BAGASSE" Type="Double" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID_GIVER" Type="Int32" />
        <asp:Parameter Name="NAME" Type="String" />
        <asp:Parameter Name="PATRONYMIC" Type="String" />
        <asp:Parameter Name="SURNAME" Type="String" />
        <asp:Parameter Name="REST_SUGAR" Type="Double" />
        <asp:Parameter Name="REST_BAGASSE" Type="Double" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NAME" Type="String" />
        <asp:Parameter Name="PATRONYMIC" Type="String" />
        <asp:Parameter Name="SURNAME" Type="String" />
        <asp:Parameter Name="REST_SUGAR" Type="Double" />
        <asp:Parameter Name="REST_BAGASSE" Type="Double" />
        <asp:Parameter Name="original_ID_GIVER" Type="Int32" />
        <asp:Parameter Name="original_NAME" Type="String" />
        <asp:Parameter Name="original_PATRONYMIC" Type="String" />
        <asp:Parameter Name="original_SURNAME" Type="String" />
        <asp:Parameter Name="original_REST_SUGAR" Type="Double" />
        <asp:Parameter Name="original_REST_BAGASSE" Type="Double" />
    </UpdateParameters>

</asp:SqlDataSource>
</asp:Content>

