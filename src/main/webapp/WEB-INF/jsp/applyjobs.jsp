<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<script type="text/javascript">

function errorMessage(msg) {
    error.textContent = msg;
    error.style.color = "red";
}

function errorDetailsMessage(msg) {
	errordetails.textContent = msg;
	errordetails.style.color = "red";
}

function apply(){
	if($('#jobrole').val() == '-1'){
		errorMessage('Please Select Job Role');
	} 
	if($('#city').val() == '-1'){
		errorMessage('Please Select City');
	} 
	if($('#city').val() != '-1' && $('#jobrole').val() != '-1'){
		$('#applyModal').modal('show');
		errorMessage('');
	}
	
}

function cancelApplySubmit(){
	$('#applyModal').modal('hide');
}

function applySubmit(){
	
	if($('#email').val() == ''){
		errorDetailsMessage('Please add email.');
	}
	if($('#number').val() == ''){
		errorDetailsMessage('Please add number.');
	}
	if($('#name').val() == ''){
		errorDetailsMessage('Please add name.');
	} 
	
	if($('#name').val() != '' && $('#number').val() != '' && $('#email').val() != ''){
		$('#applyModal').modal('hide');
		$('#applySubmitModal').modal('show');
		errorDetailsMessage('');
	}
}

function ok(){
	$('#applySubmitModal').modal('hide');
}

</script>

<body>
<div class="container">
	<span id="error"></span>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>Apply for jobs.</h3>
		</div>
		<div class="panel-body">
			<div class="input-group width-xlarge">
				<span class="input-group-addon">City</span>
				<select id="city" class="form-control">
					<option value="-1"> -- Select City-- </option>
					<c:forEach items="${cities}" var="city">
						<option value="${city.name}" > ${city.name} </option>
					</c:forEach>
				</select>
			</div>
			<br>
			<div class="input-group width-xlarge">
				<span class="input-group-addon">Job Roles</span>
				<select id="jobrole" class="form-control">
					<option value="-1"> -- Select Job Role-- </option>
					<c:forEach items="${jobroles}" var="jobrole">
						<option value="${jobrole.name}" > ${jobrole.name} </option>
					</c:forEach>
				</select>
			</div>
			<br>	
			<a class="btn btn-primary" type="button"  href="javascript:apply();">Apply</a>
		</div>
	</div>
</div>
<div class="modal fade" id="applyModal">
	  <div class="modal-dialog">
			<div class="modal-content">
			  <span id="errordetails"></span>
				<div class="modal-header">
					<h3>Change Product Review Status?</h3>
					<div class="input-group width-large">
						<span class="input-group-addon">Name</span> 
						<input id="name" class="form-control" style="width: 250px;"/> 
					</div>
					<br>
					<div class="input-group width-large">
						<span class="input-group-addon">Number</span> 
						<input id="number" class="form-control" style="width: 250px;"/> 
					</div>
					<br>
					<div class="input-group width-large">
						<span class="input-group-addon">Email</span> 
						<input id="email" class="form-control" style="width: 250px;"/> 
					</div>
					<br>
					<div class="modal-footer">
						<a class="btn btn-primary" type="button"  href="javascript:applySubmit();">Apply</a>
						<a class="btn btn-primary" type="button"  href="javascript:cancelApplySubmit();">Cancel</a>
		 			</div>
				</div>
			</div>
		</div>
</div>

<div class="modal fade" id="applySubmitModal">
	  <div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3>Application Link has been sent to your Number and Email Address.</h3>
					<div class="modal-footer">
						<a class="btn btn-primary" type="button"  href="javascript:ok();">OK</a>
		 			</div>
				</div>
			</div>
		</div>
</div>

</body>
<%@ include file="common/footer.jspf"%>