@extends('master')
@section('main_content')
			<div class="col-md-8 content-main">
				<div class="content-grid">
				 @foreach ($data['all_published_blog'] as $blog)
				 	<div class="content-grid-head">
						 <h3>{{$blog->blog_title}}</h3>
						 <h4>{{$blog->created_at}}</h4><br>
						 <h4>Posted by:<b>{{$blog->author_name}}</b></h4>

						 <div class="clearfix"></div>
					 </div>
					 <div class="content-grid-info">
					 @if ($blog->blog_image !=NULL)
						 	<img src="{{asset($blog->blog_image)}}" alt="image" style="height: 200px;width: 300px;" />
					 @endif
						 <p>{!!$blog->blog_short_description!!}</p>
						 
						 
						 <a class="bttn" href="{{url('/blog-details/'.$blog->blog_id)}}">MORE</a>
					</div>
				 @endforeach
					 
				 </div>
				 <div class="pages">
					 <ul>
						 <li class="active"><a href="#">1</a></li>
						 <li><a href="#">2</a></li>
						 <li><a href="#">3</a></li>
						 <li><a href="#">4</a></li>
						 <li><a href="#">5</a></li>
						 <li><a href="#">6</a></li>
						 <li><a href="#">Previous</a></li>
						 <li><a href="#">Next</a></li>
					 </ul>
				 </div>	
			</div>	 
@endsection