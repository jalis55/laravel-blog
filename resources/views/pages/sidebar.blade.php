@extends('master')
@section('sidebar')
			<div class="col-md-4 content-main-right">

				 <div class="search">
						 <h3>SEARCH HERE</h3>
						<form>
							<input type="text" value="" onfocus="this.value=''" onblur="this.value=''">
							<input type="submit" value="">
						</form>
				 </div>
				 <div class="categories">
					 <h3>CATEGORIES</h3>
					 @foreach ($data['all_published_category'] as $row)
					 	 <li class="active"><a href="{{url('/category-blog/'.$row->category_id)}}">{{$row->category_name}}</a></li>
					 @endforeach
					
				 </div>
				 <div class="archives">
					 <h3>Recent</h3>
					 @foreach ($data['published_blog_title'] as $row)
					 	 <li><a href="{{url('/blog-details/'.$row->blog_id)}}">{{$row->blog_title}}</a></li>
					 @endforeach
					
				 </div>
				 <div class="archives">
					 <h3>Popular</h3>
					 <li class="active"><a href="#">July 2014</a></li>
					 <li><a href="#">June 2014</a></li>
					 <li><a href="#">May 2014</a></li>
				 </div>
			 </div>

@endsection