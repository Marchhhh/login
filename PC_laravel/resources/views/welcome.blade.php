@extends('layouts.app')

@section('content')
<head>
<style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                display: table;
                font-weight: 100;
                font-family: 'Lato';
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 48px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">

                <div class="title">记住一切</div>
                <h3>现代生活喧嚣繁杂，L印象笔记帮你轻松简化一切，让生活更美好，让工作更省力!</h3>

            </div>
        </div>
    </body>
@endsection
