<%@ Page Title="" Language="C#" MasterPageFile="~/Raha.Master" AutoEventWireup="true" CodeBehind="ActApplicationDetails.aspx.cs" Inherits="Raha.ActApplicationDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="ACTPanel" runat="server" Visible="false">

        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta name="ProgId" content="Excel.Sheet">
        <meta name="Generator" content="Microsoft Excel 15">
        <link rel="File-List" href="Act_Application%20Details_files/filelist.xml">
        <style id="Book1_14219_Styles">
            <!-- table {
                mso-displayed-decimal-separator: "\.";
                mso-displayed-thousand-separator: "\,";
            }

            .font514219 {
                color: white;
                font-size: 11.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
            }

            .xl1514219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 11.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: bottom;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: nowrap;
            }

            .xl6314219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 11.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: middle;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: nowrap;
            }

            .xl6414219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: white;
                font-size: 12.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: center;
                vertical-align: middle;
                border: .5pt solid windowtext;
                background: #305496;
                mso-pattern: black none;
                white-space: nowrap;
            }

            .xl6514219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 11.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: bottom;
                background: #305496;
                mso-pattern: black none;
                white-space: nowrap;
            }

            .xl6614219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: center;
                vertical-align: middle;
                border: .5pt solid windowtext;
                background: #BDD7EE;
                mso-pattern: black none;
                white-space: normal;
            }

            .xl6714219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: #C65911;
                font-size: 10.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl6814219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: middle;
                border: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl6914219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: 1.0pt solid windowtext;
                border-bottom: .5pt solid windowtext;
                border-left: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl7014219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: #C65911;
                font-size: 10.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border: .5pt solid windowtext;
                background: white;
                mso-pattern: black none;
                white-space: normal;
            }

            .xl7114219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: windowtext;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: middle;
                border: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl7214219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: windowtext;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: 1.0pt solid windowtext;
                border-bottom: .5pt solid windowtext;
                border-left: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl7314219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: red;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: middle;
                border: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl7414219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: 1.0pt solid windowtext;
                border-bottom: 1.0pt solid windowtext;
                border-left: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl7514219 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: middle;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: nowrap;
            }
            -->
        </style>
        <div id="Book1_14219" align="center" x:publishsource="Excel">

            <table border="0" cellpadding="0" cellspacing="0" width="1433" class="xl6314219"
                style='border-collapse: collapse; table-layout: fixed; width: 1076pt;background-color:white'>
                <col class="xl7514219" width="183" style='mso-width-source: userset; mso-width-alt: 6400; width: 138pt'>
                <col class="xl6314219" width="731" style='mso-width-source: userset; mso-width-alt: 25530; width: 549pt'>
                <col width="227" span="2" style='mso-width-source: userset; mso-width-alt: 7912; width: 170pt'>
                <tr height="21" style='height: 15.5pt'>
                    <td colspan="2" class="xl6414219">ACT - Related Apps</td>
                    <td class="xl6514219"><span style='mso-spacerun: yes'></span><font
                        class="font514219">Server Details</font></td>
                    <td class="xl6514219"><span style='mso-spacerun: yes'></span><font class="font514219">IP Address</font></td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6614219" width="183" style='border-top: none; width: 138pt'>Application</td>
                    <td class="xl6614219" width="731" style='border-top: none; border-left: none; width: 549pt'>Application Description</td>
                    <td class="xl6614219" width="227" style='border-left: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6614219" width="227" style='border-left: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>Arena Import</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- For Creating/Updating Arena SKUs information using PDX Files.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>VCERPACTRPT01</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.75</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>act</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- ACT is a web application basically used for creating
  Configurations, Quote creation, Order submission, Placing order to OMS.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>VCERPACTAPP01 to VCERPACTAPP06</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.105.14.147
  to10.105.14.152</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl7014219" width="183" style='border-top: none; width: 138pt'>agskus</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- For Creating/Updating EMC,CISCO,VMWARE SKUs related details
  like Class, Discount etc.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>VCERPACTRPT01</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.75</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>blade-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Expose rest end point<span style='mso-spacerun: yes'> 
                    </span>for managing<span style='mso-spacerun: yes'>  </span>Blade SKU's</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>bundle-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Expose rest end point<span style='mso-spacerun: yes'> 
                    </span>for managing<span style='mso-spacerun: yes'>  </span>Bundle SKU's</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>common-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Expose rest end point<span style='mso-spacerun: yes'> 
                    </span>for fetching data which are common for both ACT/xACT application like
  retrieving acquisition type, country regions details, loading/fetching
  details from Gemfire cache</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerpcommon01-vcerpcommon03</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.79;10.146.136.93;10.146.136.212<span
                        style='mso-spacerun: yes'> </span></td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>common-security-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Exposes rest end point for authorization and authentication.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerpcommon01-vcerpcommon03</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.79;10.146.136.93;10.146.136.212<span
                        style='mso-spacerun: yes'> </span></td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>config-misc-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Exposes rest end points to retrieve contingency skus,vendor
  sku category ,Manufacturing and handling Sku.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerpconfig01-vcerpconfig02-vcerpconfig03</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.80;10.146.136.91;10.146.136.92</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>configuration-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Exposes rest end points for creating config-groups, scenario,
  retrieve noteSku, vision sku etc.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerpconfig01-vcerpconfig02-vcerpconfig03</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.80;10.146.136.91;10.146.136.92</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>note-sku-service</td>
                    <td class="xl7114219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Service used to provide &amp; add note skus to the BOM. This
  is just for information purpose.</td>
                    <td class="xl7214219" width="227" style='border-top: none; border-left: none; width: 170pt'>&nbsp;</td>
                    <td class="xl7214219" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>oms-web</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- OMS(order management service ) is a web application where you
  can manage SKU, SKU Quantity, Adding to OMS BOM,<br>
                        Edit shipment details, and you can manage status of the order</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>VCERPACTAPP13, VCERPACTAPP15</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.104.188.117,10.104.188.119</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>order-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Exposes rest end point to manage Order related Operations.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerporder01-vcerporder02-vcerporder03</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.106.210.11;10.146.136.83;10.146.136.84</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>order-services</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Exposes rest end points for order related operation like order
  creation, retrieve order BOM, retrieve order discount template and creating
  order types.<span style='mso-spacerun: yes'> </span></td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerporder02-03</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.83-10.146.136.84</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>pricing-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Exposes rest end point for pricing related service like
  retrieving discounts template, and fetching SKU related information,
                    <br>
                        parents part details, discount class related details.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerppricing01-03</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.85-87</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>pricingadmin-ui</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- It is a web application used to maintain discount template,
  discount class<span style='mso-spacerun: yes'> </span></td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>quote-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Expose rest end points for Quote Related operation like saving
  and finalizing Quotes.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerpquote01-03<br>
                    </td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.88-90</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>security-business-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Exposes Rest end point for authorization and authentication.</td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>vcerpmwdrool01</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.106.210.19</td>
                </tr>
                <tr height="0" style='display: none'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>service-locator</td>
                    <td class="xl7314219" width="731" style='border-top: none; border-left: none; width: 549pt'>Currently not<span style='mso-spacerun: yes'> </span></td>
                    <td class="xl6914219" width="227" style='border-top: none; border-left: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6914219" width="227" style='border-top: none; width: 170pt'>10.146.136.90</td>
                </tr>
                <tr height="35" style='height: 26.5pt'>
                    <td class="xl6714219" width="183" style='border-top: none; width: 138pt'>sfdc-lookup-service</td>
                    <td class="xl6814219" width="731" style='border-top: none; border-left: none; width: 549pt'>- Expose rest service end point for SFDC related Details,
  responsible for fetching details like Opportunity,<br>
                        Product etc. details from SFDC<span style='mso-spacerun: yes'> </span></td>
                    <td class="xl7414219" width="227" style='border-top: none; border-left: none; width: 170pt'>VCERPACTSFDC01</td>
                    <td class="xl7414219" width="227" style='border-top: none; width: 170pt'>10.106.210.14</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6314219"></td>
                    <td class="xl6314219"></td>
                    <td class="xl1514219"></td>
                    <td class="xl1514219"></td>
                </tr>
                <![if supportMisalignedColumns]>
 <tr height="0" style='display: none'>
     <td width="65" style='width: 49pt'></td>
     <td width="183" style='width: 138pt'></td>
     <td width="731" style='width: 549pt'></td>
     <td width="227" style='width: 170pt'></td>
     <td width="227" style='width: 170pt'></td>
 </tr>
                <![endif]>
            </table>

        </div>
    </asp:Panel>
    <asp:Panel ID="XactPanel" runat="server" Visible="false">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta name="ProgId" content="Excel.Sheet">
        <meta name="Generator" content="Microsoft Excel 15">
        <link rel="File-List" href="New%20folder_files/filelist.xml">
        <style id="Act_xACT_Application Details_17156_Styles">
            <!-- table {
                mso-displayed-decimal-separator: "\.";
                mso-displayed-thousand-separator: "\,";
            }

            .font517156 {
                color: white;
                font-size: 11.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
            }

            .xl1517156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 11.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: bottom;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: nowrap;
            }

            .xl6317156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: center;
                vertical-align: middle;
                border: .5pt solid windowtext;
                background: #BDD7EE;
                mso-pattern: black none;
                white-space: normal;
            }

            .xl6417156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: #C65911;
                font-size: 10.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: .5pt solid windowtext;
                border-bottom: .5pt solid windowtext;
                border-left: 1.0pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl6517156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: 1.0pt solid windowtext;
                border-bottom: .5pt solid windowtext;
                border-left: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl6617156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: #C65911;
                font-size: 10.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: .5pt solid windowtext;
                border-bottom: .5pt solid windowtext;
                border-left: 1.0pt solid windowtext;
                background: white;
                mso-pattern: black none;
                white-space: normal;
            }

            .xl6717156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: windowtext;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: 1.0pt solid windowtext;
                border-bottom: .5pt solid windowtext;
                border-left: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl6817156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: #C65911;
                font-size: 10.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: .5pt solid windowtext;
                border-bottom: 1.0pt solid windowtext;
                border-left: 1.0pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl6917156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 10.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: left;
                vertical-align: middle;
                border-top: .5pt solid windowtext;
                border-right: 1.0pt solid windowtext;
                border-bottom: 1.0pt solid windowtext;
                border-left: .5pt solid windowtext;
                mso-background-source: auto;
                mso-pattern: auto;
                white-space: normal;
            }

            .xl7017156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: black;
                font-size: 11.0pt;
                font-weight: 400;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: general;
                vertical-align: bottom;
                background: #305496;
                mso-pattern: black none;
                white-space: nowrap;
            }

            .xl7117156 {
                padding-top: 1px;
                padding-right: 1px;
                padding-left: 1px;
                mso-ignore: padding;
                color: white;
                font-size: 12.0pt;
                font-weight: 700;
                font-style: normal;
                text-decoration: none;
                font-family: Calibri, sans-serif;
                mso-font-charset: 0;
                mso-number-format: General;
                text-align: center;
                vertical-align: middle;
                border: .5pt solid windowtext;
                background: #305496;
                mso-pattern: black none;
                white-space: nowrap;
            }
            -->
        </style>
        <div id="Act_xACT_Application Details_17156" align="center"
            x:publishsource="Excel">

            <table border="0" cellpadding="0" cellspacing="0" width="1633" style='border-collapse: collapse; table-layout: fixed; width: 1224pt; background-color: white'>

                <col width="228" style='mso-width-source: userset; mso-width-alt: 7959; width: 171pt'>
                <col width="887" style='mso-width-source: userset; mso-width-alt: 30952; width: 665pt'>
                <col width="227" span="2" style='mso-width-source: userset; mso-width-alt: 7912; width: 170pt'>
                <tr height="21" style='height: 15.5pt'>
                    <td colspan="2" class="xl7117156">ACT - Related Apps</td>
                    <td class="xl7017156"><span style='mso-spacerun: yes'></span><font
                        class="font517156">Server Details</font></td>
                    <td class="xl7017156"><span style='mso-spacerun: yes'></span><font
                        class="font517156">IP Address</font></td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6317156" width="228" style='border-top: none; width: 171pt'>Application</td>
                    <td class="xl6317156" width="887" style='border-top: none; border-left: none; width: 665pt'>Application Description</td>
                    <td class="xl6317156" width="227" style='border-left: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6317156" width="227" style='border-left: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>commercial-modeler-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage Systems, Commercial Model Group
  Modules. This service exposes rest endpoints to create system, duplicate
  system and to create commercial model group etc..,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp05-vcerpdnmapp07</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.70-10.146.136.72</td>
                </tr>
                <tr height="52" style='height: 39.0pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>composite-commercial-modeler-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage Systems, Commercial Model Group
  Modules. This service exposes rest endpoints to handle requests which needs
  to use multiple other XACT services.
                        <br>
                        Eg: to<span style='mso-spacerun: yes'>  </span>get systems of the commercial
  model group, to get model of the commercial model group etc.,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6617156" width="228" style='border-top: none; width: 171pt'>design-base-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage My Design module. This service
  exposes rest endpoints to create design, to get design groups of design, to
  publish design to library etc..,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp06-vcerpdnmapp08</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.71-10.146.136.73</td>
                </tr>
                <tr height="52" style='height: 39.0pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>composite-design-base-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage My Design module. This service
  exposes rest endpoints to handle requests which needs to use multiple other
  XACT services.
                        <br>
                        Eg:<span style='mso-spacerun: yes'>  </span>to get list of designs, to get
  top Level DE Product Families And Codes etc..,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp06-vcerpdnmapp08</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.71-10.146.136.73</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>modeler-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage<span style='mso-spacerun: yes'> 
                    </span>Models module.<span style='mso-spacerun: yes'>  </span>This service
  exposes rest endpoints to create model,<span style='mso-spacerun: yes'> 
  </span>duplicate model etc..,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp05-vcerpdnmapp07</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.70-10.146.136.72</td>
                </tr>
                <tr height="35" style='height: 26.0pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>composite-modeler-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage Models module. This service
  exposes rest endpoints to handle requests which needs to use multiple other
  XACT services.
                        <br>
                        Eg: to get list of models etc..,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp05-vcerpdnmapp07</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.70-10.146.136.72</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>de-admin-business-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage DE Admin module.<span
                        style='mso-spacerun: yes'>  </span>This service exposes rest endpoints to get
  list of DEs, to get list of personalities<span
      style='mso-spacerun: yes'> </span></td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp06-vcerpdnmapp08</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.71-10.146.136.73</td>
                </tr>
                <tr height="52" style='height: 39.0pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>composite-dea-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage DE Admin module.<span
                        style='mso-spacerun: yes'>  </span>This service exposes rest endpoints to
  handle requests which needs to use multiple other XACT services.
                        <br>
                        Eg: to get top level design elements etc..,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp06-vcerpdnmapp08</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.71-10.146.136.73</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>dnm-guidance-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage Guidance module. This service
  exposes rest endpoints to get Products, components of product in Match
  Product.</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmgde01-vcerpdnmgde02</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.81-10.146.136.82</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>notification-service</td>
                    <td class="xl6717156" width="887" style='border-top: none; border-left: none; width: 665pt'>- It is an xACT service, user to provide notifications or
  banners.</td>
                    <td class="xl6717156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6717156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>wizard-rules-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This is node js application,<span style='mso-spacerun: yes'> 
                    </span>used to manage wizards and wizard chaining<span
                        style='mso-spacerun: yes'> </span></td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp06-vcerpdnmapp08</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.71-10.146.136.73</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>wizard-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This service is used to manage Wizard module. This service
  exposes rest endpoints<span style='mso-spacerun: yes'>  </span>to get list of
  Wizards, create wizard etc..,</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp06-vcerpdnmapp08</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.71-10.146.136.73</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>xact-api-service</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- This is node js application, used for mobile clients</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>commercial-modeler-app</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- Web app for commercial model group module UI</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapi01-vcerpdnmapi02</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.106.210.112-10.106.210.113</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>design-base-app</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- Web app for My designs module UI</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp06-vcerpdnmapp08</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.71-10.146.136.73</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>design-library-app</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- Web app for Design library module UI</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>modeler-app</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- Web app for<span style='mso-spacerun: yes'>  </span>Models
  module UI</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>vcerpdnmapp05-vcerpdnmapp07</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>10.146.136.70-10.146.136.72</td>
                </tr>
                <tr height="19" style='height: 14.5pt'>
                    <td class="xl6417156" width="228" style='border-top: none; width: 171pt'>vsw-app</td>
                    <td class="xl6517156" width="887" style='border-top: none; border-left: none; width: 665pt'>- Web app for Design Groups module UI</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6517156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <tr height="20" style='height: 15.0pt'>
                    <td class="xl6817156" width="228" style='border-top: none; width: 171pt'>dea-ui</td>
                    <td class="xl6917156" width="887" style='border-top: none; border-left: none; width: 665pt'>- Web app for DE Admin UI</td>
                    <td class="xl6917156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                    <td class="xl6917156" width="227" style='border-top: none; width: 170pt'>&nbsp;</td>
                </tr>
                <![if supportMisalignedColumns]>
 <tr height="0" style='display: none'>
     <td width="228" style='width: 171pt'></td>
     <td width="887" style='width: 665pt'></td>
     <td width="227" style='width: 170pt'></td>
     <td width="227" style='width: 170pt'></td>
 </tr>
                <![endif]>
            </table>

        </div>

    </asp:Panel>
    
</asp:Content>
