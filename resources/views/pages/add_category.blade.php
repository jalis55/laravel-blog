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
					<a href="{{url('add_category')}}">Add category</a>
				</li>
			</ul>
			<h3 style="color: green">
						{{session::get('message')}}
			</h3>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Category</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>

					<div class="box-content">
				
						<form class="form-horizontal" action="{{url('/save_category')}}" method="post">
						{{csrf_field()}}
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Category Name </label>
							  <div class="controls">
								<input type="text" name="category_name" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								
							  </div>
							</div>
							
							        
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Category Description</label>
							  <div class="controls">
								<textarea name="category_description" class="cleditor" id="textarea2" rows="3"></textarea>
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
							  <button type="submit" class="btn btn-primary">Save changes</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->
				<br><br><br><br>
				<div></div>
				<!--/span-->
			
			<!--/row-->
			
			
    

         <!--/.fluid-container-->
	
			<!-- end: Content -->
		<!--/#content.span10-->
@endsection