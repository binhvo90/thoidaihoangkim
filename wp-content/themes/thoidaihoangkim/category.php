<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 10/29/2018
 * Time: 4:31 PM
 */

get_header(); ?>

    <section id="primary" class="content-area">
        <div id="content" class="site-content" role="main">

            <section class="section-listing">
                <div class="container">
                    <?php
                    $cat_id = get_the_ID();
                    ?>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="section-heading">
                                <h2><?php echo get_cat_name(1);?></h2>
                            </div>
                        </div>
                    </div>
                    <?php

                    $query = array(
                        'posts_per_page' => 8,
                        'post_type'      => 'post',
                        'category_id'  => $cat_id,
                        'orderby'        => 'date',
                        'order'          => 'DESC'
                    );

                    $featured_home = new WP_Query( $query );

                    if( $featured_home->have_posts() ) {

                        ?>

                        <div class="row list-row">
                            <?php while ( $featured_home->have_posts() ) : $featured_home->the_post();
                                $image = get_field('image', 'category_' . $cat_id);
                                $bedrooms = get_field('bedrooms', 'category_' . $cat_id);
                                $baths = get_field('baths', 'category_' . $cat_id);
                                $parking = get_field('parking', 'category_' . $cat_id);
                                $sq_ft = get_field('sq_ft', 'category_' . $cat_id);
                                $money = get_field('money', 'category_' . $cat_id);
                                ?>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="property-wrapper">
                                        <div class="property-img">
                                            <a href="<?php echo get_permalink() ?>">
                                                <img src="<?php echo get_the_post_thumbnail_url() ?>" class="img-responsive img-responsive-post">
                                            </a>
                                        </div>
                                        <div class="property-features">
                                            <ul class="clearfix">
                                                <li><p><?php echo $sq_ft ?> Sq Ft </p></li>
                                                <li><p><?php echo $bedrooms ?> Phòng ngủ </p></li>
                                                <li><p><?php echo $baths ?> Phòng tắm</p></li>
                                                <li><p><?php echo $parking ?> Bãi đỗ xe</p></li>
                                            </ul>
                                        </div>
                                        <div class="property-name clearfix">
                                            <div class="name">
                                                <p><?php echo get_the_title() ?></p>
                                                <span><?php echo $featured_home->description ?></span>
                                            </div>
                                            <div class="price">
                                                <p><sup>$</sup>600,000</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            endwhile;
                            ?>
                        </div>
                        <?php
                    }
                    wp_reset_postdata();
                    ?>
                </div>
            </section>
        </div><!-- #content -->
    </section><!-- #primary -->
    <section class="section-contact banner contact-bg">
        <div class="container">
            <div class="row contact-row">
                <div class="col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                    <div class="contact-wrp">
                        <div class="section-heading">
                            <h2>Liên Hệ</h2>
                        </div>
                        <div class="form-wrapper">
                            <?php echo do_shortcode( '[contact-form-7 id="14" title="Contact form 1"]' );?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php
get_footer();