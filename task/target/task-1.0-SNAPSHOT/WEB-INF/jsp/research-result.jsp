<%@ include file="template-header.jsp" %>

	          <aside class="right-side">
          <section class="content-header">
                    <h1>
                        <font color=#0489B1>Research Result</font>
                    </h1>
                </section>
                <section class="content">
<div class="row">
	<div class="col-lg-12">
	<div>
		<form method="post" action="researchFund"
			class="form-inline col-lg-offset-2 col-lg-10" role="search">
		<div class="table-responsive col-lg-10">
			<div class="form-group">
				<label><font size=3> Search by</font></label>
				<div class="form-group">
					<select class="form-control" name="searchBy">
						<option value="name">Fund Name</option>
						<option value="symbol">Fund Ticker</option>
					</select>			
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search Fund" 
						name="value" value="${fn:escapeXml(param.fund)}">
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</div>
		</div>
		</form>
	</div>
	</div><br><br><br>
</div>
<div class="box box-primary">
<div class="box-body table-responsive">
<h3 class="box-title">Showing matching ${fn:length(resultList)} funds</h3>  
	<table id="searchResult_table" class="table table-striped table-hover">
		<c:if test="${!empty resultList}">
    	<thead>
  			<tr>
    			<th class="col-lg-4">Fund Name</th>
    			<th class="col-lg-2">Fund Ticker</th>
    			<th  class="col-lg-2">Last Closing Price</th>
    			<th class="col-lg-2"></th>
  		    </tr>
	    </thead>
	    <tbody>
        	<c:forEach var="result" items="${resultList}">
			<tr>
				<td><a href="tofunddetl?fundId=${result.fundId}">${fn:escapeXml(result.name)}</a></td>
				<td>${fn:escapeXml(result.symbol)}</td>
				<td><fmt:formatNumber  value="${fn:escapeXml(result.currentPrice)}" type="currency" currencySymbol="$"/></td>
				<td><a href="tobuyfund?fundId=${result.fundId}" class="btn btn-primary">Buy</a></td>
			</tr> 
			</c:forEach>
		</tbody>
		</c:if>
   </table>
</div>
</div>

<%@ include file="template-footer.jsp" %>
