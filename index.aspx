﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/index.aspx.cs" Inherits="index" CodeBehind="~/index.aspx.cs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Auto Agencia CR</title>
	
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
 

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="Login" class="index">
    <form id="form1" runat="server">
        <div>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
				
				
				    <a class="nav navbar-nav navbar-right" href="index.aspx"><img src="img/logo.png" class="img-responsive" alt="Auto Agencia CR" style="width:253px;height:50px;"></a> 
				
				
                    <!--<a class="navbar-brand page-scroll" href="#Login">Start Bootstrap</a>-->
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="hidden">
                            <a href="#Login"></a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#Login">Login</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#Ultimos">Ultimos</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#Busqueda">Busqueda</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#Contactenos">Contactenos</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        <!-- Login -->
        <Header>
            <div class="container">
                <div class="intro-text">
                    <div class="intro-lead-in">Bienvenido a Auto Agencia CR!</div>

                    <div></div>
                    <asp:Label ID="Label2" runat="server" Text="LOGIN" class="intro-heading"></asp:Label>
				    <center>
					    <div class="row">
		
							    <div class="col-md-4 col-md-offset-4">
							
								    
							
								    <form name="login" id="LoginForm" novalidate>
									    <div class="form-group-sm">
                                            <asp:TextBox ID="txtUsuarioLogin" runat="server" class="form-control" placeholder="Email *" required data-validation-required-message="Ingrese su usuario"></asp:TextBox>
                                            <%--<input type="email" class="form-control" placeholder="Email *" id="txtUsuarioLogin" required data-validation-required-message="Ingrese su usuario">--%>
										    <p class="help-block text-danger"></p>
									    </div>
									    <div class="form-group">
                                            <asp:TextBox ID="txtPasswordLogin" runat="server" class="form-control" placeholder="Password *" required data-validation-required-message="Ingrese su contrasena."></asp:TextBox>
                                            <%--<input type="password" class="form-control" placeholder="Password *" id="txtPasswordLogin" required data-validation-required-message="Ingrese su contrasena.">--%>
										    <p class="help-block text-danger"></p>
									    </div>
									    <div class="clearfix"></div>
									    <div id="success"></div>

                                        <%-- ================BOTON PARA LOGIN================ --%>                                        
                                        <%--<button type="submit" class="btn btn-xl">Login</button>--%>
                                        <asp:Button ID="btnLogin" runat="server" Text="Ingresar" OnClick="btnLogin_Click" class="btn btn-xl"/>

                                        

                                        <%-- ================BOTON PARA registrarse================ --%>                                        
                                        <%--<button type="submit" class="btn btn-xl">Login</button>--%>
                                        <%--<asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" class="btn-reg"></asp:Button>--%>

                                    </form>
							    </div>				
					    </div>
				    </center>
			    </div>
            </div>
        </Header>

        <!-- Ultimos Section -->
        <section id="Ultimos" class="bg-light-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Ultimos</h2>
                        <h3 class="section-subheading text-muted">Vehiculos mas recientes.</h3>
                    </div>
                </div>
			
			    <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x text-primary"></i>
                            <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
					    <div class="container" style="width:300px;height:175px;overflow:hidden">
					
					    <img src="img/carro1.jpg" class="img-responsive">
					
					
					    </div>
                        <h4 class="service-heading">BMW - 530</h4>
                        <p class="text-muted">Asientos de cuero, luces de xenon, aros de lujo, 3000 cc..</p>
					
					    <!-- Trigger the modal with a button -->
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Ver</button>
					
                    </div>
				
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x text-primary"></i>
                            <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
					    <div class="container" style="width:300px;height:175px;overflow:hidden">
					
					    <img src="img/carro2.jpg" class="img-responsive">
					
					
					    </div>
                        <h4 class="service-heading">Mercedez Benz - C63 AMG</h4>
                        <p class="text-muted">Asientos de cuero, luces de xenon, aros de lujo, 3000 cc..</p>
					
					    <!-- Trigger the modal with a button -->
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Ver</button>
					
                    </div>
                
				    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x text-primary"></i>
                            <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
					    <div class="container" style="width:300px;height:175px;overflow:hidden">
					
					    <img src="img/carro3.jpg" class="img-responsive">
					
					
					    </div>
                        <h4 class="service-heading">Bentley - Continental GT V8</h4>
                        <p class="text-muted">Asientos de cuero, luces de xenon, aros de lujo, 3000 cc..</p>
					
					    <!-- Trigger the modal with a button -->
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Ver</button>
					
                    </div>
                </div>
			    <br></br>
			
            </div>
        </section>

        <!-- Busqueda Grid Section -->
        <section id="Busqueda" >
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Busqueda</h2>
                        <h3 class="section-subheading text-muted">Aqui se buscan los autos</h3>
                    </div>
                </div>

                <div>

                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />

                    <asp:Literal ID="Literal1" runat="server">



                    </asp:Literal>

                </div>
			
			
			
			    <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x text-primary"></i>
                            <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
					    <div class="container" style="width:300px;height:175px;overflow:hidden">
					
					    <img src="img/carro1.jpg" class="img-responsive">
					
					
					    </div>
                        <h4 class="service-heading">BMW - 530</h4>
                        <p class="text-muted">Asientos de cuero, luces de xenon, aros de lujo, 3000 cc..</p>
					
					    <!-- Trigger the modal with a button -->
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Ver</button>
					
                    </div>
				
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x text-primary"></i>
                            <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
					    <div class="container" style="width:300px;height:175px;overflow:hidden">
					
					    <img src="img/carro2.jpg" class="img-responsive">
					
					
					    </div>
                        <h4 class="service-heading">Mercedez Benz - C63 AMG</h4>
                        <p class="text-muted">Asientos de cuero, luces de xenon, aros de lujo, 3000 cc..</p>
					
					    <!-- Trigger the modal with a button -->
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Ver</button>
					
                    </div>
                
				    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fa fa-circle fa-stack-2x text-primary"></i>
                            <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
					    <div class="container" style="width:300px;height:175px;overflow:hidden">
					
					    <img src="img/carro3.jpg" class="img-responsive">
					
					
					    </div>
                        <h4 class="service-heading">Bentley - Continental GT V8</h4>
                        <p class="text-muted">Asientos de cuero, luces de xenon, aros de lujo, 3000 cc..</p>
					
					    <!-- Trigger the modal with a button -->
					    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Ver</button>
					
                    </div>
                </div>
			
			
            </div>
        </section>
	
	    <!-- Contactenos Section -->
        <section id="Contactenos" class="bg-light-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Contactenos</h2>
                        <h3 class="section-subheading text-muted">.</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <form name="sentMessage" id="ContactenosForm" novalidate>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Nombre *" id="name" required data-validation-required-message="Please enter your name.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input type="tel" class="form-control" placeholder="Telefono *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <textarea class="form-control" placeholder=" Mensaje *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="col-lg-12 text-center">
                                    <div id="success"></div>
                                    <button type="submit" class="btn btn-xl">Enviar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <span class="copyright">Copyright &copy; Your Website 2014</span>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-inline quicklinks">
                            <li><a href="#">Privacy Policy</a>
                            </li>
                            <li><a href="#">Terms of Use</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Busqueda Modals -->
        <!-- Use the modals below to showcase details about your Busqueda projects! -->
	
	    <!-- Modal -->
		
		<!-- ====POPUP==== -->
					    <div id="myModal" class="modal fade" role="dialog">
					      <div class="modal-dialog modal-lg">

						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
							    <button type="button" class="close" data-dismiss="modal">&times;</button>
							    <h4 class="modal-title">Modal Header</h4>
						      </div>
						      <div class="modal-body">
							  
							  <!-- ====IMAGE SLIDER==== -->
							  
								<div class="row">
								
								<div class="col-lg-6">
							    
								<div id="carousel-example-generic" class="carousel slide" >
								  <!-- Indicators -->
								  <ol class="carousel-indicators">
									<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
									<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								  </ol>
								 
								  <!-- Wrapper for slides -->
								  <div class="container" style="width:400px;height:350px;overflow:hidden">
								  <div class="carousel-inner">
									<div class="item active">
									  <img src="img/carro1.jpg" class="img-responsive" alt="...">
									  <div class="carousel-caption">
										  
									  </div>
									</div>
									<div class="item">
									  <img src="img/carro2.jpg" class="img-responsive" alt="...">
									  <div class="carousel-caption">
										  
									  </div>
									</div>
									<div class="item">
									  <img src="img/carro3.jpg" class="img-responsive" alt="...">
									  <div class="carousel-caption">
										  
									  </div>
									</div>
								  </div>
								  </div>
								 
								  <!-- Controls -->
								  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
								  </a>
								  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
								  </a>
								</div> <!-- Carousel -->
								
								</div>
								
								<div class="col-lg-4">
								
								Marca:
								</br>
								Modelo:
								</br>
								Ano:
								</br>
								Combistible:
								</br>
								Kilometraje:
								</br>
								Transmision:
								</br>
								Terminacion de Placa:
								</br>
							
								
								</div>
								
								
						      </div>
							  
							  <br></br>
							  
							  <div class="row">
							  
							  <div class="col-md-4">
							  
							  <button type="button" class="btn btn-primary" >Agregar a Favoritos</button>
							  
							  </div>
							  
							  </div>
							  
							  <br></br>
							  
						      <div class="modal-footer">
							    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div>

					      </div>
					    </div>
						</div>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/cbpAnimatedHeader.js"></script>

        <!-- Contactenos Form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/Contactenos_me.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/agency.js"></script>
    
        </div>
    </form>
</body>
</html>
