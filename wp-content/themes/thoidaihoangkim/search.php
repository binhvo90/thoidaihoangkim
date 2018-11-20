<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
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
                        <h2>
                            <?php
                            /* translators: %s: search query. */
                            printf(esc_html__('Tìm kiếm theo từ khóa: %s', 'thoidaihoangkim'), '<span>' . get_search_query() . '</span>');
                            ?></h2>
                    </div>
                </div>
            </div>
            <div class="row list-row">

                <?php if (have_posts()) : ?>


                    <?php
                    /* Start the Loop */
                    while (have_posts()) :
                        the_post();

                        $bedrooms = get_field('bedrooms');
                        $baths = get_field('baths');
                        $parking = get_field('parking');
                        $sq_ft = get_field('sq_ft');
                        $money = get_field('money');
                        ?>
                        <div class="col-sm-6 col-xs-12">
                            <div class="property-wrapper">
                                <div class="property-img">
                                    <a href="<?php echo get_permalink(); ?>">
                                        <img src="<?php echo get_the_post_thumbnail(); ?>" alt=""
                                             class="img-responsive">
                                    </a>
                                </div>
                                <div class="property-features">
                                    <ul class="clearfix">
                                        <li><p>
                                                <?php echo $sq_ft ?> Sq Ft </p></li>
                                        <li><p>
                                                <?php echo $bedrooms ?> Phòng ngủ </p></li>
                                        <li><p>
                                                <?php echo $baths ?> Phòng tắm</p></li>
                                        <li><p>
                                                <?php echo $parking ?> Bãi đỗ xe</p></li>
                                    </ul>
                                </div>
                                <div class="property-name clearfix">
                                    <div class="name">
                                        <p><?php echo get_the_title() ?></p>
                                        <!--                                        <span>-->
                                        <?php //echo $category->description
                                        ?><!--</span>-->
                                    </div>
                                    <div class="price">
                                        <p><?php if (empty($money)) {
                                                echo 'Liên hệ';
                                            } else {
                                                echo $money ?>
                                                <sup>đ</sup>
                                            <?php } ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <?php endwhile;

                    the_posts_navigation();

                endif;
                ?>
            </div>
        </div>
    </section>
    <!-- END OF SECTION LISTING -->

<?php
//get_sidebar();
get_footer();
