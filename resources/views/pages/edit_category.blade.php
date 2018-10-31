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
					<a href="{{url('edit_category')}}">Edit category</a>
				</li>
			</ul>
			{{-- <h3 style="color: green">
						{{session::get('message')}}
			</h3> --}}
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Form Elements</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>

					<div class="box-content">
				
						<form class="form-horizontal" action="{{url('/update_category')}}" method="post">
						{{csrf_field()}}
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Category Name </label>
							  <div class="controls">
								<input type="text" name="category_name" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" value="{{$data['$category_info_by_id']->category_name}}" >
								<input type="hidden" name="category_id" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" value="{{$data['$category_info_by_id']->category_id}}" >
								
							  </div>
							</div>
							
							        
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Category Description</label>
							  <div class="controls">
								<textarea name="category_description" class="cleditor" id="textarea2" rows="3">
									{{$data['$category_info_by_id']->category_description}}
								</textarea>
							  </div>
							</div>
							
							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Update</button>
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