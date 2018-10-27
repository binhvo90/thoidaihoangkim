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
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-xs-12">
                <div class="logo-outter top-optc clearfix">
                    <a href="#" class="logo">
                        <img src="images/logo-01.png" alt="">
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
                    <form id="requestform" method="post">
                        <fieldset>
                            <input type="text" placeholder="Full Name*" class="form-style" required name="fullname" >
                        </fieldset>
                        <fieldset>
                            <input type="text" placeholder="Email*" class="form-style" required name="email" >
                        </fieldset>
                        <fieldset>
                            <input type="text" placeholder="Phone Number*" class="form-style" required name="pnumber">
                        </fieldset>
                        <fieldset class="lastchild">
                            <select class="form-style" name="state">
                                <option selected>State / Province</option>
                                <option value="Alabama">Alabama</option>
                                <option value="Alaska">Alaska</option>
                                <option value="Arizona">Arizona</option>
                                <option value="Arkansas">Arkansas</option>
                                <option value="California">California</option>
                                <option value="Colorado">Colorado</option>
                                <option value="Connecticut">Connecticut</option>
                                <option value="Delaware">Delaware</option>
                                <option value="District of Columbia">District of Columbia</option>
                                <option value="Florida">Florida</option>
                                <option value="Georgia">Georgia</option>
                                <option value="Hawaii">Hawaii</option>
                                <option value="Idaho">Idaho</option>
                                <option value="Illinois">Illinois</option>
                                <option value="Indiana">Indiana</option>
                                <option value="Iowa">Iowa</option>
                                <option value="Kansas">Kansas</option>
                                <option value="Kentucky">Kentucky</option>
                                <option value="Louisiana">Louisiana</option>
                                <option value="Maine">Maine</option>
                                <option value="Maryland">Maryland</option>
                                <option value="Massachusetts">Massachusetts</option>
                                <option value="Michigan">Michigan</option>
                                <option value="Minnesota">Minnesota</option>
                                <option value="Mississippi">Mississippi</option>
                                <option value="Missouri">Missouri</option>
                                <option value="Montana">Montana</option>
                                <option value="Nebraska">Nebraska</option>
                                <option value="Nevada">Nevada</option>
                                <option value="New Hampshire">New Hampshire</option>
                                <option value="New Jersey">New Jersey</option>
                                <option value="New Mexico">New Mexico</option>
                                <option value="New York">New York</option>
                                <option value="North Carolina">North Carolina</option>
                                <option value="North Dakota">North Dakota</option>
                                <option value="Ohio">Ohio</option>
                                <option value="Oklahoma">Oklahoma</option>
                                <option value="Oregon">Oregon</option>
                                <option value="Pennsylvania">Pennsylvania</option>
                                <option value="Rhode Island">Rhode Island</option>
                                <option value="South Carolina">South Carolina</option>
                                <option value="South Dakota">South Dakota</option>
                                <option value="Tennessee">Tennessee</option>
                                <option value="Texas">Texas</option>
                                <option value="Utah">Utah</option>
                                <option value="Vermont">Vermont</option>
                                <option value="Virginia">Virginia</option>
                                <option value="Washington">Washington</option>
                                <option value="West Virginia">West Virginia</option>
                                <option value="Wisconsin">Wisconsin</option>
                                <option value="Wyoming">Wyoming</option>
                            </select>
                        </fieldset>
                        <input type="submit" value="Contact Request" class="btn">
                    </form>
                    <div class="alert alert-success" role="alert" style=" display:none">Your request has been recieved.</div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- END OF HEADER -->
