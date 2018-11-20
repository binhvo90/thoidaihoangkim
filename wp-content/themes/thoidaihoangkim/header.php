<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package thoidaihoangkim
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<?php wp_head(); ?>
	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-5PRZV8H');</script>
	<!-- End Google Tag Manager -->
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-124028897-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-124028897-1');
	</script>
	<!-- Facebook Pixel Code -->
	<script>
	  !function(f,b,e,v,n,t,s)
	  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
	  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
	  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
	  n.queue=[];t=b.createElement(e);t.async=!0;
	  t.src=v;s=b.getElementsByTagName(e)[0];
	  s.parentNode.insertBefore(t,s)}(window, document,'script',
	  'https://connect.facebook.net/en_US/fbevents.js');
	  fbq('init', '1283729115103114');
	  fbq('track', 'PageView');
	</script>
	<noscript><img height="1" width="1" style="display:none"
	  src="https://www.facebook.com/tr?id=1283729115103114&ev=PageView&noscript=1"
	/></noscript>
	<!-- End Facebook Pixel Code -->
</head>

<body <?php body_class(); ?>>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5PRZV8H"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!-- LOADER -->
<div id="preloader-1">
    <div id="status">
        <div class='bullet-1'></div>
    </div>
</div>
<!-- END OF LOADER -->
<!-- HEADER -->
<header class="banner header-banner">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-xs-12">
                <div class="logo-outter top-optc clearfix">
                    <a href="<?php echo get_home_url() ?>" class="logo">
                        <img src="<?php echo get_template_directory_uri() ."/images/logo-01.png"?>" alt="">
                    </a>
                </div>
                <div class="header-txt">
                    <div class="header-txt-inner">
                        <h1 class="top-optc">Khám Phá</h1>
                        <h2 class="top-optc">Ngôi Nhà Hoàn Hảo Của Bạn</h2>
                        <p class="top-optc">Thời Đại Hoàng Kim</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xs-12 form-outter visibility">
                <div class="form-content">
                    <div class="form-content-inner">
                        <p>Bắt đầu</p>
                        <h4>HÀNH TRÌNH</h4>
                    </div>
                    <span class="tagline">Thời Đại Hoàng Kim</span>
                    <i class="or">Hay</i>
                </div>
                <div class="form-wrapper">
                    <?php echo do_shortcode( '[contact-form-7 id="15" title="Contact head"]' );?>
                    <div class="alert alert-success" role="alert" style=" display:none">Your request has been recieved.</div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- END OF HEADER -->


