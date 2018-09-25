@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <passport-clients class="p-1 mb-1"></passport-clients>
                    <passport-authorized-clients class="p-1 mb-1"></passport-authorized-clients>
                    <passport-personal-access-tokens class="p-1 mb-1"></passport-personal-access-tokens>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
