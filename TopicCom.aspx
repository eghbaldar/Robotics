<%@ Page Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="TopicCom.aspx.vb" Inherits="TopicCom" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" 
        DataSourceID="SqlDataSource1" Width="832px">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        <asp:Label ID="title_newsLabel" runat="server" 
                            style="font-size: 13px; font-family: Tahoma; font-weight: 700" 
                            Text='<%# Eval("title_news") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="newsLabel" runat="server" 
                            style="font-family: Tahoma; font-size: 11px" Text='<%# Eval("news") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="tarikhLabel" runat="server" 
                            style="color: #3E626E; font-family: Tahoma; font-size: 10px" 
                            Text='<%# Eval("tarikh") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ModulesConnectionString %>" 
        SelectCommand="SELECT * FROM [Tbl_Topic] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>

