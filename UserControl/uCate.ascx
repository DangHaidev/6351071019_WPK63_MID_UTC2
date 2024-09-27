<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uCate.ascx.cs" Inherits="de1.UserControl.uCate" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="EntityDataSource1">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Category.aspx?id=" + Eval("CatID") %>' Text='<%# Eval("CatName") + "(" + Eval("Course.Count") + " )" %>'></asp:HyperLink>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Category" Include="Course">
</asp:EntityDataSource>

