<#assign s=JspTaglibs["/WEB-INF/tlds/struts-tags.tld"]/>
<#assign display=JspTaglibs["/WEB-INF/tlds/displaytag-12.tld"] />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type"content="text/html; charset=UTF-8">  
  ${head}
  <link href="<@s.url value='/styles/mainstyle.css'/>" rel="stylesheet" type="text/css"/>
  <link href="<@s.url value='/styles/tooltip.css'/>" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="<@s.url value='/struts/xhtml/styles.css'/>" type="text/css"/>
  <script  src="<@s.url value='/js/chrome.js'/>" type="text/javascript"></script>
  <script  src="<@s.url value='/js/util.js'/>" type="text/javascript"></script>
  <script  src="<@s.url value='/js/cvi_busy_lib.js'/>" type="text/javascript"></script>
  <title>Welcome to KeywordWebSpider.com</title>
</head>
<body> 
  <div class="Report_mib_box"><br />
  <div class="projects_top_text">
	        <@s.url id="en" includeParams="all">
	            <@s.param name="request_locale">en</@s.param>
	        </@s.url>
	        <@s.a href="%{en}" onclick="busyIndicator();"><@s.text name="languagepreference.english"/></@s.a>
	        I
	        <@s.url id="hu" includeParams="all">
	            <@s.param name="request_locale">hu</@s.param>
	         </@s.url>
	        <@s.a href="%{hu}" onclick="busyIndicator();"><@s.text name="languagepreference.hungarian"/></@s.a>
  </div>  
  <div id="outer_box">
    <div class="projects_icon"></div>
    <div class="projects_top_text"><@s.text name="template.label.header.loginas"/>: <strong><#if Session.user?exists>${Session.user.email}</#if></strong> I <a href="logout.action"><@s.text name="login.label.form.logout"/></a></div>
    <div class="projects_navigation" id="chromemenu">
      <ul>
        <li><a href="project.action" onclick="busyIndicator();"><@s.text name="template.label.header.project"/></a></li>
        <li class="projects_nav_spes">I</li>
        <li><a href="account.action" onclick="busyIndicator();"><@s.text name="template.label.header.account"/></a></li>
        <li class="projects_nav_spes">I</li>
        <li> 
			
		<li>
		</li>	
 			<a href="#" rel="dropmenu1"><@s.text name="template.label.header.report"/></a>
        </li>
        <li class="projects_nav_spes">I</li>
        <li><a href="help.action" onclick="busyIndicator();"><@s.text name="template.label.header.help"/></a></li>
        <li class="projects_nav_spes">I</li>
        <li><a href="bonuses.action" onclick="busyIndicator();"><@s.text name="template.label.header.bonuses"/></a></li>
      </ul>
   </div>
   <div id="dropmenu1" class="dropmenudiv">
	   <a href="keywordReport!noAdsKeywords.action" onclick="busyIndicator();"><@s.text name="template.label.header.reporttab1"/></a>
	   <a href="advertise!showTopScorring.action" onclick="busyIndicator();"><@s.text name="template.label.header.reporttab2"/></a>
   </div>
	<script type="text/javascript">
		cssdropdown.startchrome("chromemenu")
	</script>   
    <div class="clear"></div>
    <div id="Report_account_box">   
      <div class="clear"></div>
   	 <div id="top_URL">
   	 	<@s.form action="advertise" theme="simple">
   	 		<@s.set name="dstUrl" value="%{getText('header.label.header.destinationurl')}"/>
   	 		<@s.set name="dsplUrl" value="%{getText('header.label.header.displayurl')}"/>
        	<@s.radio name="searchRules.searchUrlType" list="#@java.util.LinkedHashMap@{'Destination URL' :'${dstUrl}','Display URL':'${dsplUrl}'}" value="%{{'Destination URL'}}"/> 
        	<@s.textfield name="searchRules.url"/> 
        	<@s.submit key="project.label.form.search" name="" onclick="busyIndicator();"/>
      	</@s.form>
      </div>
      <div class="clear"></div>
      <#-- CONTENT AREA -->
      ${body}
      <#-- CONTENT AREA -->
      
    </div>
  </div>  
  </div>
    <!--    footer_start    -->
                <div id="footer_box">
                   
                   <div class="footer_navigation">
                                <ul>
				                  <li><a href="index.action"><@s.text name="header.label.header.home"/></a></li>
                                  <li>l</li>
					              <li><a href="privacy.action"><@s.text name="header.label.header.privacypolicy"/></a></li>
                                  <li>l</li>
					              <li><a href="terms.action"><@s.text name="header.label.header.terms"/></a></li>
                                  <li>l</li>
					              <li><a href="contactUs.action"><@s.text name="header.label.header.contactus"/></a></li>
				               </ul>
                        	<div class="copyright_text">
						      	<@s.text name="footer.label.header.copyright"/>
			    		 	</div>				               
                           </div>
                </div>
                <!--    footer_end    --> 
</body>
</html>