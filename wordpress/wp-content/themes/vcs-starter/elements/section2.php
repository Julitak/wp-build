<div class="section carousel-hands">
		
	<div class="container">

		<div class="row">
				
			<div id="my-slider" class="carousel slide" data-ride="carousel">

				<!--indicators dot nav-->

				<ol class="carousel-indicators">

					<li data-target="#my-slider" data-slide-to="0" class="active"></li>
					<li data-target="#my-slider" data-slide-to="1"></li>
					

				</ol>

				<!--wrapper for slides imgez-->

				<div class="carousel-inner" role="listbox">
					
					<div class="item active">

						<?php $section3 = get_field('k_hps_section_3'); 

						$post_data = get_post(125);

						global $post;

						$post = $post_data;

						setup_postdata($post);

						// the_title();
						// //the_permalink();
						// the_content();


						?> 

						<?php the_post_thumbnail('full', array('class'=>'')); ?>

						<div class="carousel-caption">

							<div class="crap">

								<h1><?php the_title(); ?></h1>
								<?php the_content(); ?> 
								<p><a class="btn" href="<?php echo get_field('k_carousel_button_link'); ?>"><?php echo get_field('k_carousel_button_text'); ?></a></p>
								

							</div>

							<?php wp_reset_postdata();?>

						</div>

					</div>

					<div class="item">


						<?php $section4 = get_field('k_hps_section_4'); //var_dump($section1[0]);exit; 

						$post_data = get_post(137);

						global $post;

						$post = $post_data;

						setup_postdata($post);

						// the_title();
						// //the_permalink();
						// the_content();


						?> 

						<?php the_post_thumbnail('full', array('class'=>'')); ?>

						<div class="carousel-caption">

							<div class="crap">

								<h1><?php the_title(); ?></h1>
								<?php echo the_content(); ?>
								<p><a class="btn" href="<?php echo get_field('k_carousel_button_link'); ?>""><?php echo get_field('k_carousel_button_text'); ?></a></p>
							

							</div>

							<?php wp_reset_postdata();?>
							
						</div>

					</div>


				</div>

				<!--controls or next and prev buttons-->

				<a class="left carousel-control" href="#my-slider" role="button" data-slide="prev">
					
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>

				</a>


				<a class="right carousel-control" href="#my-slider" role="button" data-slide="next">
					
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>

				</a>

			</div>
			
		</div>

	</div>

</div>