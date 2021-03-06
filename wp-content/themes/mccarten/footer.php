<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package McCarten
 */

?>

	</div><!-- #content -->
        
    <div class="site-footer-container">
	<footer id="colophon" class="site-container site-footer" role="contentinfo">
		<div class="site-info">
			<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'mccarten' ) ); ?>"><?php printf( esc_html__( 'Proudly powered by %s', 'mccarten' ), 'WordPress' ); ?></a>
			<span class="sep"> | </span>
			<?php printf( esc_html__( 'Theme: %1$s by %2$s.', 'mccarten' ), 'mccarten', '<a href="https://automattic.com/" rel="designer">Tom McCarten</a>' ); ?>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
    </div><!-- site-footer-container -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
