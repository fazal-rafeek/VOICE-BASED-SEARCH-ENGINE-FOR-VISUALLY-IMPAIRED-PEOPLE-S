<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home2.aspx.cs" Inherits="Home2"  Async ="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">--%>
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Big Business
Description: A two-column, fixed-width design with a bright color scheme.
Version    : 1.0
Released   : 20120210
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Bigbusiness by TEMPLATED</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="javascript">
    function mypage(name) {
        //var name=document.form1.name.value;


        if (name.trim() != "") {

            if (name.trim() == "Number 1") {
                //
                //StartSpeak();

                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=1");

            }

            else if (name.trim() == "Number 2") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=2");
            }
            else if (name.trim() == "Number 3") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=3");

            }
            else if (name.trim() == "Number 4") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=4");

            }
            else if (name.trim() == "Number 5") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=5");

            }
            else if (name.trim() == "Number 6") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=6");
            }
            else if (name.trim() == "Number 7") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=7");
            }

            else if (name.trim() == "Number 8") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=8");
            }
            else if (name.trim() == "Number 9") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=9");
            }
            else if (name.trim() == "Number 10") {
                window.location.replace(" http://localhost:50128/SearchEngine/Default3.aspx?id=10");
            }
           

            else {


                window.location.replace("http://localhost:50128/SearchEngine/Default2.aspx" + "?pass=" + name);
            
            }
        }



    }
  		
		</script>
     
<style>
    <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
		body
		{
		background-color:#FFFFFF;
		}
		
            * {
                font-family: Verdana, Arial, sans-serif;
            }
            a:link {
                color:#000;
                text-decoration: none;
            }
            a:visited {
                color:#000;
            }
            a:hover {
                color:#33F;
            }
            .button {
                background: -webkit-linear-gradient(top,#008dfd 0,#0370ea 100%);
                border: 1px solid #076bd2;
               
                color: #fff;
                display: none;
                font-size: 13px;
                font-weight: bold;
                line-height: 1.3;
                padding: 8px 25px;
                text-align: center;
               
                letter-spacing: normal;
            }
            .center {
                padding: 10px;
                text-align: center;
            }
            .final {
                color: black;
                padding-right: 3px; 
            }
            .interim {
                color: gray;
            }
            .info {
                font-size: 14px;
                text-align: center;
                color: #777;
                display: none;
            }
            .right {
                float: right;
            }
            .sidebyside {
                display: inline-block;
                width: 45%;
                min-height: 40px;
                text-align: left;
                vertical-align: top;
            }
            #headline {
                font-size: 40px;
                font-weight: 300;
            }
            #info {
                font-size: 20px;
                text-align: center;
                color: #777;
                visibility: hidden;
            }
            #results {
                font-size: 14px;
                font-weight: bold;
                border: 1px solid #ddd;
                padding: 15px;
                text-align: left;
                min-height: 50px;
                width: 100px;
            }
            #start_button {
                border: 0;
                background-color:transparent;
                padding: 0;
            }
            #wr {
	margin: 0 0 0 0;
	height: 250px;
	position: relative;
	padding: 45px 45px 10px 45px;
	width: 890px;
}
            .style1
    {
        width: 100%;
    }
            </style> 
    
    
     <script src="js/jquery-1.7.1.js"></script>
    <script>
        window.onbeforeunload = function () {
            $.ajax({
                type: "POST",
                url: "Home2.aspx/ExitSpeakOnCloseWindow",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    // alert(msg.d);
                }
            });
        }

        function StartSpeak() {
            $.ajax({
                type: "POST",
                url: "Home2.aspx/StartSpeak",
                data: '{speakstr: "' + $("#TextBox1").val() + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    // alert(msg.d);
                }
            });

        }
        function StopSpeak() {

            $.ajax({
                type: "POST",
                url: "Home2.aspx/StopSpeak",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    //alert(msg.d);
                }
            });
        }
    </script>
             
</head>
 <%----%>
<body onload="startButton(event)" >

	
	


 <div class="main">
 <div id="wrapper">
 <div id="wr" class="center" style="position: relative">
            <div id="info">
                <p id="info_start">&nbsp;</p>
            </div>
            <div class="right">
                <button id="start_button" onclick="startButton(event)">
                    <img id="start_img" src="1.png" alt="Start"></button>
                     <button id="Button2" runat="server" onclick="copyButton()"></button>
            </div>
            <div id="results">
                <span id="final_span" class="final"></span>
                <span id="interim_span" class="interim"></span>
                <p></div>
            <div class="center" >

                <p>
                   <div id="div_language" style="display:none">
                        <select id="select_language" onchange="updateCountry()"></select>
                        &nbsp;&nbsp;
                        <select id="select_dialect"></select>
                    </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <div class="mainbar">
                        <div class="clr"></div>
                            <h2 align="left">Search Engine</h2>
                            <div align="left">

                            <form id="form1" runat="server">
   
    
                            </div>
                    </div>
                    <div class="clr">
                        <table class="style1">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                     <div>
        <asp:TextBox ID="res" runat="server"  name="name" Width="566px" AutoPostBack="True" 
                                             ontextchanged="res_TextChanged"></asp:TextBox>
                                         &nbsp;
                                         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
    &nbsp;</div></td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        ForeColor="Black" Width="1030px">
                                        <Columns>
                   
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
                    
                    
                                           </Columns>
                                    </asp:GridView>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        </form>
                    </div>
                </div>
            </div>

             </form>

            <div class="fbg">
                <div class="fbg_resize">
                    <div class="clr">
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="footer_resize">
                    <!--<ul class="fmenu">
                      <li class="active"><a href="index.html">Home</a></li>
                      <li><a href="contact.html">Contacts</a></li>
                    </ul>-->
                    <div class="clr"></div>
                </div>
            </div>
        </div>
        </div>
       
</div>
</body>



<script>
    var langs =
             [['Afrikaans', ['af-ZA']],
                ['Bahasa Indonesia', ['id-ID']],
                ['Bahasa Melayu', ['ms-MY']],
                ['CatalÃ ', ['ca-ES']],
                ['ÄŒeÅ¡tina', ['cs-CZ']],
                ['Deutsch', ['de-DE']],
                ['English', ['en-AU', 'Australia'],
                    ['en-CA', 'Canada'],
                    ['en-IN', 'India'],
                    ['en-NZ', 'New Zealand'],
                    ['en-ZA', 'South Africa'],
                    ['en-GB', 'United Kingdom'],
                    ['en-US', 'United States']],
                ['EspaÃ±ol', ['es-AR', 'Argentina'],
                    ['es-BO', 'Bolivia'],
                    ['es-CL', 'Chile'],
                    ['Tamil', 'ta'],
                    ['es-CO', 'Colombia'],
                    ['es-CR', 'Costa Rica'],
                    ['es-EC', 'Ecuador'],
                    ['es-SV', 'El Salvador'],
                    ['es-ES', 'EspaÃ±a'],
                    ['es-US', 'Estados Unidos'],
                    ['es-GT', 'Guatemala'],
                    ['es-HN', 'Honduras'],
                    ['es-MX', 'MÃ©xico'],
                    ['es-NI', 'Nicaragua'],
                    ['es-PA', 'PanamÃ¡'],
                    ['es-PY', 'Paraguay'],
                    ['es-PE', 'PerÃº'],
                    ['es-PR', 'Puerto Rico'],
                    ['es-DO', 'RepÃºblica Dominicana'],
                    ['es-UY', 'Uruguay'],
                    ['es-VE', 'Venezuela']],
                ['Euskara', ['eu-ES']],
                ['FranÃ§ais', ['fr-FR']],
                ['Galego', ['gl-ES']],
                ['Hrvatski', ['hr_HR']],
                ['IsiZulu', ['zu-ZA']],
                ['Ãslenska', ['is-IS']],
                ['Italiano', ['it-IT', 'Italia'],
                    ['it-CH', 'Svizzera']],
                ['Magyar', ['hu-HU']],
                ['Nederlands', ['nl-NL']],
                ['Norsk bokmÃ¥l', ['nb-NO']],
                ['Polski', ['pl-PL']],
                ['PortuguÃªs', ['pt-BR', 'Brasil'],
                    ['pt-PT', 'Portugal']],
                ['RomÃ¢nÄƒ', ['ro-RO']],
                ['SlovenÄina', ['sk-SK']],
                ['Suomi', ['fi-FI']],
                ['Svenska', ['sv-SE']],
                ['TÃ¼rkÃ§e', ['tr-TR']],
                ['Ð±ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸', ['bg-BG']],
                ['PÑƒÑÑÐºÐ¸Ð¹', ['ru-RU']],
                ['Ð¡Ñ€Ð¿ÑÐºÐ¸', ['sr-RS']],
                ['í•œêµ­ì–´', ['ko-KR']],
                ['ä¸­æ–‡', ['cmn-Hans-CN', 'æ™®é€šè¯ (ä¸­å›½å¤§é™†)'],
                    ['cmn-Hans-HK', 'æ™®é€šè¯ (é¦™æ¸¯)'],
                    ['cmn-Hant-TW', 'ä¸­æ–‡ (å°ç£)'],
                    ['yue-Hant-HK', 'ç²µèªž (é¦™æ¸¯)']],
                ['æ—¥æœ¬èªž', ['ja-JP']],
                    ['Lingua latÄ«na', ['la']]];

//    var langs =
//[['தமிழ்', ['ta-IN', 'இந்தியா'],
//                     ['ta-SG', 'சிங்கப்பூர்'],
//                     ['ta-LK', 'இலங்கை'],
//                     ['ta-MY', 'மலேசியா']], ];



    for (var i = 0; i < langs.length; i++) {
        select_language.options[i] = new Option(langs[i][0], i);
    }
    select_language.selectedIndex = 8;
    updateCountry();
    select_dialect.selectedIndex = 8;
    showInfo('info_start');

    function updateCountry() {
        for (var i = select_dialect.options.length - 1; i >= 0; i--) {
            select_dialect.remove(i);
        }
        var list = langs[select_language.selectedIndex];
        for (var i = 1; i < list.length; i++) {
            select_dialect.options.add(new Option(list[i][1], list[i][0]));
        }
        select_dialect.style.visibility = list[1].length == 1 ? 'hidden' : 'visible';
    }

    var create_email = false;
    var final_transcript = '';
    var recognizing = false;
    var ignore_onend;
    var start_timestamp;
    if (!('webkitSpeechRecognition' in window)) {
        upgrade();
    } else {
        start_button.style.display = 'inline-block';
        var recognition = new webkitSpeechRecognition();
        recognition.continuous = true;
        recognition.interimResults = true;

        recognition.onstart = function () {
            recognizing = true;
            recognition.continuous = true;
            showInfo('info_speak_now');
            start_img.src = '2.jpg';
        };

        recognition.onerror = function (event) {
            if (event.error == 'no-speech') {
                start_img.src = '1.png';
                showInfo('info_no_speech');
                ignore_onend = true;
            }
            if (event.error == 'audio-capture') {
                start_img.src = '1.png';
                showInfo('info_no_microphone');
                ignore_onend = true;
            }
            if (event.error == 'not-allowed') {
                if (event.timeStamp - start_timestamp < 100) {
                    showInfo('info_blocked');
                } else {
                    showInfo('info_denied');
                }
                ignore_onend = true;
            }
        };

        recognition.onend = function () {
            recognizing = false;
            if (ignore_onend) {
                return;
            }
            start_img.src = '1.png';
            if (!final_transcript) {
                showInfo('info_start');
                return;
            }
            showInfo('');
            if (window.getSelection) {
                window.getSelection().removeAllRanges();
                var range = document.createRange();
                range.selectNode(document.getElementById('final_span'));
                window.getSelection().addRange(range);
            }
            if (create_email) {
                create_email = false;
                createEmail();
            }
        };

        recognition.onresult = function (event) {
            var interim_transcript = '';
            for (var i = event.resultIndex; i < event.results.length; ++i) {
                if (event.results[i].isFinal) {
                    //final_transcript += event.results[i][0].transcript;
                    final_transcript = event.results[i][0].transcript;

                } else {
                    //interim_transcript += event.results[i][0].transcript;
                    interim_transcript = event.results[i][0].transcript;
                }
            }
            final_transcript = capitalize(final_transcript);
            final_span.innerHTML = linebreak(final_transcript);
            interim_span.innerHTML = linebreak(interim_transcript);
            //document.getElementById('res').value = linebreak(final_transcript);;
            if (final_transcript || interim_transcript) {
                //   if (final_transcript) {
                showButtons('inline-block');
                document.getElementById('res').value = linebreak(final_transcript);
               // document.getElementById('res1').value = linebreak(final_transcript);
                //mypage();
                var name = final_transcript; //document.getElementById('res').value;
                mypage(name);

                /*if(name.trim()=="Inbox")
                {
                document.form1.name.value="";
                parent.rightFrame.location="inbox.php";
                }
                else if(name.trim()=="Compose")
                {
                document.form1.name.value="";
                parent.rightFrame.location="user_page.php";
                }*/
                ;
            }
        };

    }

    function upgrade() {
        start_button.style.visibility = 'hidden';
        showInfo('info_upgrade');
    }

    var two_line = /\n\n/g;
    var one_line = /\n/g;
    function linebreak(s) {
        return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
    }

    var first_char = /\S/;
    function capitalize(s) {
        return s.replace(first_char, function (m) {
            return m.toUpperCase();
        });
    }

    function createEmail() {
        var n = final_transcript.indexOf('\n');
        if (n < 0 || n >= 80) {
            n = 40 + final_transcript.substring(40).indexOf(' ');
        }
        var subject = encodeURI(final_transcript.substring(0, n));
        var body = encodeURI(final_transcript.substring(n + 1));
        window.location.href = 'mailto:?subject=' + subject + '&body=' + body;
    }

    function copyButton() {
        if (recognizing) {
            recognizing = false;
            recognition.stop();
        }
       // copy_button.style.display = 'none';
       // copy_info.style.display = 'inline-block';
       // showInfo('');
    }

    function emailButton() {
        if (recognizing) {
            create_email = true;
            recognizing = false;
            recognition.stop();
        } else {
            createEmail();
        }
        email_button.style.display = 'none';
        email_info.style.display = 'inline-block';
        showInfo('');
    }

    function startButton(event) {
        if (recognizing) {
            recognition.stop();
            return;
        }
        final_transcript = '';
        recognition.lang = select_dialect.value;
        recognition.start();
        ignore_onend = false;
        final_span.innerHTML = '';
        interim_span.innerHTML = '';
        start_img.src = '2.jpg';
        showInfo('info_allow');
        showButtons('none');
        start_timestamp = event.timeStamp;
    }

    function showInfo(s) {
        if (s) {
            for (var child = info.firstChild; child; child = child.nextSibling) {
                if (child.style) {
                    child.style.display = child.id == s ? 'inline' : 'none';
                }
            }
            info.style.visibility = 'visible';
        } else {
            info.style.visibility = 'hidden';
        }
    }

    var current_style;
    function showButtons(style) {
        if (style == current_style) {
            return;
        }
        current_style = style;
        copy_button.style.display = style;
        email_button.style.display = style;
        copy_info.style.display = 'none';
        email_info.style.display = 'none';
    }
</script>
</html>