<%@ include file="template-header.jsp" %>
<style type="text/css">
.hei {
    height:42px;
    width:400px;
    font:
} 
</style> 
<aside class="right-side">
<section class="content-header">
   <h1>
       <font color=#0489B1>Sell Fund</font>
   </h1>
</section>
<section class="content">
	<div class="col-lg-12">
	<font size="4">
	 	<div class="alert alert-info alert-dismissable">
	 	Your current total share number is <fmt:formatNumber value="${position.presentShares}"
     	type="number" minFractionDigits="3"/>, with a pending share number of <c:if test="${pendingShares > 0}">-</c:if>
     	<fmt:formatNumber value="${pendingShares }" type="number" minFractionDigits="3"/>,<br>
     	so your available shares of this fund for sale is <fmt:formatNumber pattern="#,##0.00;-#,##0.00" value="${position.presentShares-pendingShares }"
     	type="number" minFractionDigits="3"/>. You cannot sell shares more than this amount.
     	</div>
     	</font>
     	<div class="container">
	<h3>Please input the information of the fund you plan to sell:</h3><br>
	
	<form method="post" action="sellfund" class="hei" id="form">
		<input type="hidden" name="fundId" value="${fund.fundId}" />
		<div class="form-group">
			<label for="fundName">Fund Name: </label>
			<label id ="fundName" name="fundName" >${fn:escapeXml(fund.name)}</label></div>
		<div class="form-group">
			<label for="fundTicker">Fund Ticker:</label>
			<label id ="fundTicker" name="fundTicker">${fn:escapeXml(fund.symbol)}</label></div>
		<div class="form-group">
			<label for="currentPrice">Current Price:</label>
			<label><fmt:formatNumber value="${fund.currentPrice}" type="currency" currencySymbol="$"/>/share</label>
		</div>
		<div class="form-group">
			<label for="shareNumber">Number of Shares to sell:</label>
			<input type="text" maxlength="100" name="shareNumber" class="form-control" placeholder="Shares number" 
			pattern="^[0-9]*\.?[0-9]{0,2}$" placeholder="Upto 3 decimal digits"
			name="shares" value=""/>
		</div>
		<c:if test="${!(empty errorMsgs)}">
			<div class="alert alert-danger alert-dismissable">
		    	<i class="fa fa-warning"></i>
            	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            	<c:forEach var="errorMsg" items="${errorMsgs}">
					<b>${errorMsg}</b><br>
				</c:forEach>
        	</div>
	    </c:if>
		<c:if test="${empty errorMsgs and !(empty message)}">
			<div class="alert alert-success alert-dismissable">
	            <i class="fa fa-check"></i>
	            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	            <b>${message}! You have sold ${fn:escapeXml(param.shareNumber)} shares of this fund.</b>
	        </div>
		</c:if>
		<div class="form-group"> 
		 	<div class="col-sm-offset-3 col-sm-3"> 
				<button type="submit" class="btn btn-primary">Submit</button><br><br>
			</div> 
			<div class="col-sm-offset-1 col-sm-5"> 
				<button type="button" class="btn btn-primary" id="myreset">Reset</button><br><br>
			</div> 
		</div>
	</form>
	</div>

<%@ include file="template-footer.jsp" %>
