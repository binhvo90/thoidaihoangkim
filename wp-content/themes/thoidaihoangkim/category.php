<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 10/29/2018
 * Time: 4:31 PM
 */

get_header();
//global $post;
$category = get_the_category();
?>
<?php
foreach ( $category as $cat ) : ?>
    <div id="ht-content" class="ht-site-content ht-clearfix">
        <div class="ht-main-header">
            <div class="section-heading">
                <h2><?php echo $cat->name; ?></h2>
            </div>
        </div>
        <div class="ht-container">
            <?php
            $cat_id = $cat->term_id;
            $gia = get_field('gia', 'category_' . $cat_id);
            $vi_tri = get_field('vi_tri', 'category_' . $cat_id);
            $dien_tich = get_field('dien_tich', 'category_' . $cat_id);
            $hoi_mua = get_field('hoi_mua', 'category_' . $cat_id);
            $thoi_gian_ban_giao = get_field('thoi_gian_ban_giao', 'category_' . $cat_id);
            $image = get_field('image', 'category_' . $cat_id);
            $content = get_field('content', 'category_' . $cat_id);
            ?>
            <div class="v3_projectdetail_info_build">
                <div class="col-6 col-md-4">
                    <div class="v3_projectdetail_info_text">
                        <div class="info">
                            <div class="title_info">Giá từ:</div>
                            <span class="price"><?php echo $gia ?></span> <span class="text_xam"></span></div>
                        <div class="info">
                            <div class="title_info">Vị trí:</div>
                            <div class="content">
                                <?php echo $vi_tri ?>
                            </div>
                        </div>
                        <div class="info">
                            <div class="title_info">Diện tích:</div>
                            <?php echo $dien_tich ?>
                        </div>
                        <div class="box_countdown">
                            <div class="title"><span class="pull-left">Thời gian bàn giao căn hộ</span>
                                        <span class="pull-right">
                                            <?php echo $thoi_gian_ban_giao ?>
                                        </span>
                            </div>
                        </div>
                        <a href="tel:<?php echo $hoi_mua ?>" class="info_link">
                            Hỏi mua căn hộ:
                            <span><?php echo $hoi_mua ?></span></a>

                        <div class="social-project">
                            <iframe
                                src="//www.facebook.com/plugins/like.php?href=http://themes.bds.pro.vn/20161213/du-an/vinhomes-sky-lake-pham-hung/&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=true&amp;height=21"
                                scrolling="no" frameborder="0"
                                style="border:none; overflow:hidden; height:21px;width: 150px;"></iframe>
                            <div id="___plusone_0"
                                 style="text-indent: 0px; margin: 0px; padding: 0px; background: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 32px; height: 20px;">
                                <iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0"
                                        marginwidth="0"
                                        scrolling="no"
                                        style="position: static; top: 0px; width: 32px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;"
                                        tabindex="0" vspace="0" width="100%" id="I0_1541689716981"
                                        name="I0_1541689716981"
                                        src="https://apis.google.com/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;hl=vi&amp;origin=http%3A%2F%2Fthemes.bds.pro.vn&amp;url=http%3A%2F%2Fthemes.bds.pro.vn%2F20161213%2Fdu-an%2Fvinhomes-sky-lake-pham-hung%2F&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.vi.w3zT9lUvDAQ.O%2Fam%3DQQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCOH4r8docL7Fh1mjaG0otXNoDKU-Q%2Fm%3D__features__#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh%2Conload&amp;id=I0_1541689716981&amp;_gfid=I0_1541689716981&amp;parent=http%3A%2F%2Fthemes.bds.pro.vn&amp;pfname=&amp;rpctoken=11417487"
                                        data-gapiattached="true" title="G+"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-8">
                    <img src="<?php echo $image['url'] ?>" alt="<?php echo $image['caption'] ?>">
                </div>
            </div>
            <div id="primary" class="content-area">
                <main id="main" class="site-main">
                    <?php
                    $content = apply_filters('the_content', $content);
                    $content = str_replace(']]>', ']]>', $content);
                    echo $content;
                    ?>
                </main>
                <!-- #main -->
            </div>

            <aside id="secondary" class="widget-area">
                <section id="recent-posts-2" class="widget widget_recent_entries">
                    <h2 class="widget-title">Căn Hộ</h2>
                    <?php
                    $args = array('posts_per_page' => 10, 'offset' => 1, 'category' => $cat_id);

                    $myposts = get_posts($args);
                    foreach ($myposts as $post) : setup_postdata($post); ?>
                        <li>
                            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                        </li>
                    <?php endforeach;
                    wp_reset_postdata(); ?>
                </section>

                <section id="categories-2" class="widget widget_categories">
                    <h2 class="widget-title">Dự Án</h2>
                    <?php
                    //                        $thiscat = get_category( get_query_var( 'cat' ) );
                    $parent_id = $cat->category_parent;
                    $catlist = get_categories(array(
                        'orderby' => 'name',
                        'order' => 'ASC',
                        'child_of' => $parent_id
                    ));

                    ?>
                    <ul>
                        <?php foreach ($catlist as $category) { ?>
                            <li>
                                <a href="<?php echo get_category_link($category->term_id); ?>"><?php echo $category->name; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                    <?php
                    ?>
                </section>
            </aside>
        </div>
    </div><!-- #primary -->
    <?php endforeach; ?>
<?php
get_footer();