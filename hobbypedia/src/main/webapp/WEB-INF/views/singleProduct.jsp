<div class="container">

	<!-- Breadcrumb -->
	<div class="row">
		
		<div class="col-xs-12">
		
			
			<ol class="breadcrumb">
			
				<li><a href="${contextRoot}/home">Home</a></li>
				<li><a href="${contextRoot}/show/all/hobbies">Hobbies</a></li>
				<li class="active">${product.name}</li>
			
			</ol>
		
		
		</div>
	
	
	</div>
	
	
	<div class="row">
	
		<!-- Display the product image -->
		<div class="col-xs-12 col-sm-4">
		
			<div class="thumbnail">
							
				<img src="${images}/${product.code}.jpg" class="img img-responsive"/>
						
			</div>
		
		</div>
	
		
		<!-- Display the product description -->	
		<div class="col-xs-12 col-sm-8">
		
			<h3>${product.name}</h3>
			<hr/>
			
			<p>${product.description}</p>
			<hr/>
			
			<h4>Subscription Charges: <strong> CAD ${product.unitPrice} /-</strong></h4>
			<hr/>
			
			
			
			<c:choose>
				
				<c:when test="${product.quantity < 1}">
				
					<h6>Followers: <span style="color:black">0</span></h6>
					
				</c:when>
				<c:otherwise>				
					
					<h6>Followers: ${product.quantity}</h6>
						
				</c:otherwise>
			
			</c:choose>
			
			
			<security:authorize access="isAnonymous() or hasAuthority('USER')">	

			<c:choose>
				
				<c:when test="${product.quantity < 1}">
				
					<a href="javascript:void(0)" class="btn btn-success disabled"><strike>
					<span class="glyphicon glyphicon-shopping-cart"></span> Add to My Hobbies</strike></a>
					
				</c:when>
				<c:otherwise>				
				
				<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-danger">
				<span class="glyphicon glyphicon-heart"></span> Add to My Hobbies</a>
				
				
				
						
				</c:otherwise>
			
			</c:choose>
			</security:authorize>
			
			
			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-success">
				<span class="glyphicon glyphicon-pencil"></span> Edit</a>
			</security:authorize>	
						
			

			<a href="${contextRoot}/show/all/hobbies" class="btn btn-warning">
				Continue Exploring</a>
					
		</div>

	
	</div>

</div>