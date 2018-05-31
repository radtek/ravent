<%@ Page Title="" Language="C#" MasterPageFile="~/Raha.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="Raha.Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="VcePanel" runat="server" Visible="false">



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
                <%--<td>VCE Mississippi - gsad.c3.hydra@emc.com <br>--%>
                <td>
                    <a href="mailto:gsad.c3.hydra@emc.com">gsad.c3.hydra@emc.com</a>
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



    </asp:Panel>

    <pre>

</pre>
    <asp:Panel ID="PegaPanel" runat="server" Visible="false">

        <%--<td>
                <asp:LinkButton CssClass="navbar-nav" runat="server" ID="LinkButton26" Text="HOME" href="./home.aspx" BorderColor="SpringGreen" Font-Bold="false">
                       
                </asp:LinkButton>

            </td>--%>

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

                    <a href="mailto:service.cloud.team@emc.com">service.cloud.team@emc.com</a> </td>
                <%--<td>service.cloud.team@emc.com</td>--%>
                <td>SALESFORCE (EMC) - Customer Service</td>
            </tr>
            <tr>
                <td>Middleware Team</td>
                <td>OpsIT Cloud - Platform Middleware Services</td>
                <%--<td>SO.GSOC.CloudOps.Middleware@emc.com</td>--%>
                <td><a href="mailto:SO.GSOC.CloudOps.Middleware@emc.com">SO.GSOC.CloudOps.Middleware@emc.com</a></td>
                <td>OpsIT Cloud - Platform Middleware Services</td>
                <td></td>
            </tr>


            <tr>
                <td>AIC</td>
                <td>CIC INTEGRATION</td>
                <td>AIC - IPAAS</td>
                <%--<td>so.gsoc.cloudops.integrations@emc.com</td>--%>
                <td><a href="mailto:so.gsoc.cloudops.integrations@emc.com">so.gsoc.cloudops.integrations@emc.com</a></td>
                <td>AIC - CASE SERVICE CRM</td>
            </tr>

            <tr>
                <td>BDL</td>
                <td>OpsIT Cloud Data Lake MSP Tier2</td>
                <td>Business Data Lake (BDL)</td>
                <%--<td>bdl.triage.support@emc.com</td>--%>
                <td><a href="mailto:bdl.triage.support@emc.com">bdl.triage.support@emc.com</a></td>
                <td>Business Data Lake (BDL)</td>
            </tr>

            <tr>
                <td>OLS</td>
                <td>OpsIT App CS Web</td>
                <td>SUPPORT.EMC.COM</td>
                <%--<td>ols.dl@emc.com</td>--%>
                <td><a href="mailto:ols.dl@emc.com">ols.dl@emc.com</a></td>
                <td>SUPPORT.EMC.COM</td>
            </tr>

            <tr>
                <td>SABA</td>
                <td></td>
                <%--<td>rajkamal.lakra@emc.com</td>--%>
                <td><a href="mailto:rajkamal.lakra@emc.com">rajkamal.lakra@emc.com</a></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>SwarmIssue/Oracle/Wipro Mapping</td>
                <td></td>

                <td><a href="mailto:pega.ims@emc.com">pega.ims@emc.com</a></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td>SR Notifications/CRU Shipment Notification/Onsite Field Notifications</td>
                <td></td>
                <td><a href="mailto:pega.nsp@emc.com">pega.nsp@emc.com</a></td>
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


    </asp:Panel>
    <asp:Panel ID="ZabbixPanel" runat="server" Visible="false">



        <%--<td>
                <asp:LinkButton CssClass="navbar-nav" runat="server" ID="LinkButton28" Text="HOME" href="./home.aspx" BorderColor="SpringGreen" Font-Bold="false">
                       
                </asp:LinkButton>

            </td>--%>

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
                    shoft
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

    </asp:Panel>

</asp:Content>
