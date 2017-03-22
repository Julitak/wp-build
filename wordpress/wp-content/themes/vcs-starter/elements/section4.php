<div class="section instagram-section">
			
		<div class="instagram-box">
			
			<ul>
				
				<li class="icon-share">1.325</li>
				<li class="icon-heart">682</li>

			</ul>

		</div>
						
		<div class="instagram-text">

			<?php $section3 = get_field('k_hps_section_6'); 

				$post_data = get_post(153);

				global $post;

				$post = $post_data;

				setup_postdata($post);

				// the_title();
				// //the_permalink();
				// the_content();


			?> 
			
			<span class="icon-camera"></span>
			<h2><?php the_title(); ?></h2>
			<?php the_content(); ?>

		</div>

		<div class="instagram-picture">

			<?php the_post_thumbnail('full', array('class'=>'')); ?>

		</div>

		<?php wp_reset_postdata();?>

	</div>

		<div class="section">
		
		<div class="container massive">

				<!--Kairys trecdalis, ilgoji kolona, 3 boxai-->
				
			<div class="left-col">
				
				<div class="twitterfeed">

					<p>Alex White <a href="#">@alexwhite</a></p>

					<p class="sep">Singolo is a free PSD template 
					of a flat, single page website 
					created by <a href="#">@PsdChat #freebie 
					#psd http://bit.ly/19XM8Lj</a>
					</p>

					<p>2 hours ago</p>

					<p class="sep">Saturday Career Workshops 
					are back at ADC! See what high 
					school students created this 
					week: <a href="#">http://bit.ly/Xx1EsL</a>
					</p>

					<p>2 hours ago</p>

				</div>

				<div class="newsfeed">

					<div class="newsfeed-carousel">
							
						<div class="container">

							<div class="row">
									
								<div id="my-sliderz" class="carousel slide" data-ride="carousel">

									<!--indicators dot nav-->

									<ol class="carousel-indicators">

										<li data-target="#my-sliderz" data-slide-to="0" class="active"></li>
										<li data-target="#my-sliderz" data-slide-to="1"></li>
										<li data-target="#my-sliderz" data-slide-to="2"></li>
										

									</ol>

									<p class="hot">What's hot</p>


									<!--wrapper for slides imgez-->

									<div class="carousel-inner" role="listbox">
										
										<div class="item active">
											

											<div class="carousel-caption">

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>
												
											</div>

										</div>

										<div class="item">
			 
											<div class="carousel-caption">

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>
												
											</div>

										</div>


										<div class="item">
			 
											<div class="carousel-caption">

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>

												<div class="kartacka">
													<div class="tnail"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
													<p>A new yorker doesn't necessarily...</p>
													<p class="laiks">3 minutes ago</p>
												</div>
												
											</div>

										</div>

									</div>

									<!--controls or next and prev buttons-->

								</div>
								
							</div>

						</div>

					</div>

				</div>
				
				<div class="questionform">

					<h3>Ask a Question</h3>

					<div class="row">
			            <div class="form-group col-sm-6">
			                <label for="name" class="h4"></label>
			                <input type="text" class="form-control" id="name" placeholder="Your Name" required>
			            </div>
			            <div class="form-group col-sm-6">
			                <label for="email" class="h4"></label>
			                <input type="email" class="form-control" id="email" placeholder="hello@graphicburger.com" required>
			            </div>
        			</div>
        			<div class="form-group">
			            <label for="message" class="h4 "></label>
			            <textarea id="message" class="form-control" rows="5" placeholder="Your question..." required></textarea>
			        </div>
        			<button type="submit" id="form-submit" class="btn btn-lg pull-left ">Submit</button>
					<div id="msgSubmit" class="h3 text-center hidden"></div>	

				</div>

			</div>

			<!--Desine puse, makalyne-->

			<div class="right-col">

				<!--Kalendorius Ir More Stories boxas-->
				<div class="cal-row">	

					<div class="calendar-box"><?php echo do_shortcode('[Total_Soft_Cal id="7"]');?></div>

					<div class="stories-box"><h3 class="icon-chevron-circle-right"><a href="#">View more stories</a></h3></div>

				</div>
				<!--Eile su dviem nested eilem-->

				<div class="row loremipsum">
					
						
					<div class="blankbox">

					<?php $section3 = get_field('k_hps_section_6'); 

						$post_data = get_post(157);

						global $post;

						$post = $post_data;

						setup_postdata($post);

						// the_title();
						// //the_permalink();
						// the_content();


						?> 
					<?php the_post_thumbnail('full', array('class'=>'')); ?>
						<div class="corner"></div>
						<p>NEW</p>




					</div>
						
					<div class="ipsumdef">

						<span class="icon-document-text"></span>
						
						<h3><?php the_title(); ?></h3>
						<?php the_content(); ?>

						<ul class="moreicons">
							<li class="icon-share1"><a href="#">569 Shares</a></li>
							<li class="icon-eye"><a href="#">3,152 Views</a></li>
							<li class="icon-comment"><a href="#">21 Comments</a></li>
						</ul>

						<?php wp_reset_postdata();?>

					</div>

				
				</div>

				<!--Citata-->

				<div class="quotations">

					<span class="icon-right-quote"></span>
					
					<p>"If you don't like something, change it. If you can't change it, change the way you think about it."</p>

				</div>

				<div class="wownav">
					
					  <ul class="nav nav-tabs nav-justified">
					    <li class="active"><a data-toggle="tab" href="#home">About</a></li>
					    <li><a data-toggle="tab" href="#menu1">Team</a></li>
					    <li><a data-toggle="tab" href="#menu2">Privacy</a></li>
					    <li><a data-toggle="tab" href="#menu3">Advertise</a></li>
					    <li><a data-toggle="tab" href="#menu4">Contact</a></li>
					  </ul>

					  <div class="tab-content">

					    <div id="home" class="tab-pane fade in active">
					    
					    	<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Anne Hathaway</h6><p>CEO/Founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@annehathaway</a>
						      	</div>

					      	</div>

						  	<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Kate Upton</h6><p>Co-founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@kateupton</a>
						      	
						      	</div>


					      	</div>

					    </div>

					    <div id="menu1" class="tab-pane fade">
								
							<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Anne Hathaway</h6><p>CEO/Founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@annehathaway</a>
						      	</div>

					      	</div>

						  	<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Kate Upton</h6><p>Co-founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@kateupton</a>
						      	
						      	</div>

					      	</div>

					    </div>
					    <div id="menu2" class="tab-pane fade">

								<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Anne Hathaway</h6><p>CEO/Founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@annehathaway</a>
						      	</div>

					      	</div>

						  	<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Kate Upton</h6><p>Co-founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@kateupton</a>
						      	
						      	</div>


					      	</div>
					    </div>
					    <div id="menu3" class="tab-pane fade">
					   		
					   		<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Anne Hathaway</h6><p>CEO/Founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@annehathaway</a>
						      	</div>

					      	</div>

						  	<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Kate Upton</h6><p>Co-founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@kateupton</a>
						      	
						      	</div>


					      	</div>

					    </div>

					    <div id="menu4" class="tab-pane fade">
							
							<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Anne Hathaway</h6><p>CEO/Founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@annehathaway</a>
						      	</div>

					      	</div>

						  	<div class="kortos">
					      	
						      	<div class="virsuj">
							      	<div class="pic"><img src="<?php echo get_template_directory_uri() . "/assets/img/hcakerman.png"; ?>"></div>
							      	<div class="title"><h6>Kate Upton</h6><p>Co-founder</p></div>
						      	</div>

						      	<div class="apacioj">
						      		<p>“Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...”</p>

						      		<a href="#">@kateupton</a>
						      	
						      	</div>


					      	</div>

					    </div>
					  
					  </div>
					  
					</div>

				</div>

			</div>

		</div>

	</div>