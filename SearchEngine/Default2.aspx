<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

		
            * {
                font-family: Verdana, Arial, sans-serif;
            }
            
* {
	margin: 0;
	padding: 0;
}

            a:link {
                color:#000;
                text-decoration: none;
            }
            
a {
	text-decoration: underline;
	color: #0F8C8C;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        ForeColor="Black" Width="1030px">
                                        <Columns>
                    <%--<asp:TemplateField HeaderText="Pic">
                        <ItemTemplate>
                            <asp:ImageButton ID="Image1" runat="server" Height="100px" 
                                ImageUrl='<%#Eval("item_id") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    
                                            <asp:TemplateField HeaderText="Data">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Heading">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnk" runat="server" ForeColor="Black" 
                                                        PostBackUrl='<%#Eval("link") %>' Text='<%#Eval("title") %>'></asp:LinkButton>
                            <br />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:CommandField ButtonType="Link" EditText="view Link " 
                                                ShowEditButton="true" />
                    
                     <%--   <asp:TemplateField HeaderText="Publisher">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                     <%--   <asp:CommandField ButtonType ="Link" ShowEditButton ="true" EditText ="view" />--%>
                                           </Columns>
                                    </asp:GridView>
    
    </div>
    </form>
</body>
</html>
