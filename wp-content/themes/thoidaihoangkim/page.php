<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package thoidaihoangkim
 */

get_header();
?>
	<div class="ht-container">
		<div id="primary" class="content-area">
			<main id="main" class="site-main">

			<?php
			while ( have_posts() ) :
				the_post();

				get_template_part( 'template-parts/content', 'page' );

				// If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) :
					comments_template();
				endif;

			endwhile; // End of the loop.
			?>

			</main><!-- #main -->
		</div><!-- #primary -->
		<aside id="secondary" class="widget-area">
			<section id="recent-posts-2" class="widget widget_recent_entries">
				<h2 class="widget-title">Căn Hộ</h2>
				<?php
				$cat_id = $cat[0]->term_id;
				$args = array( 'posts_per_page' => 10, 'offset'=> 1, 'category' => $cat_id );

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

<?php
get_footer();
