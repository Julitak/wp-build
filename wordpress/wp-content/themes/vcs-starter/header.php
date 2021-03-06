<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo(charset); ?>">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title><?php wp_title( '|', true, 'right' ); ?></title>

	<!-- favicons -->
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo get_template_directory_uri() . "/assets/img/favicon.ico"; ?>">
	<!-- Stylesheet -->

	<?php wp_head(); ?>
</head>
<body>
	<?php get_template_part('elements/site-header'); ?>
