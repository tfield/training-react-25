<#import "/templates/system/common/crafter.ftl" as crafter />
<!DOCTYPE HTML>
<html>
	<head>
		<title>${contentModel.title_t}</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/static-assets/theme/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="/static-assets/theme/assets/css/noscript.css" /></noscript>
		<@crafter.head/>
	</head>
	<body class="is-preload">
		<@crafter.body_top/>

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
				<header id="header" class="alt">
				    <@crafter.h1 $field="title_t">${contentModel.title_t}</@crafter.h1>
					<#--<h1><a href="index.html">Solid State</a></h1>-->
					<nav>
						<a href="#menu">Menu</a>
					</nav>
				</header>
				
                <#include "/templates/web/common/nav.ftl" />
				
				<!-- Banner -->
				<section id="banner">
					<div class="inner">
						<div class="logo"><span class="icon fa-gem"></span></div>
						<@crafter.h2 $field="title_t">${contentModel.title_t}</@crafter.h2>
		                <@crafter.div $field="body_html">${contentModel.body_html}</@crafter.div>
					</div>
				</section>

				<!-- Wrapper -->
				<section id="wrapper">
                    <@crafter.renderComponentCollection 
                        $field="sections_o"
						$itemTag="section"
						$nthItemAttributes={
						"0": { "class":"wrapper spotlight style1"},
						"1": { "class":"wrapper spotlight style2 alt"},
						"2": { "class":"wrapper spotlight style3"},
						"3": { "class":"wrapper  style1 alt"},
						"4": { "class":"wrapper  style1 alt"},
						"5": { "class":"wrapper  style1 alt"}
						}
						/>
				</section>

                <#include "/templates/web/common/footer.ftl" />
			</div>
            <#include "/templates/web/common/scripts.ftl" />
		<@crafter.body_bottom/>

	</body>
</html>
