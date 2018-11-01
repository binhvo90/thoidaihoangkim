<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package thoidaihoangkim
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<?php thoidaihoangkim_post_thumbnail(); ?>

	<div class="entry-content">
        <div class="entry-meta ht-post-info"><span class="entry-date published updated"><span
                    class="ht-day">02</span><span class="ht-month-year">Th2 2018</span></span><span
                class="byline"> by <span class="author vcard"><a class="url fn n"
                                                                 href="https://bds1.failoverhosting.com.vn/author/admin/">admin</a></span></span>
        </div>
		<?php
		the_content( sprintf(
			wp_kses(
				/* translators: %s: Name of current post. Only visible to screen readers */
				__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'thoidaihoangkim' ),
				array(
					'span' => array(
						'class' => array(),
					),
				)
			),
			get_the_title()
		) );

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'thoidaihoangkim' ),
			'after'  => '</div>',
		) );
		?>
	</div><!-- .entry-content -->

</article><!-- #post-<?php the_ID(); ?> -->
