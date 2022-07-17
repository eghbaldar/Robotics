<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="Topic.aspx.vb" Inherits="Topic" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CssClass="style2" DataKeyField="ID" 
        DataSourceID="SqlDataSource1" Width="832px">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td >
                        <asp:Label ID="title_newsLabel" runat="server" 
                            style="font-family: Tahoma; font-size: 13px; font-weight: 700; color: #6B7010" 
                            Text='<%# Eval("title_news") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lid_newsLabel" runat="server" 
                            style="font-family: Tahoma; font-size: 12px" Text='<%# Eval("lid_news") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# Eval("ID", "TopicCom.aspx?ID={0}") %>' 
                            style="font-family: Tahoma; font-size: 11px; color: #6CA5B7;text-decoration:none;">ادامه اطلاعیه 
                        ها...</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ModulesConnectionString %>" 
        SelectCommand="SELECT [ID], [title_news], [lid_news] FROM [Tbl_Topic] WHERE ([Flag] = @Flag) ORDER BY [ID] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Flag" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

