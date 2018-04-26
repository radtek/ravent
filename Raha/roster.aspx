<%@ Page Title="" Language="C#" MasterPageFile="~/Raha.Master" AutoEventWireup="true" CodeBehind="roster.aspx.cs" Inherits="Raha.roster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="rosterPanel" runat="server" >
        <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" placeholder="Enter Key for Edit Access"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Validate" />
        <br />
        <div>
            &nbsp;&nbsp;
               

                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="280px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
        </div>
        <div style="position: relative; left: 300px; margin-top: -200px; width: 600px; height: 400px; overflow-y: auto">
            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False" DataKeyNames="ID,DATE" ShowFooter="False" AllowPaging="False" CellPadding="4" GridLines="Horizontal" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" PageSize="400" PagerStyle-Wrap="False" AutoGenerateEditButton="False" EditRowStyle-BackColor="#009999"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating"
                OnRowCreated="OnRowCreated" EnableSortingAndPagingCallbacks="False" Style="width: 600px;">
                <EmptyDataTemplate>
                    Roster Not Available.
                </EmptyDataTemplate>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerSettings Mode="NumericFirstLast" PageButtonCount="5" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <%--<asp:LinkButton ID="btnSelect" runat="server" CommandName="Select" Text="Select" />--%>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" />
                            <%--<asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" />--%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update" Text="Update" />
                            <asp:LinkButton ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="false"
                        ReadOnly="true" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="NAME" InsertVisible="false"
                        ReadOnly="true" SortExpression="name" />

                    <asp:TemplateField HeaderText="SHIFT" SortExpression="shift">
                        <ItemTemplate>
                            <%# Eval("shift") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtshift" runat="server" Text='<%# Bind("shift") %>' />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtshift1" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="tower" HeaderText="TOWER" InsertVisible="false"
                        ReadOnly="true" SortExpression="tower" />
                    <asp:BoundField DataField="date" HeaderText="DATE" InsertVisible="false"
                        ReadOnly="true" SortExpression="date" />
                </Columns>

            </asp:GridView>
        </div>
    </asp:Panel>
</asp:Content>
