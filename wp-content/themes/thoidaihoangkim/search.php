<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package thoidaihoangkim
 */

get_header();
$args = array();

$title = get_query_var('s');

if (!empty($_GET['category'])) {
    $args['cat'] = $_GET['category'];
}
if (!empty($_GET['bedrooms'])) {
    $bedrooms = $_GET['bedrooms'];
    $args['meta_query'] = array(
        array(
            'key' => 'bedrooms',
            'value' => $bedrooms,
        ),
    );
}
if (!empty($_GET['baths'])) {
    $baths = $_GET['baths'];
    if (isset($args['meta_query'])) {
        $ary = array(
            'relation' => 'AND',
            array(
                'key' => 'baths',
                'value' => $baths,
            )
        );
        array_push($args['meta_query'], $ary);
    } else {
        $args['meta_query'] = array(
            array(
                'key' => 'baths',
                'value' => $baths,
            )
        );
    }
}
if (!empty($_GET['parking'])) {
    $parking = $_GET['parking'];
    if (isset($args['meta_query'])) {
        if (isset($args['meta_query']['relation'])) {
            $ary = array(
                array(
                    'key' => 'parking',
                    'value' => $parking,
                )
            );
        } else {
            $ary = array(
                'relation' => 'AND',
                array(
                    'key' => 'parking',
                    'value' => $parking,
                )
            );
        }

        array_push($args['meta_query'], $ary);
    } else {
        $args['meta_query'] = array(
            array(
                'key' => 'parking',
                'value' => $parking,
            )
        );
    }
}

if (!empty($_GET['min'])) {
    $min = $_GET['min'];
    if (isset($args['meta_query'])) {
        if (isset($args['meta_query']['relation'])) {
            $ary = array(
                array(
                    'key' => 'money',
                    'value' => $min,
                    'compare' => '>=',
                )
            );
        } else {
            $ary = array(
                'relation' => 'AND',
                array(
                    'key' => 'money',
                    'value' => $min,
                    'compare' => '>=',
                )
            );
        }

        array_push($args['meta_query'], $ary);
    } else {
        $args['meta_query'] = array(
            array(
                'key' => 'money',
                'value' => $min,
                'compare' => '>=',
            )
        );
    }
}

if (!empty($_GET['max'])) {
    $max = $_GET['max'];
    if (isset($args['meta_query'])) {
        if (isset($args['meta_query']['relation'])) {
            $ary = array(
                array(
                    'key' => 'money',
                    'value' => $max,
                    'compare' => '>=',
                )
            );
        } else {
            $ary = array(
                'relation' => 'AND',
                array(
                    'key' => 'money',
                    'value' => $max,
                    'compare' => '<=',
                )
            );
        }

        array_push($args['meta_query'], $ary);
    } else {
        $args['meta_query'] = array(
            array(
                'key' => 'money',
                'value' => $max,
                'compare' => '>=',
            )
        );
    }
}
if (!empty($title)) {
    $args['s'] = $title;
}

// The Query
$the_query = new WP_Query($args);


?>


    <!-- SECTION LISTING -->
    <section class="section-listing">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-heading">
                        <h2> Kết quả tìm kiếm</h2>
                    </div>
                </div>
            </div>
            <div class="row list-row">

                <?php
                // The Loop
                if ( $the_query->have_posts() ) {
                    while ($the_query->have_posts()) {
                        $the_query->the_post();
                        $bedrooms = get_field('bedrooms');
                        $baths = get_field('baths');
                        $parking = get_field('parking');
                        $sq_ft = get_field('sq_ft');
                        $money = get_field('money');
                        $tmp = empty($money) ? 'Liên hệ' : $money . '<sup>đ</sup>';
                        echo '<div class="col-sm-6 col-xs-12">
                            <div class="property-wrapper">
                                <div class="property-img">
                                    <a href="' . get_permalink() . '">
                                        <img src="' . get_the_post_thumbnail() . '" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="property-features">
                                    <ul class="clearfix">
                                        <li><p>' . $sq_ft . ' Sq Ft </p></li>
                                        <li><p>' . $bedrooms . ' Phòng ngủ </p></li>
                                        <li><p>' . $baths . ' Phòng tắm</p></li>
                                        <li><p>' . $parking . ' Bãi đỗ xe</p></li>
                                    </ul>
                                </div>
                                <div class="property-name clearfix">
                                    <div class="name">
                                        <p>' . get_the_title() . '</p>
                                    </div>
                                    <div class="price">
                                        <p>' . $tmp . '</p>
                                    </div>
                                </div>
                            </div>
                        </div>';
                    }
                    /* Restore original Post Data */

                    wp_reset_postdata();
                } else {?>
                      <h2>Không tìm thấy kết quả phù hợp</h2>
                <?php }
//                the_posts_navigation();
                ?>

            </div>
        </div>
    </section>
    <!-- END OF SECTION LISTING -->

<?php
//get_sidebar();
get_footer();
