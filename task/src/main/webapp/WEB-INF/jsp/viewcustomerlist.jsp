<%@ include file="template-header.jsp" %>
          <aside class="right-side">
          <section class="content-header">
                    <h1>
                        <font color=#0489B1>View All Customers</font>
                    </h1>
                </section>
                <section class="content">
                
<div class="row">
	<div class="col-lg-12">
		<form method="post" action="researchCustomer"
			class="form-inline col-lg-offset-2 col-lg-10" role="search">
		<div class="table-responsive col-lg-10">
		<div class="form-group">
				<label><font size=3> Search by</font></label>
				<div class="form-group">
					<select class="form-control" name="searchBy">
						<option value="firstname">First Name</option>
						<option value="lastname">Last Name</option>
						<option value="username">Email</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" style="text-align:right" placeholder="Search Customer" 
						name="value" maxlength="100"  value="${fn:escapeXml(param.user)}">
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
		            <b>${message}</b>
		        	</div>
				</c:if>&nbsp;&nbsp;
				<button type="submit" class="btn btn-primary">Search</button>
		</div>
		</div>
		</form>
	</div>
</div>

<h3>Customer List:</h3><br>
<font size="4">
<c:choose>
<c:when test="${!(empty customerList)}">
<c:forEach var="customer" items="${customerList}">
	<a href="toviewcust?customerId=${customer.id}&tabName=custinfo">
	    <i class="fa fa-envelope"></i>
	    ${fn:escapeXml(customer.firstname)} ${fn:escapeXml(customer.lastname)}
	    </a>
	    <br><br>
</c:forEach>
</c:when>
<c:otherwise>
No Customer Existed.
</c:otherwise>
</c:choose>
</font>

<%@ include file="template-footer.jsp" %>
