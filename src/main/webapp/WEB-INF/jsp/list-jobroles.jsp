<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Job Roles</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="20%">Name</th>
						<th width="29%">Description</th>
						<th width="1%">Experience</th>
						<th width="15%">Salary Range</th>
						<th width="20%">Company</th>
						<th width="10%">City</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${jobroles}" var="jobrole">
						<tr>
							<td>${jobrole.name}</td>
							<td>${jobrole.description}</td>
							<td>${jobrole.yearsOfExperience} years</td>
							<td>${jobrole.salaryRange}</td>
							<td>${jobrole.companyName}</td>
							<td>${jobrole.cityName}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="panel-body">
			<a href="/applyjobs">Click here</a> to apply to available
			jobs.
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>