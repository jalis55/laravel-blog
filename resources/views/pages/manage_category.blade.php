@extends('admin.admin_master')
@section('dashboard_main_content')	
<script type="text/javascript">
	function check_delete()
	{
		check=confirm("are you sure to delete");
		if(check)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
</script>
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="{{url('dashboard')}}">Home</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="{{url('mana_category')}}">Manage category</a>
				</li>
			</ul>	
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break">Manage category</span></h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Category Id</th>
								  <th>Category Name</th>
								  <th>Date</th>
								  <th>Status</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
							@foreach ($data['category_data'] as $row)
								<tr>
								<td>{{$row->category_id}}</td>
								<td>{{$row->category_name}}</td>
								<td class="center">{{$row->created_at}}</td>
								<td class="center">
									@if ($row->publication_status == 1)
										<span class="label label-success">Published</span>
									@endif
									@if ($row->publication_status == 0)
										<span class="label label-danger">Unpublished</span>
									@endif

								</td>
								<td class="center">
										@if ($row->publication_status == 1)
										<a class="btn btn-danger" href="{{url('/unpulished_category/'.$row->category_id)}}">
										 <i class="halflings-icon white thumbs-down"></i> 
									    @endif
									    @if ($row->publication_status == 0)
									     <a class="btn btn-success" href="{{url('/pulished_category/'.$row->category_id)}}">
										 <i class="halflings-icon white thumbs-up"></i> 
									    @endif

									</a>
									<a class="btn btn-info" href="{{url('/edit_category/'.$row->category_id)}}">
										<i class="halflings-icon white edit"></i>  
									</a>
									<a class="btn btn-danger" href="{{url('/delete_category/'.$row->category_id)}}" onclick="return check_delete();">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
							@endforeach
							


							
							
							
						  </tbody>
					  </table>            
					</div>

			
			</div><!--/row-->
			
@endsection