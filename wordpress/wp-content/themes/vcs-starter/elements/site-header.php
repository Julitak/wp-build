<header class="section">
	
	<div class="containerz header-bit">
		
			<!-- pirma puse navo - burgeris ir listas-->

		<div class="left-bit">

			<span class="burger"><a id="nav-toggle" href="#"><span></span></a></a></span>
			
				<?php awesome_menu('primary-navigation', 'main-nav'); ?>

		</div>


		<!--antra puse navo-->

		<div class="right-bit">
			
			<span><a href="#" class="icon-search"></a></span>

			<ul class="social-media-nav">

				<?php 
					$icon = get_field('k_sl_image');
					$link = get_field('k_sl_link');
					$icon_2 = get_field('k_sl_image_2');
					$link_2 = get_field('k_sl_link_2');
					$icon_3 = get_field('k_sl_image_3');
					$link_3 = get_field('k_sl_link_3');

				 ?>

				<?php if( $icon && $link ): ?>
					<li><a href="<?php echo $link; ?>" class="icon-<?php echo $icon; ?>"></a></li>
				<?php endif; ?>

				<?php if( $icon_2 && $link_2 ): ?><li><a href="<?php echo $link_2; ?>" class="icon-<?php echo $icon_2; ?>"></a></li><?php endif; ?>
				<?php if( $icon_3 && $link_3 ): ?><li><a href="<?php echo $link_3; ?>" class="icon-<?php echo $icon_3; ?>"></a></li><?php endif; ?>

			</ul>

			<span><a href="#" class="icon-user"></a></span>

		</div>

	</div>

</header>
