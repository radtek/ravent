<%@ Page Title="" Language="C#" MasterPageFile="~/Raha.Master" AutoEventWireup="true" CodeBehind="roster.aspx.cs" Inherits="Raha.roster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="rosterPanel" runat="server" >
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
        <div style="position: relative; left: 300px; margin-top: -200px;">
            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="True" ShowFooter="True" AllowPaging="True" AllowSorting="True" CellPadding="4" GridLines="Horizontal" EnableSortingAndPagingCallbacks="True" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" PageSize="10" OnLoad="Page_Load">
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

            </asp:GridView>
        </div>
    </asp:Panel>
</asp:Content>
