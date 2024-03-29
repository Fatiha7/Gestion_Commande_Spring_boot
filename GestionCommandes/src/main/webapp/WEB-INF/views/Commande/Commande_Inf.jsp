<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style type="text/css">
/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
 abbr, acronym, address, big, cite, code,
del, dfn, em, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, div,
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

table{
border-collapse: collapse;
	border-spacing: 0;

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
div,label,tr,a{
	margin-top: 0.75rem !important;
	margin-right: 3% !important;
	
}
.p{
  margin-right:10% !important;
 
  
  
}
.col-md-12{
 margin-left:-3rem !important;
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
.h{
color:#808080;
font-family:Aldhabi;
font-size:32px;
}
/* remove default arrow in IE */
select::-ms-expand {
    display:none;
}</style>
</head>
<body>
<div class="container  ">
    <div class="row d-flex ">
        <div class="col-md-12 ">
            <div class="">
                <div class=" p bg-light text-dark ">
                    <div  class="text-center col">	
                    
		
				<div class=" mb-0 h2" >
				<br>
			<h2>Gestion de Commande</h2>
			</div>
<br>
		
		<br><br><br>
			<fieldset  ><!-- disabled -->
			
				<legend class=" h4">Client Info </legend>
				<br>
				<div class="cd-credit-card ">		
				
				<br>
				<div class="half-width row  ">
				<div class="h5 col">Id de client :  </div>
					<div class=" h col">${commandeInf.getClient().getId()}</div>
					<div class="h5 col">Nom : </div>
					<div class=" h col">${commandeInf.getClient().getNom()}</div>
					</div>
					<div class="half-width row  ">
					<div class="h5 col">Prenom : </div>
					<div  class="h col">${commandeInf.getClient().getPrenom()}</div>
					<div class="h5 col">Adresse: </div>
					<div  class="h col">${commandeInf.getClient().getAdresse()}</div>
					</div>
			        <div class="half-width row">
					<div class="h5 col-2">Phone :</div>
					<div class="h col">${commandeInf.getClient().getPhone()}</div>
					</div>
	
			</div>
				<br>
				<legend class=" h4" >Produits info</legend>
				<br>
				<div class="cd-credit-card ">
				<br>
				
				<div class="half-width row  ">
				<div class="h5 col">Id de Produit : </div>
					<div class="h col">${commandeInf.getProduits().getP_ID()}</div>
					<div class="h5 col">Nom de Produit : </div>
					<div class="h col">${commandeInf.getProduits().getPnom()}</div>
					</div>
					<div class="half-width row  ">
					<div class="h5 col">Prix : </div>
					<div  class="h col">${commandeInf.getProduits().getPrix()}</div>
					<div class="h5 col">Quantite: </div>
					<div  class="h col">${commandeInf.getProduits().getQuantite()}</div>
					</div>
					
					</div>
						<br><br><br>
				<div class="cd-credit-card ">
		 		
		 		<div class="half-width row ">
		 			<div class="h5 col-2">Prix Total:</div>
					<div class="h col">${commandeInf.getPrixT()}</div>
						</div>
						<div class="half-width row ">
		 			<div  class="h5 col-2">Date:</div>
					<div class="h col">${commandeInf.getDate()}</div>
						</div>
							
					
				</div>
				<br>
		
				
			</fieldset>		
		

		<br><br>
	</div> <!-- .cd-form -->
	
              </div>      
                    <a href="${pageContext.request.contextPath}/Commande/" class="btn btn-dark btn-lg">Return</a>
                    <a href="${pageContext.request.contextPath}/Commande/Delete/${commandeInf.get_id()}" class="btn btn-dark btn-lg">Delete</a>
                    <a href="${pageContext.request.contextPath}/Commande/Update/${commandeInf.get_id()}" class="btn btn-dark btn-lg">Update</a>
                    
                </div>
            </div>
            <div>
					
				</div>
        </div>
    </div>
    
</body>
</html>