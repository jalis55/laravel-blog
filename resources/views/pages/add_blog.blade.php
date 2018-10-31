@extends('admin.admin_master')
@section('dashboard_main_content')
			<!-- start: Content -->

			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="{{url('dashboard')}}">Home</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="{{url('add_blog')}}">Add blog</a>
				</li>
			</ul>
			<h3 style="color: green">
						{{session::get('message')}}
			</h3>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Blog</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>

					<div class="box-content">
				
						<form class="form-horizontal" action="{{url('/save_blog')}}" method="post" enctype="multipart/form-data">
						{{csrf_field()}}
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Blog title <title></title> </label>
							  <div class="controls">
								<input type="text" name="blog_title" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								
							  </div>
							  <div class="control-group">
							  <label class="control-label" for="typeahead">Category name <title></title> </label>
							  <div class="controls">
								<select name="category_id">
								<option >Select category</option>
								
								@foreach ($data['published_category'] as $row)
									<option value="{{$row->category_id}}">{{$row->category_name}}</option>
								@endforeach								
									
								</select>
								
							  </div>
							</div>
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Short Description</label>
							  <div class="controls">
								<textarea name="blog_short_description" class="cleditor" id="textarea2" rows="3"></textarea>
							  </div>
							</div>
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Long Description</label>
							  <div class="controls">
								<textarea name="blog_long_description" class="cleditor" id="textarea2" rows="3"></textarea>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="fileInput">File input</label>
							  <div class="controls">
								<input name="blog_image" class="input-file uniform_on" id="fileInput" type="file">
							  </div>
							</div>  
							<div class="control-group">
							  <label class="control-label" for="typeahead">Publication Status </label>
							  <div class="controls">
								<select name="publication_status">
								<option >Select Status</option>
								<option value="1">Published</option>
								<option value="0">Unpublished</option>
									
								</select>
								
							  </div>
							</div>
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Add Blog</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

				<div></div>
				<!--/span-->
			
			<!--/row-->
			
			
    

         <!--/.fluid-container-->
	
			<!-- end: Content -->
		<!--/#content.span10-->
@endsection