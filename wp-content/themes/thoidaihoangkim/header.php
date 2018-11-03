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
    <div id="opal-masthead" class="site-header header-v3" role="banner">

        <div class="header-main">
            <div id="opal-logo" class="logo">

                <a href="http://www.comspace.vn/" class="custom-logo-link" rel="home" itemprop="url"><img width="291" height="40" src="http://www.comspace.vn/wp-content/uploads/2018/08/logo-comspace-x.png" class="custom-logo" alt="Comspace – Co-working space in Ho Chi Minh City" itemprop="logo"></a>
            </div>

            <section id="opal-mainmenu" class="opal-mainmenu light-megamenu hidden-xs hidden-sm">
                <div class="inner navbar-mega-simple"><nav data-duration="400" class="hidden-xs hidden-sm opal-megamenu slide animate navbar navbar-mega" role="navigation">

                        <div class="collapse navbar-collapse navbar-mega-collapse nopadding"><ul id="primary-menu" class="nav navbar-nav megamenu"><li id="menu-item-15775" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-15314 current_page_item active menu-item-15775 level-0 active "><a href="http://www.comspace.vn/">Trang chủ</a></li>
                                <li id="menu-item-15786" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15786 level-0"><a href="http://www.comspace.vn/gioi-thieu/">Giới thiệu</a></li>
                                <li id="menu-item-15779" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15779 level-0"><a href="http://www.comspace.vn/dichvu/">Các dịch vụ</a></li>
                                <li id="menu-item-15820" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15820 level-0"><a href="http://www.comspace.vn/tin-tuc/">Tin tức</a></li>
                                <li id="menu-item-15999" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15999 level-0"><a href="http://www.comspace.vn/dang-ky/">Đăng ký</a></li>
                                <li id="menu-item-15780" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-15780 level-0"><a href="http://www.comspace.vn/lienhe/">Liên hệ</a></li>
                            </ul></div></nav></div>
            </section>
            <div class="header-right hidden-xs hidden-sm">
                <h3 class="widget-title"> social</h3>
                <ul class="social list-unstyled bo-sicolor bo-social-icons">
                    <li>
                        <a href="https://www.facebook.com/comspacevn/" class="bo-social-facebook radius-x">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="https://www.facebook.com/comspacevn/" class="facebook">
                            <span> Facebook</span>
                        </a>
                    </li>
                </ul>			<div class="textwidget"><p><span class="color-primary">(+84) 938 12 1839</span></p>
                </div>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-xs-12">
                <div class="logo-outter top-optc clearfix">
                    <a href="#" class="logo">
                        <img src="<?php echo get_template_directory_uri() ."/images/logo-01.png"?>" alt="">
                    </a>
                </div>
                <div class="header-txt">
                    <div class="header-txt-inner">
                        <h1 class="top-optc">Discover</h1>
                        <h2 class="top-optc">Your Perfect Home</h2>
                        <p class="top-optc">Proin gravida nibh vel velit auctor alir.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xs-12 form-outter visibility">
                <div class="form-content">
                    <div class="form-content-inner">
                        <p>Start to your</p>
                        <h4>New Journey</h4>
                    </div>
                    <span class="tagline">Gauris consectetur libero sit ameter patorsb eleifend quam. </span>
                    <i class="or">Or</i>
                </div>
                <div class="form-wrapper">
<!--                    <form id="requestform" method="post">-->
<!--                        <fieldset>-->
<!--                            <input type="text" placeholder="Full Name*" class="form-style" required name="fullname" >-->
<!--                        </fieldset>-->
<!--                        <fieldset>-->
<!--                            <input type="text" placeholder="Email*" class="form-style" required name="email" >-->
<!--                        </fieldset>-->
<!--                        <fieldset>-->
<!--                            <input type="text" placeholder="Phone Number*" class="form-style" required name="pnumber">-->
<!--                        </fieldset>-->
<!--                        <fieldset class="lastchild">-->
<!--                            <select class="form-style" name="state">-->
<!--                                <option selected>State / Province</option>-->
<!--                                <option value="Alabama">Alabama</option>-->
<!--                                <option value="Alaska">Alaska</option>-->
<!--                                <option value="Arizona">Arizona</option>-->
<!--                                <option value="Arkansas">Arkansas</option>-->
<!--                                <option value="California">California</option>-->
<!--                                <option value="Colorado">Colorado</option>-->
<!--                                <option value="Connecticut">Connecticut</option>-->
<!--                                <option value="Delaware">Delaware</option>-->
<!--                                <option value="District of Columbia">District of Columbia</option>-->
<!--                                <option value="Florida">Florida</option>-->
<!--                                <option value="Georgia">Georgia</option>-->
<!--                                <option value="Hawaii">Hawaii</option>-->
<!--                                <option value="Idaho">Idaho</option>-->
<!--                                <option value="Illinois">Illinois</option>-->
<!--                                <option value="Indiana">Indiana</option>-->
<!--                                <option value="Iowa">Iowa</option>-->
<!--                                <option value="Kansas">Kansas</option>-->
<!--                                <option value="Kentucky">Kentucky</option>-->
<!--                                <option value="Louisiana">Louisiana</option>-->
<!--                                <option value="Maine">Maine</option>-->
<!--                                <option value="Maryland">Maryland</option>-->
<!--                                <option value="Massachusetts">Massachusetts</option>-->
<!--                                <option value="Michigan">Michigan</option>-->
<!--                                <option value="Minnesota">Minnesota</option>-->
<!--                                <option value="Mississippi">Mississippi</option>-->
<!--                                <option value="Missouri">Missouri</option>-->
<!--                                <option value="Montana">Montana</option>-->
<!--                                <option value="Nebraska">Nebraska</option>-->
<!--                                <option value="Nevada">Nevada</option>-->
<!--                                <option value="New Hampshire">New Hampshire</option>-->
<!--                                <option value="New Jersey">New Jersey</option>-->
<!--                                <option value="New Mexico">New Mexico</option>-->
<!--                                <option value="New York">New York</option>-->
<!--                                <option value="North Carolina">North Carolina</option>-->
<!--                                <option value="North Dakota">North Dakota</option>-->
<!--                                <option value="Ohio">Ohio</option>-->
<!--                                <option value="Oklahoma">Oklahoma</option>-->
<!--                                <option value="Oregon">Oregon</option>-->
<!--                                <option value="Pennsylvania">Pennsylvania</option>-->
<!--                                <option value="Rhode Island">Rhode Island</option>-->
<!--                                <option value="South Carolina">South Carolina</option>-->
<!--                                <option value="South Dakota">South Dakota</option>-->
<!--                                <option value="Tennessee">Tennessee</option>-->
<!--                                <option value="Texas">Texas</option>-->
<!--                                <option value="Utah">Utah</option>-->
<!--                                <option value="Vermont">Vermont</option>-->
<!--                                <option value="Virginia">Virginia</option>-->
<!--                                <option value="Washington">Washington</option>-->
<!--                                <option value="West Virginia">West Virginia</option>-->
<!--                                <option value="Wisconsin">Wisconsin</option>-->
<!--                                <option value="Wyoming">Wyoming</option>-->
<!--                            </select>-->
<!--                        </fieldset>-->
<!--                        <input type="submit" value="Contact Request" class="btn">-->
<!--                    </form>-->
                    <?php echo do_shortcode( '[contact-form-7 id="15" title="Contact head"]' );?>
                    <div class="alert alert-success" role="alert" style=" display:none">Your request has been recieved.</div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- END OF HEADER -->


