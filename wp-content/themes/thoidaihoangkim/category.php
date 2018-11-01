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
                                                <img src="<?php echo get_the_post_thumbnail_url() ?>" class="img-responsive">
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
                            <h2>Contact us</h2>
                        </div>
                        <div class="form-wrapper">
                            <form id="contactform" method="post" novalidate="novalidate">
                                <fieldset>
                                    <input type="text" placeholder="Full Name*" class="form-style" required="" name="fullname">
                                </fieldset>
                                <fieldset>
                                    <input type="text" placeholder="Email*" class="form-style" required="" name="email">
                                </fieldset>
                                <fieldset>
                                    <input type="text" placeholder="Phone Number*" class="form-style" required="" name="pnumber">
                                </fieldset>
                                <fieldset class="lastchild">
                                    <select class="form-style" name="state">
                                        <option selected="">State / Province*</option>
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
                                <input type="submit" value="Submit Now" class="btn">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php
get_footer();