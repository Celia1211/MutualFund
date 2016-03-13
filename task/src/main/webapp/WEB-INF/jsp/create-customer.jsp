<%@ include file="template-header.jsp" %>
 <style type="text/css">
.hei {
    height:42px;
    width:400px;
  
}
 
</style>  
	          <aside class="right-side">
          <section class="content-header">
                    <h1>
                        <font color=#0489B1>Create Customer</font>
                    </h1>
                </section>
                <section class="content">
        
			<div class="alert alert-info col-lg-5 ">
				<i class="fa fa-info"></i>
				* indicates the field is required
			</div>
<div class="col-lg-12">
<div class="col-lg-5">
	
	<form method="post" action="createCustomer" id="form" class="hei">
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
				<label for="username">*UserName:</label> <input type="text"
					class="form-control" placeholder="User name should be a valid email address." maxlength="100"name="userName"
					value="${fn:escapeXml(param.userName)}" />
			</div>
			
			<div class="form-group">
				<label>*FirstName:</label> <input type="text" maxlength="100" class="form-control"
					placeholder="Firstname" name="firstName"
					value="${fn:escapeXml(param.firstName)}" />
			</div>
			<div class="form-group">
				<label>*LastName:</label> <input type="text" maxlength="100" class="form-control"
					placeholder="Lastname" name="lastName"
					value="${fn:escapeXml(param.lastName)}" />
			</div>
			<div class="form-group">
				<label>*Address:</label> <input type="text" class="form-control" maxlength="100" 
					placeholder="line 1" name="Addr1"
					value="${fn:escapeXml(param.Addr1)}" />
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="line 2 (optional)" maxlength="100" 
					name="Addr2" value="${fn:escapeXml(param.Addr2)}" />
			</div>
			<div class="form-group">
			<label>State:</label> <select name="state" class="form-control"
			id="select2">
				<!--List of States Here-->
				<option value="AL">Alabama</option>
				<option value="AK">Alaska</option>
				<option value="AZ">Arizona</option>
				<option value="AR">Arkansas</option>
				<option value="CA">California</option>
				<option value="CO">Colorado</option>
				<option value="CT">Connecticut</option>
				<option value="DE">Delaware</option>
				<option value="DC">District Of Columbia</option>
				<option value="FL">Florida</option>
				<option value="GA">Georgia</option>
				<option value="HI">Hawaii</option>
				<option value="ID">Idaho</option>
				<option value="IL">Illinois</option>
				<option value="IN">Indiana</option>
				<option value="IA">Iowa</option>
				<option value="KS">Kansas</option>
				<option value="KY">Kentucky</option>
				<option value="LA">Louisiana</option>
				<option value="ME">Maine</option>
				<option value="MD">Maryland</option>
				<option value="MA">Massachusetts</option>
				<option value="MI">Michigan</option>
				<option value="MN">Minnesota</option>
				<option value="MS">Mississippi</option>
				<option value="MO">Missouri</option>
				<option value="MT">Montana</option>
				<option value="NE">Nebraska</option>
				<option value="NV">Nevada</option>
				<option value="NH">New Hampshire</option>
				<option value="NJ">New Jersey</option>
				<option value="NM">New Mexico</option>
				<option value="NY">New York</option>
				<option value="NC">North Carolina</option>
				<option value="ND">North Dakota</option>
				<option value="OH">Ohio</option>
				<option value="OK">Oklahoma</option>
				<option value="OR">Oregon</option>
				<option value="PA">Pennsylvania</option>
				<option value="RI">Rhode Island</option>
				<option value="SC">South Carolina</option>
				<option value="SD">South Dakota</option>
				<option value="TN">Tennessee</option>
				<option value="TX">Texas</option>
				<option value="UT">Utah</option>
				<option value="VT">Vermont</option>
				<option value="VA">Virginia</option>
				<option value="WA">Washington</option>
				<option value="WV">West Virginia</option>
				<option value="WI">Wisconsin</option>
				<option value="WY">Wyoming</option>
		</select>

			</div> 
			<div class="form-group">
				<label>*City:</label> <input type="text" class="form-control"
					placeholder="City" name="city" maxlength="100" value="${fn:escapeXml(param.city)}" />
			</div>
			<div class="form-group">
			 <label>*Zip:</label> <input type="text" maxlength="100" class="form-control"
			placeholder="Zip" name="zip" value="${fn:escapeXml(param.zip)}" />
			</div>
			 <div class="form-group">
            	<div class="alert alert-info alert-dismissable">
                    <i class="fa fa-info"></i>
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <font size="2">By clicking "Submit" button, we will generate a random password for 
                    this customer and send an email to the provided email address.</font>
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
</div>
</div>

<%@ include file="template-footer.jsp" %>
