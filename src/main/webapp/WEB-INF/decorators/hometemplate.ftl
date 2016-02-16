<#assign s=JspTaglibs["/WEB-INF/tlds/struts-tags.tld"]/>
<#assign display=JspTaglibs["/WEB-INF/tlds/displaytag-12.tld"] />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        ${head}
         <link href="<@s.url value='/styles/mainstyle.css'/>" rel="stylesheet" type="text/css"/>
        <link href="<@s.url value='/styles/styleEn.css'/>" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="<@s.url value='/struts/xhtml/styles.css'/>" type="text/css"/>
        <script  src="<@s.url value='/js/cvi_busy_lib.js'/>" type="text/javascript"></script>
        <script  src="<@s.url value='/js/util.js'/>" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Welcome to ServiceTrust.com</title>
    </head>
    <body>
                <div align="center" style="height:50px; background:#f1f1f1;display:none" id="loginBox">
                    <table width="870" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="left" valign="top" style="width:145px; padding-top:8px;">
                                <@s.submit type="button" cssClass="top_button1" key="signup.label.header.title" action="signUp" theme="simple" onclick="window.location.href='signUp.action'"/>
                            </td>
                            <td align="left" valign="top" style="padding:8px 0px 10px 0px;">
                                <@s.form action="login.action" theme="simple">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" valign="middle" class="top_text" style="width:145px;"><a href="forgotPassword.action"><@s.text name="login.label.form.forgotyourpassword"/></a></td>
                                        <td align="left" valign="middle" class="top_text1" style="width:80px;"><@s.text name="login.label.form.email"/> :</td>
                                        <td align="left" valign="top" class="search_box"><@s.textfield name="user.email" cssClass="search" size="20" /></td>
                                        <td align="left" valign="middle" class="top_text1" style="width:80px;"><@s.text name="login.label.form.password"/> :</td>
                                        <td align="left" valign="top" class="search_box"><@s.password name="user.password" size="20" cssClass="search" /></td>
                                    </tr>
                                </table>
                            </td>
                            <td align="right" valign="top" style="width:145px; padding-top:8px;"><@s.submit cssClass="top_button2" onclick="busyIndicator();" key="login.label.form.login"/>
                            </td>
                            </@s.form>
                        </tr>
                    </table>
                </div>
		<div>
        <div id="outer_div">
            <div id="mainouter_div">
            	<div>
                    <div style="height:320px;">
                        <div class="new_logo_box">
                            <div class="header_right1">
									<div class="account">
											<a href="#" onclick="togalLoginBox()"><@s.text name="header.label.accountlogin"/> </a>
									</div>
                                <div class="acc_left">
                                    <@s.url id="en" includeParams="all">
                                    <@s.param name="request_locale">en</@s.param>
                                    </@s.url>
                                    <@s.a href="%{en}"><@s.text name="languagepreference.english"/></@s.a>
                                </div>
                                <div class="acc_left">
                                    <@s.url id="hu" includeParams="all">
                                    <@s.param name="request_locale">hu</@s.param>
                                    </@s.url>
                                    <@s.a href="%{hu}"><@s.text name="languagepreference.hungarian"/></@s.a>
                                </div>
                            </div>
                            <div class="header_right1">
                                <div style="width:280px; height:41px; float:left"></div>
                                <div class="topnew_navigation">
                                    <ul>
                                    	<li><a href="index.action"><@s.text name="header.label.header.home"/></a>			</li>
                                        <li><a href="terms.action"><@s.text name="header.label.header.terms"/></a>			</li>
                                        <li><a href="privacy.action"><@s.text name="header.label.header.privacypolicy"/></a></li>
                                        <li><a href="contactUs.action"><@s.text name="header.label.header.contactus"/></a>			</li>                                        
                                        <#if Session.user?exists>
                                        <li>	<a href="project.action" onclick="busyIndicator();"><@s.text name="login.label.form.memberarea"/></a></li>
                                        <li>	<a href="logout.action"><@s.text name="login.label.form.logout"/></a>		</li>
                                        </#if>                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div style="width:405px; float:left"><img src="images/header-templates.jpg" /></div>			
                            <div style="width:464px; float:left">
                                <div class="header_right1">
                                    <div class="header_head">LOREM IPSUM</div>
                                    <div class="header_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed nisl velit, in porta libero. Suspendisse sit amet odio vitae purus rhoncus dapibus a a diam. Mauris pharetra malesuada est at placerat. In ipsum neque, egestas non accumsan non, ornare vel nulla.</div>
                                    <div style="width:200px; float:left; padding-top:5px;"><input name="button2" type="button" id="button2" onclick="javascript: self.location= '#'" value="YES, SUBSCRIBE ME IN!" class="header_button1"/></div>
                                    <div style="float:right; padding-top:5px; width:194px;"><input name="button2" type="button" id="button2" onclick="javascript: self.location= '#'" value="TAKE A TOUR!" class="header_button2"/></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--header end-->
                <!--content start-->
                <div class="middlebox">
                    <div class="blank_div"></div>
                    ${body}
                </div>
            </div>
            <div class="blank_div"></div>
            <!--content end-->
            <div class="blank_div"></div>
        </div>
        <!--footer start-->
        <div id="footerouter">
            <div id="footer_box">
                <div class="footer_text1">
                    <div class="footer_head">Default H4 text</div>
                    
                    <div class="foter_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed nisl velit, in porta libero. Suspendisse sit amet odio vitae purus rhoncus dapibus a a diam. Mauris pharetra malesuada est at placerat. In ipsum neque, egestas non accumsan non, ornare vel nulla.</div>
                </div>
                
                <div class="footer_text2">
                    <div class="footer_head">Default H4 text</div>
                    
                    <div class="foter_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed nisl velit, in porta libero. Suspendisse sit amet odio vitae purus rhoncus dapibus a a diam. Mauris pharetra malesuada est at placerat. In ipsum neque, egestas non accumsan non, ornare vel nulla.</div>
                </div>
                
                <div class="footer_text3">
                    <div class="footer_head">Default H4 text</div>
                    
                    <div class="foter_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed nisl velit, in porta libero. Suspendisse sit amet odio vitae purus rhoncus dapibus a a diam. Mauris pharetra malesuada est at placerat. In ipsum neque, egestas non accumsan non, ornare vel nulla.</div>
                </div>
                
                <div class="copyright_text">
                    <@s.text name="footer.label.header.copyright"/>
                </div>
                <div style="float:right; width:223px; height:70px; padding-top:39px;"><img src="images/footer_logo1.gif" alt="" /></div>
                
            </div>
        </div>
        <!--footer end-->
        </div>
    </body>
</html>