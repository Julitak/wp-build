	<div class="section video-section">
		
		<div class="video-story">

			<span class="icon-video-camera"></span>

			<?php $section3 = get_field('k_hps_section_5'); 

				$post_data = get_post(143);

				global $post;

				$post = $post_data;

				setup_postdata($post);

				// the_title();
				// //the_permalink();
				// the_content();


			?> 
				
			<h2><?php the_title(); ?></h2>

			<p class="ago">24 minutes ago</p>

			<?php the_content(); ?>

			<?php wp_reset_postdata();?>

		</div>

		<div class="video-bit">

			<div class="video-options">
				
				<ul>

					<li class="icon-heart-o"><a href="#">like</a></li>
					<li class="icon-clock-o"><a href="#">later</a></li>
					<li class="icon-share1"><a href="#">share</a></li>

				</ul>

			</div>

			<div class="video">
				
				<iframe width="100%" height="300" src="<?php echo get_field('k_vs_link'); ?>" frameborder="0" allowfullscreen></iframe>

			</div>

		</div>

	</div>