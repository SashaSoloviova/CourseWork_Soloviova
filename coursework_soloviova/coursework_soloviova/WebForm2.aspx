<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="coursework_soloviova.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID_DEL" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="ID_DEL" HeaderText="ID_DEL" ReadOnly="True" SortExpression="ID_DEL" />
        <asp:BoundField DataField="DATA_DEL" HeaderText="DATA_DEL" SortExpression="DATA_DEL" />
        <asp:BoundField DataField="NUMBER_DEL" HeaderText="NUMBER_DEL" SortExpression="NUMBER_DEL" />
        <asp:BoundField DataField="SUGAR_CONTENT" HeaderText="SUGAR_CONTENT" SortExpression="SUGAR_CONTENT" />
        <asp:BoundField DataField="WEIGHT_BEET" HeaderText="WEIGHT_BEET" SortExpression="WEIGHT_BEET" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_DEL" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID_DEL" HeaderText="ID_DEL" ReadOnly="True" SortExpression="ID_DEL" />
        <asp:BoundField DataField="DATA_DEL" HeaderText="DATA_DEL" SortExpression="DATA_DEL" />
        <asp:BoundField DataField="NUMBER_DEL" HeaderText="NUMBER_DEL" SortExpression="NUMBER_DEL" />
        <asp:BoundField DataField="SUGAR_CONTENT" HeaderText="SUGAR_CONTENT" SortExpression="SUGAR_CONTENT" />
        <asp:BoundField DataField="WEIGHT_BEET" HeaderText="WEIGHT_BEET" SortExpression="WEIGHT_BEET" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SOLOVIOVA_DBConnectionString %>" DeleteCommand="DELETE FROM [INVOICE_DELIVERY] WHERE [ID_DEL] = @original_ID_DEL AND (([DATA_DEL] = @original_DATA_DEL) OR ([DATA_DEL] IS NULL AND @original_DATA_DEL IS NULL)) AND (([NUMBER_DEL] = @original_NUMBER_DEL) OR ([NUMBER_DEL] IS NULL AND @original_NUMBER_DEL IS NULL)) AND (([SUGAR_CONTENT] = @original_SUGAR_CONTENT) OR ([SUGAR_CONTENT] IS NULL AND @original_SUGAR_CONTENT IS NULL)) AND (([WEIGHT_BEET] = @original_WEIGHT_BEET) OR ([WEIGHT_BEET] IS NULL AND @original_WEIGHT_BEET IS NULL))" InsertCommand="INSERT INTO [INVOICE_DELIVERY] ([ID_DEL], [DATA_DEL], [NUMBER_DEL], [SUGAR_CONTENT], [WEIGHT_BEET]) VALUES (@ID_DEL, @DATA_DEL, @NUMBER_DEL, @SUGAR_CONTENT, @WEIGHT_BEET)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [INVOICE_DELIVERY]" UpdateCommand="UPDATE [INVOICE_DELIVERY] SET [DATA_DEL] = @DATA_DEL, [NUMBER_DEL] = @NUMBER_DEL, [SUGAR_CONTENT] = @SUGAR_CONTENT, [WEIGHT_BEET] = @WEIGHT_BEET WHERE [ID_DEL] = @original_ID_DEL AND (([DATA_DEL] = @original_DATA_DEL) OR ([DATA_DEL] IS NULL AND @original_DATA_DEL IS NULL)) AND (([NUMBER_DEL] = @original_NUMBER_DEL) OR ([NUMBER_DEL] IS NULL AND @original_NUMBER_DEL IS NULL)) AND (([SUGAR_CONTENT] = @original_SUGAR_CONTENT) OR ([SUGAR_CONTENT] IS NULL AND @original_SUGAR_CONTENT IS NULL)) AND (([WEIGHT_BEET] = @original_WEIGHT_BEET) OR ([WEIGHT_BEET] IS NULL AND @original_WEIGHT_BEET IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID_DEL" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_DATA_DEL" />
        <asp:Parameter Name="original_NUMBER_DEL" Type="Int32" />
        <asp:Parameter Name="original_SUGAR_CONTENT" Type="Double" />
        <asp:Parameter Name="original_WEIGHT_BEET" Type="Double" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID_DEL" Type="Int32" />
        <asp:Parameter DbType="Date" Name="DATA_DEL" />
        <asp:Parameter Name="NUMBER_DEL" Type="Int32" />
        <asp:Parameter Name="SUGAR_CONTENT" Type="Double" />
        <asp:Parameter Name="WEIGHT_BEET" Type="Double" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="DATA_DEL" />
        <asp:Parameter Name="NUMBER_DEL" Type="Int32" />
        <asp:Parameter Name="SUGAR_CONTENT" Type="Double" />
        <asp:Parameter Name="WEIGHT_BEET" Type="Double" />
        <asp:Parameter Name="original_ID_DEL" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_DATA_DEL" />
        <asp:Parameter Name="original_NUMBER_DEL" Type="Int32" />
        <asp:Parameter Name="original_SUGAR_CONTENT" Type="Double" />
        <asp:Parameter Name="original_WEIGHT_BEET" Type="Double" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
