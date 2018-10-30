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

get_header();
?>

    <!-- SECTION LISTING -->
    <section class="section-listing">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-heading">
                        <h2>Property Listing</h2>
                    </div>
                </div>
            </div>
            <div class="row list-row">
                <?php
                $categories = get_categories(array(
                    'orderby' => 'name',
                    'order' => 'ASC'
                ));

                foreach ($categories as $category) {
                    $image = get_field('image', 'category_' . $category->term_id);
                    $bedrooms = get_field('bedrooms', 'category_' . $category->term_id);
                    $baths = get_field('baths', 'category_' . $category->term_id);
                    $parking = get_field('parking', 'category_' . $category->term_id);
                    $sq_ft = get_field('sq_ft', 'category_' . $category->term_id);
                    $money = get_field('money', 'category_' . $category->term_id);
                    ?>
                    <!--                    get_category_link( $category->term_id-->
                    <div class="col-sm-6 col-xs-12">
                        <div class="property-wrapper">
                            <div class="property-img">
                                <img src="<?php echo !empty($image) ? $image['url'] : "" ?>" alt=""
                                     class="img-responsive">
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
                                    <p><?php echo $category->name ?></p>
                                    <span><?php echo $category->description ?></span>
                                </div>
                                <div class="price">
                                    <p><?php echo $money ?><sup>đ</sup></p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <!-- END OF SECTION LISTING -->

    <!-- SECTION BENEFITS -->
    <section class="section-benefits banner benefits-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-heading">
                        <h2>Our Benefits</h2>
                    </div>
                </div>
            </div>
            <div class="row benefits-row">
                <div class="col-sm-4 col-xs-12">
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <div class="small-circle mirror-icon "></div>
                            <p>Aenean a enim nibh. </p>
                            <span>Sauris consectetur libero, sit amet eleifend quam. </span>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <div class="small-circle hands-icon "></div>
                            <p>Benean a enim nibh. </p>
                            <span>Gauris consectetur libero, sit amet eleifend quam.</span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="ver-height">
                        <div class="benefit-outter">
                            <div class="big-circle building-icon"></div>
                            <p>Oenean a enim nibh.</p>
                            <span>Mauris consectetur libero, sit amet eleifend quam. </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <div class="small-circle car-icon"></div>
                            <p>Menean a enim nibh.</p>
                            <span>Bauris consectetur libero, sit amet eleifend quam.</span>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <div class="small-circle people-icon"></div>
                            <p>Senean a enim nibh.</p>
                            <span>Fauris consectetur libero, sit amet eleifend quam.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END OF SECTION BENEFITS -->

    <!-- SECTION STRUCTURE -->
    <section class="section-structure">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-heading">
                        <h2>Design Structure</h2>
                    </div>
                </div>
            </div>
            <div class="row structure-row">
                <div class="col-sm-5 col-xs-12">
                    <div class="structure-content clearfix">
                        <div class="structure-icon icon-01"></div>
                        <div class="structure-txt">
                            <h3>Tenean enim nibh</h3>
                            <p>Gauris consectetur libero, sit amet eleifend quam. </p>
                        </div>
                    </div>
                    <div class="structure-content clearfix">
                        <div class="structure-icon icon-02"></div>
                        <div class="structure-txt">
                            <h3>Tenean enim nibh</h3>
                            <p>Gauris consectetur libero, sit amet eleifend quam. </p>
                        </div>
                    </div>
                    <div class="structure-content clearfix">
                        <div class="structure-icon icon-03"></div>
                        <div class="structure-txt">
                            <h3>Tenean enim nibh</h3>
                            <p>Gauris consectetur libero, sit amet eleifend quam. </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-7 col-xs-12">
                    <div class="structher-img">
                        <img src="<?php echo get_template_directory_uri() . "/images/structher-img.png" ?>" alt=""
                             class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END OF SECTION STRUCTURE -->

    <!-- SECTION TESTOMONIAL -->
    <section class="section-testimonial">
        <div class="container">
            <div class="row testimonial-row">
                <div class="col-lg-8 col-lg-offset-2 col-sm-8 col-sm-offset-2 col-xs-12">
                    <div class="testimonial-img-outter">
                        <div class="testimonial-img">
                            <img src="<?php echo get_template_directory_uri() . "/images/testimonial-img.jpg" ?>" alt=""
                                 class="img-responsive">
                        </div>
                    </div>
                    <div class="testimonial-content-outter">
                        <div class="testimonial-content">
                            <p>
                                “ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut lacus sed lacus
                                porttitor tincidunt. Donec congue metus vitae euismod luctus. Donec vel dolor eu ex
                                accumsan tempor ”
                            </p>
                        </div>
                        <div class="testimonial-name">
                            <h4>Mauris consectetur</h4>
                            <p>(Eleifend Puam)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END OF SECTION TESTOMONIAL -->

    <!-- SECTION CLIENTS -->
    <section class="section-clients">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-heading">
                        <h2>Our Clients</h2>
                    </div>
                </div>
            </div>
            <div class="row clients-row">
                <div class="col-xs-12">
                    <div class="client-wrapper">
                        <ul class="clearfix">
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client1.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client2.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client3.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client4.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client5.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client6.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END OF SECTION CLIENTS -->

    <!-- SECTION CONTACT -->
    <section class="section-contact banner contact-bg">
        <div class="container">
            <div class="row contact-row">
                <div class="col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                    <div class="contact-wrp">
                        <div class="section-heading">
                            <h2>Contact us</h2>
                        </div>
                        <div class="form-wrapper">
                            <form id="contactform" method="post">
                                <fieldset>
                                    <input type="text" placeholder="Full Name*" class="form-style" required
                                           name="fullname">
                                </fieldset>
                                <fieldset>
                                    <input type="text" placeholder="Email*" class="form-style" required name="email">
                                </fieldset>
                                <fieldset>
                                    <input type="text" placeholder="Phone Number*" class="form-style" required
                                           name="pnumber">
                                </fieldset>
                                <fieldset class="lastchild">
                                    <select class="form-style" name="state">
                                        <option selected>State / Province*</option>
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
    <!-- END OF SECTION CONTACT -->

<?php
//get_sidebar();
get_footer();
