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
    <!-- SECTION SEARCH -->
    <div class="vc_row wpb_row vc_inner vc_row-fluid vc_row-o-equal-height vc_row-o-content-middle vc_row-flex">
        <div class="wpb_column vc_column_container col-sm-3">
            <div class="vc_column-inner">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper"><p class="hd-subtitle-spec">KHÁM PHÁ</p>

                            <h2 class="hd-title-spec"><span class="fl-accent">NGÔI NHÀ</span><span
                                    class="fl-accent">HẠNH PHÚC</span></h2></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-dark-left wpb_column vc_column_container col-sm-9 vc_col-has-fill">
            <div class="vc_column-inner vc_custom_1485091686429">
                <div class="wpb_wrapper">
                    <div class="ere-search-properties clearfix ere-show-status-tab style-default-small color-light ">
                        <form role="search" method="get" id="searchform" action="<?php echo home_url('/'); ?>">
                            <section class="search">
                                <div class="form-search-wrap">
                                    <div class="form-search-inner">
                                        <div class="ere-search-content">
                                            <div
                                                class="search-properties-form">
                                                <div class="row">
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group">
                                                        <input type="text" class="form-control search-field"
                                                               value="" name="s"
                                                               placeholder="Tiêu đề">
                                                    </div>
                                                    <?php
                                                    $arg = array(
                                                        'orderby' => 'name',
                                                        'parent' => 0,
                                                    );
                                                    $parent_categories = get_categories($arg);
                                                    ?>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group">
                                                        <select name="category" class="search-field form-control">
                                                            <option value="">Chọn dự án</option>
                                                            <?php foreach ($parent_categories as $parent) {
                                                                if (!in_array($parent->term_id, [5, 6])) {
                                                                    ?>
                                                                    <optgroup label="<?php echo $parent->name ?>">
                                                                        <?php $child_categories = get_categories(array('child_of' => $parent->term_id)); ?>
                                                                        <?php foreach ($child_categories as $child) { ?>
                                                                            <option
                                                                                value="<?php echo $child->term_id ?>"> <?php echo $child->name ?>
                                                                                (<?php echo $child->category_count ?>
                                                                                )
                                                                            </option>
                                                                        <?php } ?>
                                                                    </optgroup>

                                                                <?php }
                                                            } ?>
                                                        </select>

                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group">
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
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group">
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
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group">
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
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group">
                                                        <select name="min" class="search-field form-control">
                                                            <option value="">Giá tiền từ</option>
                                                            <option value="0">Lớn hơn 0</option>
                                                            <option value="100000000">Lớn hơn 100 triệu</option>
                                                            <option value="500000000">Lớn hơn 500 triệu</option>
                                                            <option value="1000000000">Lớn hơn 1 tỷ</option>
                                                            <option value="2000000000">Lớn hơn 2 tỷ</option>
                                                            <option value="5000000000">Lớn hơn 5 tỷ</option>
                                                            <option value="10000000000">Lớn hơn 10 tỷ</option>
                                                            <option value="15000000000">Lớn hơn 15 tỷ</option>
                                                            <option value="20000000000">Lớn hơn 20 tỷ</option>
                                                            <option value="30000000000"> Lớn hơn 30 tỷ</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group">
                                                        <select name="max" class="search-field form-control">
                                                            <option value="">Đến giá</option>
                                                            <option value="500000000"> Nhỏ hơn 500 triệu</option>
                                                            <option value="1000000000"> Nhỏ hơn 1 tỷ</option>
                                                            <option value="2000000000"> Nhỏ hơn 2 tỷ</option>
                                                            <option value="5000000000"> Nhỏ hơn 5 tỷ</option>
                                                            <option value="10000000000"> Nhỏ hơn 10 tỷ</option>
                                                            <option value="15000000000"> Nhỏ hơn 15 tỷ</option>
                                                            <option value="20000000000"> Nhỏ hơn 20 tỷ</option>
                                                            <option value="30000000000"> Nhỏ hơn 30 tỷ</option>
                                                            <option value="50000000000"> Nhỏ hơn 50 tỷ</option>
                                                            <option value="100000000000"> Nhỏ hơn 100 tỷ</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4 col-sm-6 col-xs-12 form-group submit-search-form pull-right">
                                                        <button type="submit"
                                                                class="ere-advanced-search-btn btn_search">
                                                            <i class="fa fa-search"></i>
                                                            Search
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SECTION SEARCH -->

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

                        ?>
                        <div class="col-sm-6 col-xs-12">
                            <div class="property-wrapper">
                                <div class="property-img">
                                    <a href="<?php  echo get_permalink() ?>">
                                        <?php if(has_post_thumbnail()) { ?>
                                            <?php echo get_the_post_thumbnail() ?>
                                        <?php } else { ?>
                                            <img src="http://thoidaihoangkim.com/wp-content/themes/thoidaihoangkim/images/no-image.png">
                                        <?php } ?>
                                    </a>
                                </div>
                                <div class="property-features">
                                    <ul class="clearfix">
                                        <li><p><?php echo $sq_ft ?>  Sq Ft </p></li>
                                        <li><p><?php echo $bedrooms ?> Phòng ngủ </p></li>
                                        <li><p><?php echo $baths ?> Phòng tắm</p></li>
                                        <li><p><?php echo $parking ?> Bãi đỗ xe</p></li>
                                    </ul>
                                </div>
                                <div class="property-name clearfix">
                                    <div class="name">
                                        <p><?php echo get_the_title() ?></p>
                                    </div>
                                    <div class="price">
                                        <p><?php echo get_money($money) ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    <?php wp_reset_postdata(); ?>
                <?php } else {?>
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
