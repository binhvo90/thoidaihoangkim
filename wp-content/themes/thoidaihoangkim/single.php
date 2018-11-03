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
			<div class="ht-container">
				<h1 class="ht-main-title">
					<?php
					if ( is_singular() ) :
						the_title( '<h1 class="entry-title">', '</h1>' );
					else :
						the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
					endif;

					if ( 'post' === get_post_type() ) :
						?>
						<div class="entry-meta">
							<?php
							thoidaihoangkim_posted_on();
							thoidaihoangkim_posted_by();
							?>
						</div><!-- .entry-meta -->
					<?php endif; ?>
				</h1>

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
				<?php get_sidebar() ?>
		</div>
	</div><!-- #primary -->

<?php
get_footer();
