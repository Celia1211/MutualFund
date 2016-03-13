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
                        <font color=#0489B1>Create Employee</font>
                    </h1>
                </section>
                <section class="content">
                 <div class="col-lg-12">
                 
	<div class="alert alert-info col-lg-5 ">
				<i class="fa fa-info"></i>
				All fields are required
			</div>
<div class="col-lg-12">
<div class="col-lg-5">

	<form method="post" action="createEmployee" id="form" class="hei">
		<div>
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
		</c:if>
		</div>
		<div class="form-group">
			<label> *User Name:</label>
			<input type="text" class="form-control" placeholder="User name should be a valid email address"
					name="userName" value="${fn:escapeXml(param.userName)}"/>
		</div>
		<div class="form-group">
			<label> *First Name:</label>
			<input type="text" class="form-control" placeholder="First Name"
					name="firstName" value="${fn:escapeXml(param.firstName)}"/>
		</div>
		<div class="form-group">
			<label> *Last Name:</label>
			<input type="text" class="form-control" placeholder="Last Name"
					name="lastName" value="${fn:escapeXml(param.lastName)}"/>
		</div>
		 <div class="form-group">
            	<div class="alert alert-info alert-dismissable">
                    <i class="fa fa-info"></i>
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <font size="2">By clicking "Submit" button, it will generate a random password for this employee and 
                    send an email to the provided email address.</font>
                </div>
            </div>
    	<div class="form-group"> 
	 		<div class="col-sm-offset-3 col-sm-3"> 
				<button type="submit" class="btn btn-primary">Submit</button><br><br>
			</div> 
			<div class="col-sm-offset-1 col-sm-5"> 
				<button type="button" class="btn btn-primary" id="myreset">Reset</button><br><br>
			</div> 
		</div>
	</form>	
</font>          
</div>
<%@ include file="template-footer.jsp" %>
