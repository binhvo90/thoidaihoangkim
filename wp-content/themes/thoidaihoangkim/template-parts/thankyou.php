<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package thoidaihoangkim
 */
/*
 Template Name: Thankyou
 */

get_header();
?>
    <div class="jumbotron text-xs-center">
        <div class="container">
            <h1 class="display-3">Thank You!</h1>
            <p class="lead"><strong>Chúng tôi sẽ Liên Hệ lại bạn sớm nhất.</p>
            <hr>
            <p>
                Nếu bạn có vấn đề? <a href="<?php echo get_page_link(246) ?>">Liên Hệ</a>
            </p>
            <p class="lead">
                <a class="btn btn-primary btn-sm" href="<?php echo get_home_url() ?>" role="button">Trang Chủ</a>
            </p>
        </div>
    </div>
<?php
get_footer();