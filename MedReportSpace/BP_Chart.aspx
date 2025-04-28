<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BP_Chart.aspx.cs" Inherits="MedReportSpace.BP_Chart" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:Chart ID="Chart1" runat="server">
        <Series>
            <asp:Series Name="Series1" ChartType="Bar">
                <Points>
                    <asp:DataPoint AxisLabel="H" YValues="900" />
                    <asp:DataPoint AxisLabel="Sa" YValues="210" />
                    <asp:DataPoint AxisLabel="Mi" YValues="1000" />
                    <asp:DataPoint AxisLabel="Do" YValues="950" />
                    <asp:DataPoint AxisLabel="B1" YValues="500" />
                </Points>
            </asp:Series>
            <asp:Series Name="Series2" ChartType="Bar">
    <Points>
        <asp:DataPoint AxisLabel="H" YValues="500" />
        <asp:DataPoint AxisLabel="Sa" YValues="270" />
        <asp:DataPoint AxisLabel="Mi" YValues="900" />
        <asp:DataPoint AxisLabel="Do" YValues="500" />
        <asp:DataPoint AxisLabel="B1" YValues="700" />
    </Points>
</asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
              <AxisX Title="student"></AxisX>
              <AxisY Title="Income"></AxisY>
            </asp:ChartArea>

        </ChartAreas>
    </asp:Chart>  -->

</asp:Content>
