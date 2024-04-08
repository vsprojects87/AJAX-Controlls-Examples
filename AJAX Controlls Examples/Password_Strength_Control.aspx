<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Password_Strength_Control.aspx.cs" Inherits="AJAX_Controlls_Examples.Password_Strength_Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <style>
        .bar{
            border:2px black;
            width:120px;
        }
        .poor{
            background-color:darkred;
        }
        .weak{
            background-color:red;
        }
        .average{
            background-color:yellow;
        }
        .good{
            background-color:lightgreen;
        }
        .strong{
            background-color:forestgreen
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid">
            <div class="row" style="margin-top: 40vh;margin-left:20vw">

                <div class="col-md-2">
                    <asp:Label ID="Label1" runat="server" Text="Enter Password"></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="TextBox1" PrefixText="Password Strength: " RequiresUpperAndLowerCaseCharacters="True" StrengthIndicatorType="BarIndicator" HelpStatusLabelID="Label2" MinimumNumericCharacters="3" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="8" TextStrengthDescriptions="poor;weak;average;good;strong" StrengthStyles="poor;weak;average;good;strong" BarBorderCssClass="bar" />
                    <%--TextStrengthDescriptions="Poor;Weak;Average;Good;Strong"--%>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </div>

            </div>
        </div>
    </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
