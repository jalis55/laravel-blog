@extends('master')
@section('main_content')	
				<div class="col-md-8 content-main">			
				 <div class="content-grid">

					 <div class="content-grid-single">
						 <h3>{{$data['blog_info']->blog_title}}</h3>
						 <h4>{{$data['blog_info']->created_at}}</h4>
						 <h4>Posted by:<b>{{$data['blog_info']->author_name}}</b></h4>

						 



						 <img class="single-pic" src="{{asset($data['blog_info']->blog_image)}}" alt="image" />
						 <p>
						 	{!!$data['blog_info']->blog_long_description!!}
						 </p>
						 
						 {{-- <div class="content-form">
						  @if (Auth::check())
                          show comment korar option
	                    @else
	                      please login first.... , 
	                    @endif
                        </div> --}}
          

            <div class="content">
             <div class="content-form">
                <div class="title m-b-md">

						@if (Auth::check())
						 	{{-- expr --}}
						 
							 <h3>Leave a comment</h3>
							 <form>
							 <input type="text" placeholder="Name" required/>
							 <input type="text" placeholder="E-mail" required/>
							 <input type="text" placeholder="Phone" required/>
							 <textarea placeholder="Message"></textarea>
							 <input type="submit" value="SEND"/>
							 </form>
						@endif	 
						 </div>
						 </div>
						 <div class="comments">
							 <h3>Comment</h3>
							 <div class="comment-grid">
								 <img src="{{asset('public/font_end_asset/images/pic.png')}}" alt=""/>
								 <div class="comment-info">
								 <h4>MARK JOHNSON</h4>
								 <p>Vivamus congue turpis in laoreet sem nec ultrices. Fusce blandit nunc vehicula massa vehicula tincidunt. Nam venenatis cursus urna sed gravida. Ut tincidunt elit ut quam malesuada consequat. Sed semper.</p>
								 <h5>On April 14, 2014, 18:01</h5>
								 </div>
								 <div class="clearfix"></div>
							 </div>
							 
							 <div class="comment-grid">
								 <img src="{{asset('public/font_end_asset/images/pic.png')}}" alt=""/>
								 <div class="comment-info">
								 <h4>MARK JOHNSON</h4>
								 <p>Vivamus congue turpis in laoreet sem nec ultrices. Fusce blandit nunc vehicula massa vehicula tincidunt. Nam venenatis cursus urna sed gravida. Ut tincidunt elit ut quam malesuada consequat. Sed semper.</p>
								 <h5>On April 14, 2014, 18:01</h5>
								 <a href="#">Reply</a>
								 </div>
								 <div class="clearfix"></div>
							 </div>	
						</div>
					  </div>
					 
				 </div>
				 </div>
@endsection