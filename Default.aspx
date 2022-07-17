<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>شرکت نوآوران روباتیک گیلان</title>
    <link rel="stylesheet" type="text/css" href="Content/CSS/css_ff.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="body">
        <div id="header">
        </div>
        <div id="menu">            
                <a href="default.aspx" class="cMnu"><div class="change">صفحه اصلی</div></a>          
                <a href="news.aspx" class="cMnu"><div class="change">اخبار</div></a>
                <a href="Topic.aspx" class="cMnu"><div class="change">اطلاعیه ها</div></a>
                <a href="About.aspx" class="cMnu"><div class="change">معرفی شرکت</div></a>
                <a href="contact.aspx" class="cMnu"><div class="change">تماس با ما</div></a>
        </div>
        <div id="center">
            <div id="about">
                <asp:Label ID="lblAboutCompany" runat="server" Text=""></asp:Label>
            </div>
            <div id="news_topic">
                <div id="news">
                    <div class="tt">
                        <a href="News.aspx" class="cMnu">اخبار</a></div>
                    <div class="content">
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                            Height="16px">
                            <ItemTemplate>
                                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("ID", "newscom.aspx?ID={0}") %>' 
                                    style="font-family: Tahoma; font-size: 11px;color:#0f6d73;text-decoration:none;" 
                                    Text='<%# Eval("title_news", "{0}") %>'></asp:HyperLink>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ModulesConnectionString %>" 
                            SelectCommand="SELECT top 10 [title_news], [ID] FROM [Tbl_News] WHERE ([Flag] = @Flag) order by id desc">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="Flag" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div id="topic">
                    <div class="tt">
                        <a href="Topic.aspx" class="cMnu">اطلاعیه ها</a></div>
                    <div class="content">
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
                            Height="16px">
                            <ItemTemplate>
                                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("ID", "topiccom.aspx?ID={0}") %>' 
                                    style="font-family: Tahoma; font-size: 11px;color:#0f6d73;text-decoration:none;" 
                                    Text='<%# Eval("title_news", "{0}") %>'></asp:HyperLink>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ModulesConnectionString %>" 
                            
                            SelectCommand="SELECT top 10 [title_news], [ID] FROM [Tbl_topic] WHERE ([Flag] = @Flag)  order by id desc">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="Flag" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
                .کليه حقوق برای شرکت نوآوران روباتیک گیلان محفوظ مي باشد<br/>
            Powered By <a href="http://caspianteam.com" style="text-decoration: none; color: #CCC;">
                CaspianTeam.com</a> © 2011-2012
        </div>
    </div>
    </form>
</body>
</html>
