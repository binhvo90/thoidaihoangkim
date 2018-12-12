<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package thoidaihoangkim
 */

get_header();
global $post;
$cat = get_the_category();
?>

	<div id="ht-content" class="ht-site-content ht-clearfix">
		<div class="ht-main-header">
			<div class="ht-container">
				<h1 class="ht-main-title">
					<?php
					if ( is_singular() ) :
						the_title( '<h1 class="entry-title">', '</h1>' );
					else :
						the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
					endif;
				 ?>
				</h1>

				<div id="total-breadcrumbs"><?php get_breadcrumb(); ?></div>
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
			<?php $cat_id = $cat[0]->term_id ?>
			<aside id="secondary" class="widget-area">
				<section id="recent-posts-2" class="widget widget_recent_entries">
					<?php if($cat_id == 17) { ?>
						<h2 class="widget-title">Nhà Bán</h2>
					<?php } if($cat_id == 18) { ?>
						<h2 class="widget-title">Cho Thuê</h2>
					<?php } if($cat_id != 17 & $cat_id != 18) { ?>
						<h2 class="widget-title">Căn Hộ</h2>
					<?php } ?>

					<?php $args = array( 'posts_per_page' => 5, 'offset'=> 1, 'category' => $cat_id );

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
					$parent_id = $cat[0]->category_parent;
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
