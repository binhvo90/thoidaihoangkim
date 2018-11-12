<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 10/29/2018
 * Time: 4:31 PM
 */

get_header();
global $post;
$cat = get_the_category();
?>

    <div id="ht-content" class="ht-site-content ht-clearfix">
        <div class="ht-main-header">
            <div class="section-heading">
                <h2><?php echo get_the_title(30); ?></h2>
            </div>
        </div>
        <div class="ht-container">
            <div class="v3_projectdetail_info_build">
                <div class="col-6 col-md-4">
                    <div class="v3_projectdetail_info_text">
                        <div class="info">
                            <div class="title_info">Giá từ:</div>
                            <span class="price">Đang cập nhật</span> <span class="text_xam"></span></div>
                        <div class="info">
                            <div class="title_info">Vị trí:</div>
                            <div class="content">Lô 13B - KDC Conic, Nguyễn Văn Linh, Xã Phong Phú, Huyện Bình Chánh, Tp.HCM</div>
                        </div>
                        <div class="info">
                            <div class="title_info">Diện tích:</div>
                            49m2 - 500m2
                        </div>
                        <div class="box_countdown">
                            <div class="title"><span class="pull-left">Thời gian bàn giao căn hộ</span> <span
                                    class="pull-right">Tháng 4/2019</span></div>
                        </div>
                        <a href="tel:0909 257 034" class="info_link">Hỏi mua căn hộ: <span>0909 257 034</span></a>

                        <div class="social-project">
                            <iframe
                                src="//www.facebook.com/plugins/like.php?href=http://themes.bds.pro.vn/20161213/du-an/vinhomes-sky-lake-pham-hung/&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=true&amp;height=21"
                                scrolling="no" frameborder="0"
                                style="border:none; overflow:hidden; height:21px;width: 150px;"></iframe>
                            <div id="___plusone_0"
                                 style="text-indent: 0px; margin: 0px; padding: 0px; background: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 32px; height: 20px;">
                                <iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0"
                                        scrolling="no"
                                        style="position: static; top: 0px; width: 32px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;"
                                        tabindex="0" vspace="0" width="100%" id="I0_1541689716981" name="I0_1541689716981"
                                        src="https://apis.google.com/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;hl=vi&amp;origin=http%3A%2F%2Fthemes.bds.pro.vn&amp;url=http%3A%2F%2Fthemes.bds.pro.vn%2F20161213%2Fdu-an%2Fvinhomes-sky-lake-pham-hung%2F&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.vi.w3zT9lUvDAQ.O%2Fam%3DQQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCOH4r8docL7Fh1mjaG0otXNoDKU-Q%2Fm%3D__features__#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh%2Conload&amp;id=I0_1541689716981&amp;_gfid=I0_1541689716981&amp;parent=http%3A%2F%2Fthemes.bds.pro.vn&amp;pfname=&amp;rpctoken=11417487"
                                        data-gapiattached="true" title="G+"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-8">
                    <div class="v2_project_dt_banner">
                        <div id="detail_slides" class="slide carousel" data-interval="50000" data-pause="hover">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="v2_detailproject_slidebox"><img
                                            src="http://themes.bds.pro.vn/20161213/wp-content/uploads/2016/12/147918276312121212-736x300.jpg"
                                            alt="Vinhomes Sky Lake – Phạm Hùng"></div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#detail_slides" rel="nofollow" data-slide="prev">‹</a> <a
                                class="right carousel-control" href="#detail_slides" rel="nofollow" data-slide="next">›</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="primary" class="content-area">
                <main id="main" class="site-main">
                    <?php if (is_category('conic-riverside')) : ?>
                        <?php
                        $my_id = 30;
                        $post_id_conic_riverside = get_post($my_id);
                        $content = $post_id_conic_riverside->post_content;
                        $content = apply_filters('the_content', $content);
                        $content = str_replace(']]>', ']]>', $content);
                        echo $content;
                        ?>
                    <?php elseif (is_category('Category B')) : ?>
                        <p>This is the text to describe category B</p>
                    <?php else : ?>
                        <p>This is some generic text to describe all other category pages,
                            I could be left blank</p>
                    <?php endif; ?>

                </main>
                <!-- #main -->
            </div>

            <aside id="secondary" class="widget-area">
                <section id="recent-posts-2" class="widget widget_recent_entries">
                    <h2 class="widget-title">Căn Hộ</h2>
                    <?php

                    $args = array( 'posts_per_page' => 5, 'offset'=> 1, 'category' => $cat[0]->term_id );

                    $myposts = get_posts( $args );
                    foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
                        <li>
                            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                        </li>
                    <?php endforeach;
                    wp_reset_postdata();?>
                </section>
                <section id="categories-2" class="widget widget_categories">
                    <h2 class="widget-title">Dự Án</h2>
                    <?php
//                        $thiscat = get_category( get_query_var( 'cat' ) );
                        $parent_id = $parent_id = $cat[0]->category_parent;
                        $catlist = get_categories(array(
                            'orderby' => 'name',
                            'order' => 'ASC',
                            'child_of' => $parent_id
                        ));

                        ?>
                        <ul>
                            <?php foreach ($catlist as $category) { ?>
                                <li><a href="<?php echo get_category_link( $category->term_id ); ?>"><?php echo $category->name; ?></a></li>
                            <?php } ?>
                        </ul>
                        <?php
                    ?>
                </section>
            </aside>
        </div>
    </div><!-- #primary -->
<?php
get_footer();