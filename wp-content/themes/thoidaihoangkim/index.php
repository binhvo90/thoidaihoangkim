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
    <form role="search" method="get" id="searchform" action="<?php echo home_url( '/' ); ?>">
        <?php $query_types = get_query_var('post_type'); ?>

        <section class="search">
            <div class="container">
                <div class="form-search-wrap">
                    <div class="form-search-inner">
                        <div class="ere-search-content">
                            <div data-href="http://themes.g5plus.net/beyot/advanced-search/" class="search-properties-form">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                        <input type="text" class="form-control search-field" value="" name="s" placeholder="Tiêu đề">
                                    </div>
                                    <?php $list_categories = get_categories();
                                    ?>
                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                        <select name="category" class="search-field form-control">
                                            <option value="">Chọn dự án</option>
                                            <?php foreach ($list_categories as $category){?>
                                            <option value="<?php echo $category->term_id?>"> <?php echo $category->name?></option>
                                            <?php }?>
                                        </select>

                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
                                        <select name="bedrooms" class="search-field form-control">
                                            <option value="">Số phòng ngủ</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10"> 10</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
                                        <select name="baths" class="search-field form-control">
                                            <option value="">Số phòng tắm</option>
                                            <option value="1"> 1</option>
                                            <option value="2"> 2</option>
                                            <option value="3"> 3</option>
                                            <option value="4"> 4</option>
                                            <option value="5"> 5</option>
                                            <option value="6"> 6</option>
                                            <option value="7"> 7</option>
                                            <option value="8"> 8</option>
                                            <option value="9"> 9</option>
                                            <option value="10"> 10</option>
                                        </select></div>
                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                        <select name="parking" class="search-field form-control">
                                            <option value="">Số bãi đậu xe</option>
                                            <option value="1"> 1</option>
                                            <option value="2"> 2</option>
                                            <option value="3"> 3</option>
                                            <option value="4"> 4</option>
                                            <option value="5"> 5</option>
                                            <option value="6"> 6</option>
                                            <option value="7"> 7</option>
                                            <option value="8"> 8</option>
                                            <option value="9"> 9</option>
                                            <option value="10"> 10</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group submit-search-form pull-right">
                                        <button type="submit" class="ere-advanced-search-btn btn_search">
                                            <i class="fa fa-search"></i>
                                            Search
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

    <!-- SECTION LISTING -->
    <section class="section-listing">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-heading">
                        <h2>Dự Án</h2>
                    </div>
                </div>
            </div>
            <div class="row list-row">
                <?php
                $parent_id = 4;
                $categories = get_categories(array(
                    'orderby' => 'name',
                    'order' => 'ASC',
                    'child_of' => $parent_id

                ));

                foreach ($categories as $category) {
                    $image = get_field('image', 'category_' . $category->term_id);
                    $bedrooms = get_field('bedrooms', 'category_' . $category->term_id);
                    $baths = get_field('baths', 'category_' . $category->term_id);
                    $parking = get_field('parking', 'category_' . $category->term_id);
                    $sq_ft = get_field('sq_ft', 'category_' . $category->term_id);
                    $money = get_field('gia', 'category_' . $category->term_id);
                    ?>
                    <!--                    get_category_link( $category->term_id-->
                    <div class="col-sm-6 col-xs-12">
                        <div class="property-wrapper">
                            <div class="property-img">
                                <a href="<?php echo get_category_link($category->term_id); ?>">
                                    <img src="<?php echo !empty($image) ? $image['url'] : "" ?>" alt=""
                                         class="img-responsive">
                                </a>
                            </div>
                            <!--                            <div class="property-features">-->
                            <!--                                <ul class="clearfix">-->
                            <!--                                    <li><p>-->
                            <?php //echo $sq_ft ?><!-- Sq Ft </p></li>-->
                            <!--                                    <li><p>-->
                            <?php //echo $bedrooms ?><!-- Phòng ngủ </p></li>-->
                            <!--                                    <li><p>-->
                            <?php //echo $baths ?><!-- Phòng tắm</p></li>-->
                            <!--                                    <li><p>-->
                            <?php //echo $parking ?><!-- Bãi đỗ xe</p></li>-->
                            <!--                                </ul>-->
                            <!--                            </div>-->
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
                        <h2>Môi Trường Sống</h2>
                    </div>
                </div>
            </div>
            <div class="row benefits-row">
                <div class="col-sm-4 col-xs-12">
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <a href="<?php echo get_permalink(83) ?>">
                                <div class="small-circle mirror-icon "></div>
                            </a>

                            <p>Thành phố xanh tươi </p>
                            <span>Cuộc đời trọn vẹn. </span>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <a href="<?php echo get_permalink(89) ?>">
                                <div class="small-circle hands-icon "></div>
                            </a>

                            <p>Cuộc sống </p>
                            <span>Kiến tạo sự vững bền.</span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="ver-height">
                        <div class="benefit-outter">
                            <a href="<?php echo get_permalink(87) ?>">
                                <div class="big-circle building-icon"></div>
                            </a>

                            <p>Cộng đồng</p>
                            <span>Tỏa sáng muôn nơi - Vươn tầm cao mới. </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <a href="<?php echo get_permalink(85) ?>">
                                <div class="small-circle car-icon"></div>
                            </a>

                            <p>Phương Tiện</p>
                            <span>Di chuyển tiện lợi.</span>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="benefit-outter">
                            <a href="<?php echo get_permalink(91) ?>">
                                <div class="small-circle people-icon"></div>
                            </a>

                            <p>Gia đình</p>
                            <span>Xây những giá trị, dựng những ước mơ.</span>
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
                        <h2>Kiến Trúc</h2>
                    </div>
                </div>
            </div>
            <div class="row structure-row">
                <div class="col-sm-5 col-xs-12">
                    <div class="structure-content clearfix">
                        <div class="structure-icon icon-01"></div>
                        <div class="structure-txt">
                            <h3>Nhà đẹp của bạn</h3>

                            <p>Thành công của chúng tôi. </p>
                        </div>
                    </div>
                    <div class="structure-content clearfix">
                        <div class="structure-icon icon-02"></div>
                        <div class="structure-txt">
                            <h3>Tiên phong</h3>

                            <p>Trong sự nghiệp phát triển đô thị và nhà ở. </p>
                        </div>
                    </div>
                    <div class="structure-content clearfix">
                        <div class="structure-icon icon-03"></div>
                        <div class="structure-txt">
                            <h3>Tài sản</h3>

                            <p>Tài sản thực, giá trị thực. </p>
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
    <div class="bxslider">
        <?php
        $args = array(
            'cat' => 5,
            'post_type' => 'post',
            'order' => 'ASC',
            'posts_per_page' => 10,
        );

        $wp_query = new WP_Query($args);

        while (have_posts()) : the_post();
            ?>
            <section class="section-testimonial">
                <div class="container">
                    <div class="row testimonial-row">
                        <div class="col-lg-8 col-lg-offset-2 col-sm-8 col-sm-offset-2 col-xs-12">
                            <div class="testimonial-img-outter">
                                <div class="testimonial-img">
                                    <?php the_post_thumbnail('thumbnail'); ?>
                                </div>
                            </div>
                            <div class="testimonial-content-outter">
                                <div class="testimonial-content">
                                    <p>
                                        <?php the_excerpt(); ?>
                                    </p>
                                </div>
                                <div class="testimonial-name">
                                    <h4><?php echo get_the_title() ?></h4>

                                    <p>Chức Vụ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        <?php endwhile; ?>

    </div>
    <!-- END OF SECTION TESTOMONIAL -->


    <!-- SECTION CLIENTS -->
    <section class="section-clients">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-heading">
                        <h2>Đối Tác</h2>
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
                                <img src="<?php echo get_template_directory_uri() . "/images/client4.gif" ?>" alt=""
                                     class="img-responsive">
                            </li>
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client5.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                            <li class="col-xs-6 col-sm-2">
                                <img src="<?php echo get_template_directory_uri() . "/images/client1.jpg" ?>" alt=""
                                     class="img-responsive">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END OF SECTION CLIENTS -->

    <!--  SECTION MAP  -->
    <div class="map">
        <?php echo do_shortcode('[wpgmza id="1"]') ?>
    </div>
    <!--  END SECTION MAP  -->

    <!-- SECTION CONTACT -->
    <section class="section-contact banner contact-bg">
        <div class="container">
            <div class="row contact-row">
                <div class="col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                    <div class="contact-wrp">
                        <div class="section-heading">
                            <h2>Liên Hệ</h2>
                        </div>
                        <div class="form-wrapper">
                            <?php echo do_shortcode('[contact-form-7 id="14" title="Contact form 1"]'); ?>
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
