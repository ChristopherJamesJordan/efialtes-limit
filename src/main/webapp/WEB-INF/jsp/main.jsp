<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>E F I A L T E S</title>

<%@include file="../jspf/styles.jspf"%>

<style>
video#bgvid {
	position: fixed;
	top: 50%;
	left: 50%;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -100;
	-ms-transform: translateX(-50%) translateY(-50%);
	-moz-transform: translateX(-50%) translateY(-50%);
	-webkit-transform: translateX(-50%) translateY(-50%);
	transform: translateX(-50%) translateY(-50%);
	background-size: cover;
}
</style>

</head>
<body ng-app="efialtes" class="ng-cloak">

	<video autoplay loop id="bgvid" muted> <source
		src="/resources/video/main.webm" type="video/webm"></video>


	<div class="container">

		<%@include file="../jspf/navbar.jspf"%>

		<div class="row">
			<div class="col-md-6">
				

				<div ng-controller="userController as ctrl" class="well bs-component" style="background-color: rgba(62, 63, 58, 0.5); color: #fff;">
		
					<form ng-submit="ctrl.submit()" name="register" class="form-horizontal">
		
		
						<legend>¡Regístrate!</legend>

						<div class="form-group">
							<label for="email" class="col-lg-2 control-label">Email</label>
							<div class="col-lg-10">
								<input type="email" ng-model="ctrl.user.email" id="email"
							class="form-control" placeholder="alguien@mail.com" required />
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-lg-2 control-label">Contraseña</label>
							<div class="col-lg-10">
								<input type="password" ng-model="ctrl.user.password" id="password"
							class="form-control" placeholder="Contraseña" required />
							</div>
						</div>
						
						<div class="form-group">
							<label for="nickname" class="col-lg-2 control-label">Alias</label>
							<div class="col-lg-10">
								<input type="text" ng-model="ctrl.user.nickname" id="nickname"
							class="form-control" placeholder="Anonimo20" required />
							
							<span class="help-block">"La ventaja del anonimato es la privacidad, su desventaja la soledad." - Luis Gabriel Carrillo Navas</span>
							
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2">
								<input type="submit" value="¡Registrarme!" class="btn btn-primary btn-block"
							ng-disabled="register.$invalid">
							
								<span class="help-block">Al registrarme acepto las <a>Condiciones de Uso y Seguridad</a>.</span>

							</div>
						
					        
					    </div>
						

		
					</form>
		
				</div>
				<!-- /ng-controller -->				
				
				
			</div> <!-- /col-md-4 -->
		</div> <!-- /row -->

	</div>
	<!-- /container -->



	<%@include file="../jspf/js.jspf"%>


</body>
</html>