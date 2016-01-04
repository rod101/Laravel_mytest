@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">Contact Infomations</div>

				<div class="panel-body">
					<!--You are logged in!-->
                    <img src="../images/{{ $contacts->id}}.jpg" />
                    <h3>{{ $contacts->fullname }}</h3>
                    {{ $contacts->email }}<br />
                    {{ $contacts->mobile }}<br />
                    {{ $contacts->email }}<br />
                    <hr>
                    {{ $contacts->address }}
                     <hr>
                    {{ $contacts->birthday }}
                    
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
