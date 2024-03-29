<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Insert title here</title>
<style type="text/css">
/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)FAB
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
 abbr, acronym, address, big, cite, code,
del, dfn, em, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section, main {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
form{
	 margin-top: 1rem !important;
	 margin-left: -0.25rem !important;
	 /*margin-right: 10% !important;*/
}
.cd-credit-card {
margin-right: 3% !important;
margin-left: 0.25rem !important;
}
.h4 {
	font-style: italic;
	color:#585858;
	text-decoration: underline;
}
h2 {
	font-family: Georgia;
  text-shadow: 2px 2px 5px #808080;
}
input,label,select,a{
	margin-top: 0.75rem !important;
	margin-right: 3% !important;
}

	
.custom-select {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding: 10px 38px 10px 16px;
    background: #fff url("select-arrows.svg") no-repeat right 16px center;
    background-size: 10px;
    transition: border-color .1s ease-in-out,box-shadow .1s ease-in-out;
    border: 1px solid #ddd;
    border-radius: 3px;
}
.custom-select:hover {
    border: 1px solid #999;
}
.custom-select:focus {
    border: 1px solid #999;
    box-shadow: 0 3px 5px 0 rgba(0,0,0,.2);
    outline: none;
}
/* remove default arrow in IE */
select::-ms-expand {
    display:none;
}</style>
</head>
<body>
<div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-12 ">
            <div class="card">
                <div class=" bg-light text-dark">
                    <div  class="text-center col">	
		<s:form method="POST" modelAttribute="commande" action="${pageContext.request.contextPath}/Commande/addCommande">
		
	
				<div class=" mb-0 h2" >
				<br>
			<h2>Gestion de Commande</h2>
			</div>
			<br><br><br>
				
			<fieldset  ><!-- disabled -->
			
					<legend class=" h4">Client Info </legend>
					
					<br><br>
					<s:form method="POST" modelAttribute="Client">
					<div class="cd-credit-card p">
					<div class="half-width row">
					<label for="Client" class="h5 col-2">ID de Client:</label>
					<s:input path="id" type="text"  name="id" class="form-control col" placeholder="id"/>
					<label for="client" class="h5 col-2">Nom:</label>
					<s:input path="nom" type="text"  name="nom" class="form-control col" placeholder="nom de Client"/>	
					
					</div>
					<br>
					<div class="half-width row ">
					<label for="Prenom" class="h5 col-2">Prenom:</label>
					<s:input path="prenom" type="text" name="prenom" class="form-control col" placeholder="Prenom"/>
					<label for="Adresse" class="h5 col-2">Adresse:</label>
					<s:input path="adresse" type="text" name="adresse" class="form-control col" placeholder="Adresse"/>
					</div>
					
					<br>
						<div class="half-width row ">
					<label for="Phone" class="h5 col-2">Phone:</label>
					<s:input path="Phone" type="text" name="Phone" class="form-control col" placeholder="Phone"/>
					</div>
					
					<br>
					<br>
					
				</div><br>
				<!-- .cd-credit-card -->
				<legend class=" h4" >Produits info</legend>
				
				<div class="cd-credit-card p ">
				<br><br>	
					<s:form method="POST" modelAttribute="produits">
					<div class="half-width row">
					<label for="Produit" class="h5 col-2">ID de Produit:</label>
					<s:input path="p_ID" type="text"  name="p_ID" class="form-control col" placeholder="id"/>
					<label for="Produit" class="h5 col-2">Produit:</label>
					<s:input path="Pnom" type="text"  name="Pnom" class="form-control col" placeholder="nom de produit"/>	
					
					</div>
					<br>
					<div class="half-width row ">
					<label for="Prix" class="h5 col-2">Prix:</label>
					<s:input path="prix" type="text" name="Prix" class="form-control col" placeholder="prix"/>
					<label for="Quentite" class="h5 col-2">Quantite:</label>
					<s:input path="quantite" type="text" name="quantite" class="form-control col" placeholder="Quantite"/>
					</div>
					<br>
					</s:form>	
					<br>
					</div>
					<br><br><br>
					</s:form>
			<div>
			<br><br>
			
					<ul class="cd-payment-gateways">
						
						<li>
						
							<br>
							</li>
							
						<li>
						
						
						</li>
					</ul>  <!-- .cd-payment-gateways -->
				</div>
				<br>
		
			
			<input type="submit" value="Save" class="btn btn-dark btn-lg">
			<a href="${pageContext.request.contextPath}/Commande/" class="btn btn-dark btn-lg">Cancel</a>
		<br><br>	
					
			</fieldset>	
		</s:form><br><br>	
		</div>
</div>
		
	</div> <!-- .cd-form -->
              </div>      
                    
       </div>             
               
            </div>

    
</body>
</html>