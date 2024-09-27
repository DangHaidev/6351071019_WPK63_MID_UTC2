<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uProduct.ascx.cs" Inherits="de1.UserControl.uProduct" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
   
    
   
    <ItemTemplate>
        <td runat="server" style="">
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            
            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
            <br />
            View details
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        </td>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server" border="0" style="">
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </table>
        <div style="">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <td runat="server" style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            ImageFilePath:
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            Duration:
            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            
        </td>
    </SelectedItemTemplate>
</asp:ListView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Course" Select="it.[Name], it.[ImageFilePath], it.[Duration], it.[Description]" AutoGenerateWhereClause="True" OnSelecting="EntityDataSource1_Selecting" Where="">
    <WhereParameters>
        <asp:QueryStringParameter Name="CatID" QueryStringField="CatID" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>

