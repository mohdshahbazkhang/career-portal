<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Cities</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="40%">Name</th>
						<th width="40%">State</th>
						<th width="40%">Cost Of Living</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cities}" var="city">
						<tr>
							<td>${city.name}</td>
							<td>${city.state}</td>
							<td>${city.costOfLiving}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="panel-body">
			<a href="/list-jobroles">Click here</a> to view all available job roles.
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>