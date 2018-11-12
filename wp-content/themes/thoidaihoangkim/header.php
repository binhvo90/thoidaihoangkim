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
</head>

<body <?php body_class(); ?>>
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
                        <h2 class="top-optc">Ngôi Nhà Của Bạn</h2>
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


