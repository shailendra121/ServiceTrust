<div class="plainMail">
<br><br>
	Dear ${user.firstName} ${user.lastName},<br><br>
	
	You are successfully registered with us. Your account details are as mentioned below
	<br>
	  <br>&nbsp; Log-in ID: ${user.email}
	  <br>&nbsp; Password : ${user.password}
	  <br>&nbsp; Account Plan : ${user.accountplan.name}
	<br><br>
	<#if user.accountplan.id!=1>
	 <b>Notice :</b>Subscription charges are taken each month through  recurring payment.
	</#if>	
	For any further queries/assistance kindly mail us at support@keywordspider.com
	<br><br>
	Regards,<br/>
	Customer Care Team <a target="_blank" href="http://www.keywordwebspider.com">keywordwebspider.com</a>
	<br/>
</div>