<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="MultiColumn_Preview" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors"  TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dxwp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>How to show several data columns in the ASPxGridView's Preview row</title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [Categories]">
        </asp:AccessDataSource>
        &nbsp; &nbsp;&nbsp;
        <dxwgv:ASPxGridView ID="grid" runat="server" Width="645px" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" ClientInstanceName="grid" PreviewFieldName="CategoryID">
            <Columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0">
                    <EditButton Visible="True">
                    </EditButton>
                </dxwgv:GridViewCommandColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" />
            <Settings ShowFilterRow="True" ShowGroupedColumns="True" ShowPreview="True"/>
            <Templates>
                <PreviewRow>
                    <table style="width: 100%; height: 100%; border-top-width: thin; border-left-width: thin; border-left-color: black; border-bottom-width: thin; border-bottom-color: black; border-top-color: black; border-right-width: thin; border-right-color: black;">
                        <tr>
                            <td style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid; width: 111px; border-bottom: black thin solid; height: 46px">
                            <%#Eval("CategoryName")%>
                            </td>
                            <td style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid; border-bottom: black thin solid; height: 46px">
                            <%#Eval("Description")%>
                            </td>
                        </tr>
                    </table>
                </PreviewRow>
            </Templates>
        </dxwgv:ASPxGridView>
    </form>
    
</body>
</html>