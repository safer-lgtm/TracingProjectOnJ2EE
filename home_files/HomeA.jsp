<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Tracer</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
	
        <%
if (session.getAttribute("admin")==null){
	response.sendRedirect("/Tracer/templated-industrious/index.html");
}
%>
		<!-- Header -->
			<header id="header">
				<a class="logo" href="index.html">Tracer</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="HomeA.jsp">Home</a></li>
					<li><a href="/Tracer/admin/AdminLTE-3.0.1/index0.jsp ">Mon interface</a></li>
					<!-- <li><a href="/Tracer/indexC.do">Mon interface</a></li> -->
					<!-- /admin/AdminLTE-3.0.1/index0.jsp -->
					<li><a href="/Tracer/deco.do">Deconnexion</a></li>
					<!-- admin/AdminLTE-3.0.1/index0.jsp -->
				</ul>
			</nav>

		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<h1>Tracer</h1>
					<p>Il s'agit d'un site cree par Nizar Jakib, un etudiant en <a href="http://www.bachmek.umi.ac.ma/">Bachlor</a>  sous l'encadrement et le suivi <br />
					 de ses professeurs, il permet de tracer tous les types d'objets poses chez des societes partenaires</p>
				</div>
				<video autoplay loop muted playsinline src="images/banner.mp4"></video>
			</section>

		<!-- Highlights -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
						<h2>Apercu du processus offert par ce site</h2>
						<p>Les differentes phases par lequelles passe l'objet depose dans une societe partenaire  sont expliquees ci-dessous</p>
					</header>
					<div class="highlights">
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-vcard-o"><span class="label">Icon</span></a>
									<h3>Creation du client</h3>
								</header>
								<p>Lors du depot de votre objet chez une societe partenaire un formulaire a remplir vous sera demande pour creer votre compte si c'est pas deja fait</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-files-o"><span class="label">Icon</span></a>
									<h3>Creation de votre objet</h3>
								</header>
								<p> l'objet depose est cree avec ses taches associees</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-floppy-o"><span class="label">Icon</span></a>
									<h3>Consultation</h3>
								</header>
								<p>A present vous pouvez suivre l'avancement de votre objet grace aux donnees d'identification fournies lors de votre depot</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-line-chart"><span class="label">Icon</span></a>
									<h3>Avancement</h3>
								</header>
								<p>Pour consulter l'avancement une connection est requise, cliquer sur menu puis sur login et entrer vos donnees vous apercevrez vos objets en cours, pour plus de details cliquer sur l'oeil ,vous verrez les taches associees a cet objet</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-paper-plane-o"><span class="label">Icon</span></a>
									<h3>Livraison</h3>
								</header>
								<p>Si le traitement s'est bien deroule alors l'etat affichera succes,verifiez votre mail ou votre journal d'appel, notre equipe a du vous contactez pour vous demadner de bien vouloir venir collecter votre objet</p>
							</div>
						</section>
						<section>
							<div class="content">
								<header>
									<a href="#" class="icon fa-qrcode"><span class="label">Icon</span></a>
									<h3>ERREUR</h3>
								</header>
								<p>L'etat devient en rouge ,cela se produit generalement si une piece est manquante .L'equipe a du deja vous contacter, si elle n'a pas pu vous rejoindre, veuillez immediatemnt la comtacter pour en savoir plus sur le probleme, le resoudre et ainsi faire avancer le traitement de votre demande</p>
							</div>
						</section>
					</div>
				</div>
			</section>

		<!-- CTA -->
			<section id="cta" class="wrapper">
				<div class="inner">
					<h2>Rencontrez vous des difficultes?</h2>
					<p>Telephoner au N° +212 6451284 notre equipe est toujours a l'ecoute ou envoyer <br>
					  nous un email a l'adresse bachlorS5@gmail.com on sera toujours heureux de vous repondre</p>
				</div>
			</section>

		<!-- Testimonials -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
						<h2>Remerciements</h2>
						<p>Dessous les remerciements de nos clients satisfaits de nos services partout dans le monde</p>
					</header>
					<div class="testimonials">
						<section>
							<div class="content">
								<blockquote>
									<p>Je suis tres satisfaite des services proposes par ce site</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="images/pic01.jpg" alt="" />
									</div>
									<p class="credit">- <strong>Elisa Trump</strong> <span>China - Shanghai </span></p>
								</div>
							</div>
						</section>
						<section>
							<div class="content">
								<blockquote>
									<p>J'ai oublie d'ajouter un papier a mon Dossier mais l'equipe de support m'a contactee pour l'apporter,continuez a faire de votre mieux</p>
									
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="images/pic03.jpg" alt="" />
									</div>
									<p class="credit">- <strong>Abdleali  Hafid</strong> <span>Maroc - Midelt</span></p>
								</div>
							</div>
						</section>
						<section>
							<div class="content">
								<blockquote>
									<p>Grace a ce site j'ai pu suivre l'avancement de mon produit jusqu'a sa livraison</p>
								</blockquote>
								<div class="author">
									<div class="image">
										<img src="images/pic02.jpg" alt="" />
									</div>
									<p class="credit">- <strong>Zoe Mask</strong> <span>Nigeria - kano</span></p>
								</div>
							</div>
						</section>
					</div>
				</div>
			</section>

		

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>