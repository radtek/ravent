<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Raha.Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous" />

    <link rel="stylesheet" href="main.css" />
</head>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



<script>
    function passflip() {
        var x = document.getElementById("TextBox2");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
    function tab(el) {
        //alert(document.getElementById(el.id).getAttribute("href").substr(1));
        //document.getElementById('bd').style.display = 'none';
        document.getElementById(document.getElementById(el.id).getAttribute("href").substr(1)).style.display = "block";
        document.getElementById('myenDiv').style = "display:none";
        document.getElementById('Label1').style = "display:none";



    }


</script>

<body class="bg" runat="server" id="bd">
    <style>
       .dropdown:hover>.dropdown-menu {
  display: block;
}

       .navbar-nav.mr-auto li:hover > ul.dropdown-menu {
    display: block;
}
.dropdown-submenu {
    position:relative;
}
.dropdown-submenu>.dropdown-menu {
    top:0;
    left:100%;
    margin-top:-6px;
}

/* rotate caret on hover */
.dropdown-menu > li > a:hover:after {
    text-decoration: underline;
    transform: rotate(-90deg);
} 

        .dropdown-menu a:hover {
            color: blue!important;
            cursor: pointer;
        }

   </style>

    <form id="Form1" runat="server">

        <nav class="navbar navbar-toggleable-md" style="background: #003366; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">



            <a class="navbar-brand" href="https://dell.service-now.com/nav_to.do?uri=%2Fhome.do%3F"></a>

            <!--ul class="collapse navbar-collapse" id="navbarSupportedContent"-->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active "></li>
                <li class="dropdown">
                    <a class="nav-link" target="_blank" href="https://dell.service-now.com/nav_to.do?uri=%2Fhome.do%3F">Service Now</a>
                </li>
                <li class="dropdown">
                    <a class="nav-link" target="_blank" href="https://emcservice.my.salesforce.com/home/home.jsp?sdtd=1">SFDC<span class="sr-only">(current)</span></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="nav-link dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Internal<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="nav-link" target="_blank" href="https://emcindia-payroll.corp.emc.com/Login.asp">Payroll FBB declaration</a></li>
                        <li><a class="nav-link" target="_blank" href="https://eas-portal.cfcp.isus.emc.com/#/error">EAS Portal</a></li>
                        <li><a class="nav-link" target="_blank" href="https://sat.corp.emc.com/SAMS/logout">SAM portal</a></li>
                        <li><a class="nav-link" target="_blank" href="https://www.myworkday.com/dell/d/home.htmld">Work Day</a></li>
                        <li><a class="nav-link" target="_blank" href="https://icoe.corp.emc.com/classifiedmainpage">Classified portal</a></li>
                        <li><a class="nav-link" target="_blank" href="https://portal0012.globalview.adp.com/gvfrmwk3/emc.home#/areaaboutme">Global view</a></li>
                        <li><a class="nav-link" target="_blank" href="https://emc.moveinsync.com/EMCBlr/employee.jsp#EmployeeLogin">MoveInSync Cab</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a class="nav-link" target="_blank" href="http://intranet.dell.com/it/Operations/MIM/Lists/Submit%20a%20MIM%20Alert%20Task%20Production/New_MIMA.aspx">MIM<span class="sr-only">(current)</span></a>
                </li>           
                <li class="dropdown">
                    <a href="#" class="nav-link dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">VCE<span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <li><a class="nav-link" target="_blank" href="../HLA - ACT and xACT 4.0 PROD - FINAL.PDF">ARC Digram</a></li>
                        <li><a class="nav-link" target="_blank" href="../C3 HLA 5_17 prodv3.pdf">C3 HLA Digram</a></li>
                        <li><a class="nav-link"  target="_blank" href="../HTMl.htm" >xACT Application Details</a></li>  
                        <li><a class="nav-link"  target="_blank" href="../ACT_ApplicationDetails.htm">ACT Application Details</a></li>
                        <li><a class="nav-link" target="_blank" href="https://xact.emc.com/act/dct">Advanced Configuration Tool (ACT)</a></li>
                        <li><a class="nav-link" target="_blank" href="https://xact.emc.com/dnm/design-base-app/workspace.my-designs">xACT Black</a></li>
                        <li><a class="nav-link" target="_blank" href="https://xact.emc.com/dnm/dea/#/designElement">xACT Blue</a></li>
                        <li><a class="nav-link" target="_blank" href="https://xact.emc.com/BOE/BI">XACT-BOBJ application</a></li>
                        <li><a class="nav-link" target="_blank" href="https://c3.admin.vce.com/c3/admin-app/active">C3-Customer Configuration Center (Admin application)</a></li>
                        <li><a class="nav-link" target="_blank" href="https://wiki.ent.vce.com/dashboard.action">Wiki application</a></li>
                        <li><a class="nav-link" target="_blank" href="http://vcerpconfig03.isus.emc.com:1100/logviewer/applogs.jsp">Server urls</a></li>
                        <li><a class="nav-link" target="_blank" href="https://xact.emc.com/dnm/design-base-app/workspace.my-designs">ACT- Design based(Black application)</a></li>
                        <li><a class="nav-link" target="_blank" href="https://zabbix.isus.emc.com/dashboard.php">Zabbix</a></li>
                        <li><a class="nav-link" target="_blank" href="https://rpm.newrelic.com/accounts/1471659/applications">New Relic</a></li>
                        <li class="dropdown-submenu"><a class="nav-link dropdown-toggle" href="#">Patching URLs</a>
                            <ul class="dropdown-menu">
                                <li><a class="nav-link" target="_blank" href="https://patchweb.corp.emc.com/windows/Servers_Windows_Client_Accesslist.asp">Windows</a></li>
                                <li><a class="nav-link" target="_blank" href="https://patchweb.corp.emc.com/rhel/Servers_Production_RHEL_Client_Accesslist.asp">Linux</a></li>
                                <li><a class="nav-link" target="_blank" href="https://it.one.dell.com/sites/ITOps_RiskManagement/_layouts/15/start.aspx#/">Patching Dates</a></li>
                            </ul>
                        </li>
                        <li><a class="nav-link" target="_blank" href="https://c3.vce.com/survey-design-app/surveys/list">C3-Customer Configuration Center (Survey configuration tool)</a></li>
                        <li><a class="nav-link" target="_blank" href="https://rpm.newrelic.com/public/charts/2nq9M9y8Luo">Thread Monitor vcerpcommon01</a></li>
                        <li><a class="nav-link" target="_blank" href="http://act-healthcheck.cec.lab.emc.com/healthcheck/">Health check </a></li>
                        <li><a class="nav-link" target="_blank" href="http://10.105.0.20:900/">DMZ Firewall access</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="nav-link dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Remote Desktop<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <asp:LinkButton CssClass="nav-link" ID="ser1" OnClick="ser1_ServerClick" runat="server">vcegsprdterm01.corp.emc.com</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="nav-link" ID="rd2" OnClick="ser1_ServerClick" runat="server">vcegsprdterm02.corp.emc.com</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="nav-link" ID="rd3" OnClick="ser1_ServerClick" runat="server">vcegsprdterm03.corp.emc.com</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="nav-link" ID="rd4" OnClick="ser1_ServerClick" runat="server">vce-wpconfapp01.corp.emc.com</asp:LinkButton></li>
                        <li>
                            <asp:LinkButton CssClass="nav-link" ID="rd5" OnClick="ser1_ServerClick" runat="server">Pega-Internal.corp.emc.com </asp:LinkButton></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="nav-link dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Pega IMS & NSP<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-submenu"><a class="nav-link dropdown-toggle" href="#">LogViewer</a>
                            <ul class="dropdown-menu">
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd01.isus.emc.com:8453/logviewer/8443.jsp">IMS01</a></li>
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd02.isus.emc.com:8453/logviewer/8443.jsp">IMS02</a></li>
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd03.isus.emc.com:8453/logviewer/8443.jsp">IMS03</a></li>
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd04.isus.emc.com:8453/logviewer/8443.jsp">IMS04</a></li>
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd05.isus.emc.com:8453/logviewer/8443.jsp">IMS05</a></li>
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd06.isus.emc.com:8453/logviewer/8443.jsp">IMS06</a></li>
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd07.isus.emc.com:8453/logviewer/8443.jsp">IMS07</a></li>
                                <li><a class="nav-link" target="_blank" href="https://bpmappprd08.isus.emc.com:8453/logviewer/8443.jsp">IMS08</a></li>
                            </ul>
                        </li>
                        <li><a class="nav-link" href="www.google.com">Time Converter</a></li>

                        <li><a class="nav-link" target="_blank" href="https://bpmappdev01.isus.emc.com:8443/prweb/PRServlet">IMS Development</a></li>
                        <li><a class="nav-link" target="_blank" href="https://bpmappstg01.isus.emc.com:8443/prweb/PRServlet">IMS Stage</a></li>
                        <li><a class="nav-link" target="_blank" href="https://bpmappprf01.isus.emc.com:8443/prweb/PRServlet">IMS Performance</a></li>
                        <li><a class="nav-link" target="_blank" href="https://bpmapptst01.isus.emc.com:8443/prweb/PRServlet">IMS Test</a></li>
                        <li><a class="nav-link" target="_blank" href="https://bpmappprd01.isus.emc.com:8443/prweb/PRServlet">IMS Production</a></li>
                        <li><a class="nav-link" target="_blank" href="https://emcservice.my.salesforce.com/00Oj0000000bnIe">SFDC OMNI Presence Report</a></li>
                        <li><a class="nav-link" target="_blank" href="https://nasappdev02.isus.emc.com:8443/prweb/PRServlet">NSP Devlopment</a></li>
                        <li><a class="nav-link" target="_blank" href="https://nasapptst02.isus.emc.com:8443/prweb/PRServlet">NSP Test</a></li>
                        <li><a class="nav-link" target="_blank" href="https://nasappprf02.isus.emc.com:8443/prweb/PRServlet">NSP Performance</a></li>
                        <li><a class="nav-link" target="_blank" href="https://nasappprd01.isus.emc.com:8443/prweb/PRServlet/">NSP Production</a></li>
                        <li><a class="nav-link" target="_blank" href="https://supportportal.cfcp.isus.emc.com/index.html#/portal/dashboard/">AIC support portal link</a></li>

                    </ul>
                </li>


                <li class="dropdown"><a href="#" class="nav-link  dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Pega KPI<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="nav-link" target="_blank" href="http://corpusclb2b1.corp.emc.com/pegadashboard/Queues.aspx">KPI Dashboard</a></li>
                        <li><a class="nav-link" target="_blank" href="http://durclb2bprd01/PegaDashboard/Notifications.aspx">KPI Dashboard New Link</a></li>
                        <li><a class="nav-link" target="_blank" href="https://bpmappprf09.isus.emc.com:8443/prweb/PRServlet">Alert and Exception</a></li>
                        <li><a class="nav-link" target="_blank" href="https://corperoom02.corp.emc.com/eRoom/MandA/iBPAPegaCOE">Eroom link</a></li>
                    </ul>
                </li>

                <li class="dropdown"><a href="#news" class="nav-link  dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Contacts<span class="caret"></span></a>
                    <ul class="dropdown-menu">


                        <li><a class="nav-link" href="#table1" id="Cvce" onclick="tab(this)">VCE Contacts</a></li>
                        <li><a class="nav-link" href="#table2" id="Cpega" onclick="tab(this)">Pega Contacts</a></li>
                        <li><a class="nav-link" href="#table3" id="Czabbix" onclick="tab(this)">Zabbix Contacts</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <asp:LinkButton ID="LinkButton23" CssClass="nav-link" runat="server" OnClick="LinkButton23_Click">Shift Roster</asp:LinkButton>
                </li>
            </ul>

            <asp:ScriptManager ID="ScriptManager1" runat="server"
                EnablePageMethods="true">
            </asp:ScriptManager>

            <asp:TextBox CssClass="search-query span2" placeholder="Search" ID="txtContactsSearch" runat="server" onvaluechanged="txtContactsSearch_ValueChanged" OnTextChanged="Button1_Click1" AutoPostBack="true"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender ServiceMethod="SearchCustomers"
                MinimumPrefixLength="2"
                CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                TargetControlID="txtContactsSearch"
                ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false">
            </ajaxToolkit:AutoCompleteExtender>
            &nbsp;&nbsp;
            <div>
                <asp:Image ID="Image1" runat="server" CssClass="im" ImageUrl="~/Del.png" />
            </div>

            <asp:Button ID="Button1" class="btn btn-outline-primary my-2 my-sm-0" runat="server" Visible="false" Text="Search" OnClick="Button1_Click1" />


        </nav>
        <br />
        <br />
        <asp:Panel ID="roster" runat="server" Visible="false">
            <div>
                 <td>
                <asp:LinkButton CssClass="navbar-nav" runat="server" ID="LinkButton1" Text="HOME" href="./home.aspx" BorderColor="White" Font-Bold="false"  ForeColor="White" OnClick="LinkButton1_Click">
                   
                </asp:LinkButton>

            </td>&nbsp;&nbsp;
               

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


        <div id="table1" style="display: none">

            <td>
                <asp:LinkButton CssClass="navbar-nav" runat="server" ID="LinkButton27" Text="HOME" href="./home.aspx" BorderColor="SpringGreen" Font-Bold="false">
                       
                </asp:LinkButton>

            </td>

            <table style="width: 100%" class="table-inverse table-bordered table-sm">

                <tr>
                    <th id="h1" style="color: white; font-size: 20px">VCE contacts</th>
                </tr>
                <tr>
                    <th>Application</th>
                    <th>Assignment Group</th>
                    <th>DL details</th>
                    <th>Comments</th>
                </tr>
                <tr>
                    <td>Global Shop </td>
                    <td>EngIT App VCE Manufacturing</td>
                    <td></td>
                    <td>Reference incident INC4932331 INC4972871 </td>

                </tr>

                <tr>
                    <td>Act application access</td>
                    <td>
                        <a href="mailto:DealDesk@vce.com">DealDesk@vce.com</a>
                        <%--<td>DealDesk@vce.com</td>--%></td>
                    <td>Refer the Email send for Template with subject line "Template for ACT access" </td>

                </tr>

                <tr>
                    <td rowspan="3">Act application Opportunity ID</td>
                    <td>OpsIT Cloud - Platform Middleware Services</td>
                    <td>Middle ware - SO GSOC CloudOps Middleware  
                   <a href="mailto:SO.GSOC.CloudOps.Middleware@emc.com">SO.GSOC.CloudOps.Middleware@emc.com</a>
                    </td>
                    <td rowspan="2">
                        <a target="_blank" href="http://vcerpcommon01:9091/sfdc-lookup-service/info">SFDC lookup service node check</a>
                        <br>
                        <a target="_blank" href="http://vcerpcommon01.isus.emc.com:1100/logviewer/applogs.jsp?sort=1&dir=%2Fapps%2Fdata%2Fvmware%2Fapplogs%2Fsfdclookup">SFDC lookup service Log Check 
                    </td>

                    <tr>
                        <td>
                            <a href="mailto:VCE.Ebro@vce.com">L3 Team - VCE.Ebro@vce.com </a>

                            <%--<a> L3 Team - VCE.Ebro@vce.com </a></td>--%> 
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <%-- <td>Network team: ITSO_CC_Network_All@emc.com --%>
                            <a href="mailto:Network team: ITSO_CC_Network_All@emc.com">Network team: ITSO_CC_Network_All@emc.com</a>
                            <br>
                            <pre></pre>
                            <%--Infrastructure Team : SO.GSOC.CloudOps.Infrastructure@emc.com--%>
                            <a href="mailto:Infrastructure Team : SO.GSOC.CloudOps.Infrastructure@emc.com">Infrastructure Team : SO.GSOC.CloudOps.Infrastructure@emc.com</a>
                            <br>
                            <pre></pre>
                            <%--For windows team: SO GSOC CloudOps Windows SO.GSOC.CloudOps.Windows@emc.com --%>
                            <a href="mailto: windows team: SO GSOC CloudOps Windows SO.GSOC.CloudOps.Windows@emc.com">windows team: SO GSOC CloudOps Windows SO.GSOC.CloudOps.Windows@emc.com</a>
                            <br>
                            <pre></pre>
                            <%--For Linux : SO GSOC CloudOps Linux SO.GSOC.CloudOps.Linux@emc.com--%>

                            <a href="mailto:Linux : SO GSOC CloudOps Linux SO.GSOC.CloudOps.Linux@emc.com-">Linux : SO GSOC CloudOps Linux SO.GSOC.CloudOps.Linux@emc.com-</a>
                            <br>
                            <pre></pre>
                            <%--Tools management : ITSO CC Tools Management (All) ITSO_CC_Tools_Management_All@emc.com--%>

                            <a href="mailto:Tools management : ITSO CC Tools Management (All) ITSO_CC_Tools_Management_All@emc.com">Tools management : ITSO CC Tools Management (All) ITSO_CC_Tools_Management_All@emc.com</a>
                            <br>
                            <pre></pre>
                            <%--SFDC L2 : SFDCSalesTeam-L2 <sfdcsalesteam.l2@emc.com>--%>
                            <a href="mailto:SFDC L2 : SFDCSalesTeam-L2">SFDC L2 : SFDCSalesTeam-L2</a>
                            <br>
                            <pre></pre>
                            <%-- VCE - Salesforce Admins SalesforceAdmins@vce.com--%>
                            <a href="mailto:SalesforceAdmins@vce.com">VCE - Salesforce Admins</a>
                            <br>
                            <pre></pre>
                            <%--DBA team - DBA DBA_@emc.com--%>
                            <a href="mailto:DBA DBA_@emc.com">DBA DBA_@emc.com</a>
                        </td>
                        <td></td>
                    </tr>

                </tr>

                <tr>
                    <td>Act Application - SKU details,Partner and distributor</td>
                    <td>EngIT app VCE ACT</td>
                    <td>
                        <asp:LinkButton runat="server" ID="LinkButton11" Text="L3 Team-VCE.Ebro@vce.com" OnClientClick="window.open('mailto:VCE.Ebro@vce.com',' VCE.Ebro@vce.com');">
                        </asp:LinkButton>
                    </td>
                    <td>Reference Incident
 <br>
                        INC5094262 - SKU
                        <br>
                        INC5107352 - Partner </td>
                </tr>

                <tr>
                    <td>C3 Application</td>
                    <td>EngIT App VCE ACT</td>
                    <%--<td>VCE Mississippi - VCE.Mississippi@vce.com <br>--%>
                    <td>
                        <a href="mailto:VCE.Mississippi@vce.com">VCE.Mississippi@vce.com</a>
                        <br>
                        <pre></pre>
                        <%--CPSD CSE ShockAbsorber - CPSDCSEShockAbsorber@vce.com --%>
                        <a href="mailto:CPSDCSEShockAbsorber@vce.com">CPSD CSE ShockAbsorber</a>
                        <br>
                        <pre></pre>
                        <%--VCE.Trinity@vce.com--%>
                        <a href="mailto:VCE.Trinity@vce.com">VCE Trinity</a>
                    </td>
                    <td>Reference Incident - INC4931505
                        <br>
                        INC5125405
                        <br>
                        <br>
                        <a target="_blank" href="http://vcec3appprd01.isus.emc.com:8080/logviewer/c3_std.jsp">C3 log check - vcec3appprd01 (10.105.14.90) </a>
                        <br>
                        <a target="_blank" href="http://vcec3appprd02.isus.emc.com:8080/logviewer/c3_std.jsp">C3 log check - vcec3appprd02 (10.105.14.91) </a>
                        <br>
                    </td>
                </tr>

                <tr>
                    <td>BOBJ - Act apploaction</td>
                    <td>OpsIT Cloud BI MSP Tier2 (Product - SAP BI - BOBJ )</td>
                    <td></td>
                    <td>Reference Incident INC5131373</td>

                </tr>


            </table>


        </div>

        <pre>

</pre>

        <div id="table2" style="display: none">
            <td>
                <asp:LinkButton CssClass="navbar-nav" runat="server" ID="LinkButton26" Text="HOME" href="./home.aspx" BorderColor="SpringGreen" Font-Bold="false">
                       
                </asp:LinkButton>

            </td>

            <table style="width: 100%" class="table-inverse table-bordered table-sm">
                <tr>
                    <th id="Th1" style="color: white; font-size: 20px">Pega contacts</th>
                </tr>
                <tr>
                    <th>Team</th>
                    <th>Assignment Group</th>
                    <th>DL details</th>
                    <th>Configuration Item</th>
                    <th>Product</th>
                </tr>


                <tr>
                    <td>Service Cloud</td>
                    <td>ITOPS-APP-SALESFORCE-SERVICE</td>
                    <td>SALESFORCE (EMC) - Customer Service</td>
                    <td>

                        <a href="mailto:service.cloud.team@emc.com">service.cloud.team@emc.com</a>
                        <%--<td>service.cloud.team@emc.com</td>--%>
                        <td>SALESFORCE (EMC) - Customer Service</td>
                </tr>
                <tr>
                    <td>Middleware Team</td>
                    <td>OpsIT Cloud - Platform Middleware Services</td>
                    <%--<td>SO.GSOC.CloudOps.Middleware@emc.com</td>--%>
                    <a href="mailto:SO.GSOC.CloudOps.Middleware@emc.com">SO.GSOC.CloudOps.Middleware@emc.com</a>
                    <td>OpsIT Cloud - Platform Middleware Services</td>
                    <td></td>
                </tr>


                <tr>
                    <td>AIC</td>
                    <td>CIC INTEGRATION</td>
                    <td>AIC - IPAAS</td>
                    <%--<td>so.gsoc.cloudops.integrations@emc.com</td>--%>
                    <a href="mailto:so.gsoc.cloudops.integrations@emc.com">so.gsoc.cloudops.integrations@emc.com</a>
                    <td>AIC - CASE SERVICE CRM</td>
                </tr>

                <tr>
                    <td>BDL</td>
                    <td>OpsIT Cloud Data Lake MSP Tier2</td>
                    <td>Business Data Lake (BDL)</td>
                    <%--<td>bdl.triage.support@emc.com</td>--%>
                    <a href="mailto:bdl.triage.support@emc.com">bdl.triage.support@emc.com</a>
                    <td>Business Data Lake (BDL)</td>
                </tr>

                <tr>
                    <td>OLS</td>
                    <td>OpsIT App CS Web</td>
                    <td>SUPPORT.EMC.COM</td>
                    <%--<td>ols.dl@emc.com</td>--%>
                    <a href="mailto:ols.dl@emc.com">ols.dl@emc.com</a>
                    <td>SUPPORT.EMC.COM</td>
                </tr>

                <tr>
                    <td>SABA</td>
                    <td></td>
                    <%--<td>rajkamal.lakra@emc.com</td>--%>
                    <a href="mailto:rajkamal.lakra@emc.com">rajkamal.lakra@emc.com</a>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>SwarmIssue/Oracle/Wipro Mapping</td>
                    <td></td>

                    <a href="mailto:pega.ims@emc.com">pega.ims@emc.com</a>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>SR Notifications/CRU Shipment Notification/Onsite Field Notifications</td>
                    <td></td>
                    <a href="mailto:pega.nsp@emc.com">pega.nsp@emc.com</a>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Oracle 11i</td>
                    <td></td>
                    <td>ORACLE 11I APPLICATIONS - FIELD SERVICE</td>
                    <td>OpsIT app Oracle 11i CS Tier_2.0</td>
                    <td>ORACLE 11I APPLICATIONS - FIELD SERVICE</td>
                    <td></td>
                </tr>
            </table>
            <pre>

</pre>

        </div>


        <div id="table3" style="display: none">

            <td>
                <asp:LinkButton CssClass="navbar-nav" runat="server" ID="LinkButton28" Text="HOME" href="./home.aspx" BorderColor="SpringGreen" Font-Bold="false">
                       
                </asp:LinkButton>

            </td>

            <table style="width: 100%" class="table-inverse table-bordered table-sm">


                <tr>
                    <th id="Th2" style="color: white; font-size: 20px">Zabbix Alert</th>
                </tr>
                <tr>
                    <th>Server Name</th>
                    <th>Team</th>
                </tr>

                <tr>
                    <td>vcegsprdapp01
                        <br>
                        vcegsprdterm01
                        <br>
                        vcegsprdterm02
                        <br>
                        vcegsprdterm01
                        <br>
                        vcegsprdterm02 </td>
                    <%--<td>Middleware Team - SO.GSOC.CloudOps.Middleware@emc.com </td>--%>
                    <td>
                        <asp:LinkButton runat="server" ID="LinkButton21" Text="Middleware Team - SO.GSOC.CloudOps.Middleware@emc.com" OnClientClick="window.open('mailto:Middleware Team - SO.GSOC.CloudOps.Middleware@emc.com','Middleware Team - SO.GSOC.CloudOps.Middleware@emc.com');">
                        </asp:LinkButton></td>
                </tr>

                <tr>
                    <td>vcec3mgoprd01
                        <br>
                        vcec3mgoprd02
                        <br>
                        vcec3mgoprd03
                        <br>
                        vcec3mgoprd04
                        <br>
                        vcec3mgoprd05 </td>
                    <%--<td>Big Data Platform team - BigDataPlatforms@emc.com  
</td>--%>
                    <td>
                        <asp:LinkButton runat="server" ID="LinkButton22" Text="Big Data Platform team - BigDataPlatforms@emc.com " OnClientClick="window.open('mailto:Big Data Platform team - BigDataPlatforms@emc.com ','Big Data Platform team - BigDataPlatforms@emc.com ');">
                        </asp:LinkButton></td>
                </tr>



            </table>

            <pre>


</pre>
        </div>


        <div id='myenDiv' visible="false" runat="server">

            <asp:Label ID="Label2" CssClass="navbar-text" runat="server" Text="Please enter Info Below to connect to remote session" onclick="ser1_ServerClick" BackColor="#003366" ForeColor="White"></asp:Label><br />
            <br />
            <asp:TextBox CssClass="text-primary" ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox><br />
            <br />
            <asp:TextBox CssClass="text-primary" ID="TextBox2" type="password" placeholder="Password" runat="server"></asp:TextBox><br />
            <br />
            <asp:Button CssClass="btn btn-primary my-2 my-sm-0" ID="Button2" runat="server" Text="Launch" OnClick="Button2_Click" />

        </div>
        <asp:Label ID="Label1" CssClass="navbar-text" runat="server" Name="txt" Text="Click the link" Style="display: none;" onclick="ser1_ServerClick" BackColor="#003366" ForeColor="White" BorderStyle="Solid" BorderColor="#003366"></asp:Label>

    </form>


</body>
</html>
