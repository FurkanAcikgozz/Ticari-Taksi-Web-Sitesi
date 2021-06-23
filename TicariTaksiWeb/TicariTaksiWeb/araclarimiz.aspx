<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="~/araclarimiz.aspx.cs" Inherits="araclarimiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
      <script src="aracSliderJS/jquery.js"></script>
    <script src="aracSliderJS/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="aracSliderJS/amazingslider-1.css">
    <script src="aracSliderJS/initslider-1.js"></script> 
    <!-->
        <script src="sliderJS/jquery.js"></script>
    <script src="sliderJS/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderJS/amazingslider-1.css"/>
    <script src="sliderJS/initslider-1.js"></script>-->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:900px;margin:0px auto 56px; ">
        <div class="amazingslider" id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <li><img src="Resimler/21TT0039.jpg" alt="21TT0039"  title="21TT0039" />
                </li>
                <li><img src="Resimler/21TT0125.jpg" alt="21TT0125"  title="21TT0125" />
                </li>
                <li><img src="Resimler/21TT0347.jpg" alt="21TT0347"  title="21TT0347" />
                </li>
                <li><img src="Resimler/21TT0716.jpg" alt="21TT0716"  title="21TT0716" />
                </li>
                <li><img src="Resimler/21TT0799.jpg" alt="21TT0799"  title="21TT0799" />
                </li>
                <li><img src="Resimler/21TT0832.jpg" alt="21TT0832"  title="21TT0832" />
                </li>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <li><img src="Resimler/21TT0039.jpg" alt="21TT0039" title="21TT0039" /></li>
                <li><img src="Resimler/21TT0125.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="Resimler/21TT0347.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="Resimler/21TT0716.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="Resimler/21TT0799.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="Resimler/21TT0832.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
        </div>
    </div>

    </asp:Content>