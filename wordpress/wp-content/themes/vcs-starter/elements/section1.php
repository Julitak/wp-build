<div class="section">
		
		<div class="containerz section-menus">		

			<!--kaire puslapio puse, visi navai-->
				
			<div class="all-navsz">
	
			<!--baltas navas-->
			
				<div class="light-nav">

					<div class="upper-wrapper">

							<?php awesome_menu('second-navigation', 'upper'); ?>

					</div>

					<div class="lower-wrapper">

						<ul class="lower">

							<?php 

								$number = get_field('k_c_s_phone_number');
								$number_2 = get_field('k_c_s_phone_number_2');
								$splitnumber = $number;
								$splitnumber = preg_replace('/\D/', '', $splitnumber);
								$splitnumber_2 = $number_2;
								$splitnumber_2 = preg_replace('/\D/', '', $splitnumber_2);

							?>
						
							<li class="icon-phone">

							<a href="tel:<?php echo $splitnumber; ?>"><?php echo $number; ?></a>
							<a href="tel:<?php echo $splitnumber_2; ?>"><?php echo $number_2; ?></a>


							</li>

							<li class="icon-location"><a href="<?php echo get_field('k_c_s_address_maps'); ?>" target="_blank"><?php echo get_field('k_c_s_address'); ?></a></li>


							<li class="icon-mail"><span><a href="mailto:<?php echo get_field('k_c_s_email_address'); ?>"><?php echo get_field('k_c_s_email_address'); ?></a></span><span><a href="mailto:<?php echo get_field('k_c_s_email_address_2'); ?>"><?php echo get_field('k_c_s_email_address_2'); ?></a></span></li>

						</ul>

					</div>

				</div>

			<!--tamsus navas-->

				<div class="dark-nav">

					<div class="dark-wrapper">

						<?php 
						$menu_ID = 5;
						$nav_menu = wp_get_nav_menu_object( $menu_ID );
						// then echo the name of the menu
						$nav_menu->name
						; ?>
					
						<h2 class="icon-chevron-circle-right"><?php echo $nav_menu->name; ?></h2>
						<?php awesome_menu('tech-navigation', 'sub-nav'); ?>



					</div>

					<div class="dark-wrapper">


						<?php 
						$menu_ID = 6;
						$nav_menu = wp_get_nav_menu_object( $menu_ID );
						// then echo the name of the menu
						$nav_menu->name
						; ?>

						<h2 class="icon-chevron-circle-right"><?php echo $nav_menu->name; ?></h2>
						<?php awesome_menu('entertainment-navigation', 'sub-nav'); ?>

					</div>

					<div class="dark-wrapper">

						<?php 
						$menu_ID = 7;
						$nav_menu = wp_get_nav_menu_object( $menu_ID );
						$nav_menu->name
						; ?>

						<h2 class="icon-chevron-circle-right"><?php echo $nav_menu->name; ?></h2>

						<?php awesome_menu('business-navigation', 'sub-nav'); ?>

					</div>

						<div class="dark-wrapper">

						<?php 
						$menu_ID = 8;
						$nav_menu = wp_get_nav_menu_object( $menu_ID );
						$nav_menu->name
						; ?>

						<h2 class="icon-chevron-circle-right"><?php echo $nav_menu->name; ?></h2>

						<?php awesome_menu('lifestyle-navigation', 'sub-nav'); ?>

						</div>

					</div>
				
			</div>

			<!--desine puslapio puse-->

				<div class="all-blocks">

					<!--1/3 eile-->
					
					<div class="row-first">

						<!--soc.mediju navas-->
						
						<div class="media-list">

							<?php awesome_menu('media_list-navigation', ''); ?>

						</div>

						<!--feisbuko ir tviterio boxai-->

						<div class="two-boxes">
							
							<div class="fb-box">

								<a href="#"><span class="icon-facebook"></span></a>
								<p>164k</p>
								<p class="icon-circle-plus"><a href="#">Follow</a></p>

							</div>

							<div class="twtr-box">

								<a href="#"><span class="icon-twitter"></span></a>
								<p>164k</p>
								<p class="icon-check-alt"><a href="#">Following</a></p>

							</div>

						</div>

					</div>

					<!--2/3 eile su sign in ir soc.med ikonelem-->

					<div class="row-second">

						<?php $section1 = get_field('k_hps_section_1'); //var_dump($section1[0]);exit; 

						$post_data = get_post(117);

						global $post;

						$post = $post_data;

						setup_postdata($post);

						// the_title();
						// //the_permalink();
						// the_content();


						?>

						<h3><?php the_title(); ?></h3>

						<?php the_content(); ?>  

						<?php wp_reset_postdata();?>

						<div class="nav1-wrapper">

							<ul class="nav1">


								<?php 
									$icon = get_field('k_sl_image');
									$link = get_field('k_sl_link');
									$icon_2 = get_field('k_sl_image_2');
									$link_2 = get_field('k_sl_link_2');
									$icon_3 = get_field('k_sl_image_3');
									$link_3 = get_field('k_sl_link_3');
									$icon_4 = get_field('k_sl_image_4');
									$link_4 = get_field('k_sl_link_4');

								 ?>
								
								<?php if( $icon && $link ): ?>
								<li><a href="<?php echo $link; ?>" class="icon-<?php echo $icon; ?>"></a></li>
								<?php endif; ?>

								<?php if( $icon_2 && $link_2 ): ?>
								<li><a href="<?php echo $link_2; ?>" class="icon-<?php echo $icon_2; ?>"></a></li>
								<?php endif; ?>

								<?php if( $icon_3 && $link_3 ): ?>
								<li><a href="<?php echo $link_3; ?>" class="icon-<?php echo $icon_3; ?>"></a></li>
								<?php endif; ?>

								<?php if( $icon_4 && $link_4 ): ?>
								<li><a href="<?php echo $link_4; ?>" class="icon-<?php echo $icon_4; ?>"></a></li>
								<?php endif; ?>

							</ul>

						</div>

					</div>

					<!--3/3 eile su log in forma-->

					<div class="row-third">

						<div class="form-wrapper">

							<?php $section2 = get_field('k_hps_section_2'); //var_dump($section2[0]);exit; 

							$post_data = get_post(121);

							global $post;

							$post = $post_data;

							setup_postdata($post);

							// the_title();
							// //the_permalink();
							// the_content();

							?>
							
							<h3><?php the_title(); ?></h3>

							<?php the_content(); ?>

							<?php wp_reset_postdata();?>

							<?php echo do_shortcode('[contact-form-7 id="31" title="Contact form 1"]'); ?>

						</div>

					</div>

				</div>

		</div>

	</div>	