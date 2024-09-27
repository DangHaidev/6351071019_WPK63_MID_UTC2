<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uDetail.ascx.cs" Inherits="de1.UserControl.uDetail" %>
<asp:FormView ID="FormView1" runat="server" DataSourceID="EntityDataSource1">
    <EditItemTemplate>
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:TextBox ID="NumViewsTextBox" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:TextBox ID="CatIDTextBox" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:TextBox ID="NumViewsTextBox" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        ImageFilePath:
        <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Bind("ImageFilePath") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Duration:
        <asp:Label ID="DurationLabel" runat="server" Text='<%# Bind("Duration") %>' />
        <br />
        CatID:
        <asp:Label ID="CatIDLabel" runat="server" Text='<%# Bind("CatID") %>' />
        <br />
        NumViews:
        <asp:Label ID="NumViewsLabel" runat="server" Text='<%# Bind("NumViews") %>' />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLKhoaHocEntities" DefaultContainerName="QLKhoaHocEntities" EnableFlattening="False" EntitySetName="Course" Select="it.[Name], it.[ImageFilePath], it.[Description], it.[Duration], it.[CatID], it.[NumViews]">
</asp:EntityDataSource>

