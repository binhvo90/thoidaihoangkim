<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package thoidaihoangkim
 */

get_header();
?>

    <div id="ht-content" class="ht-site-content ht-clearfix">
        <div class="ht-main-header">
            <div class="ht-container"><h1 class="ht-main-title">Yếu tố nước từ hồ điều hòa tráng lệ</h1>

                <div id="total-breadcrumbs" xmlns:v="http://rdf.data-vocabulary.org/#"><span typeof="v:Breadcrumb"><a
                            rel="v:url" property="v:title" href="#">Home</a></span> /
                <span typeof="v:Breadcrumb"><a rel="v:url" property="v:title"
                                               href="#category/chung-cu/">Chung
                        Cư</a></span> / <span class="current">Yếu tố nước từ hồ điều hòa tráng lệ</span></div>
            </div>
        </div>
        <div class="ht-container">
            <div id="primary" class="content-area">
                <main id="main" class="site-main">

                    <?php
                    while (have_posts()) :
                        the_post();

                        get_template_part('template-parts/content', get_post_type());

//			the_post_navigation();
//
//			// If comments are open or we have at least one comment, load up the comment template.
//			if ( comments_open() || get_comments_number() ) :
//				comments_template();
//			endif;

                    endwhile; // End of the loop.
                    ?>

                </main>
                <!-- #main -->
            </div>
            <div id="secondary" class="widget-area">
                <aside id="recent-posts-2" class="widget widget_recent_entries"><h4 class="widget-title">Bài viết
                        mới</h4>
                    <ul>
                        <li><a href="#yeu-to-nuoc-tu-ho-dieu-hoa-trang-le/">Yếu tố
                                nước
                                từ hồ điều hòa tráng lệ</a></li>
                        <li><a href="#penhouse-va-sky-villa-cua-vinhome-sky-lake/">Penhouse
                                và Sky villa của Vinhome Sky Lake</a></li>
                        <li><a href="#tu-van-bat-dong-san/">TƯ VẤN BẤT ĐỘNG SẢN</a>
                        </li>
                        <li><a href="#quan-ly-bat-dong-san/">QUẢN LÝ BẤT ĐỘNG SẢN</a>
                        </li>
                        <li><a href="#moi-gioi-bat-dong-san/">Môi giới Bất động
                                sản</a>
                        </li>
                    </ul>
                </aside>
                <aside id="categories-2" class="widget widget_categories"><h4 class="widget-title">Chuyên mục</h4>
                    <ul>
                        <li class="cat-item cat-item-2"><a
                                href="#category/chung-cu/">Chung
                                Cư</a></li>
                        <li class="cat-item cat-item-4"><a href="#category/dat-nen/">Đất
                                nền</a></li>
                        <li class="cat-item cat-item-8"><a href="#category/dich-vu/">Dịch
                                vụ</a></li>
                        <li class="cat-item cat-item-1"><a href="#category/du-an/">Dự
                                Án</a></li>
                        <li class="cat-item cat-item-9"><a
                                href="#category/linh-vuc/">Lĩnh
                                vực</a></li>
                        <li class="cat-item cat-item-3"><a
                                href="#category/nha-mat-dat/">Nhà
                                Mặt Đất</a></li>
                        <li class="cat-item cat-item-7"><a href="#category/su-kien/">Sự
                                Kiện</a></li>
                    </ul>
                </aside>
            </div>
        </div>
    </div><!-- #primary -->

<?php
//get_sidebar();
get_footer();
