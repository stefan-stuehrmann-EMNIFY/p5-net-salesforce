#!/usr/bin/env perl

use FindBin;
BEGIN { unshit @INC, "$FindBin::Bin/../lib" }

use Mojolicious::Lite;
use Net::Salesforce;
use DDP;

get '/' => sub {
  my ($c) = @_;
} => 'index';

post '/auth' => sub {
  my ($c) = @_;
  my $sf = Net::Salesforce->new;
  return $c->redirect_to($sf->authenticate);
};

get '/callback' => sub {
  my ($c) = @_;
  p $c;
} => 'authenticated';

app->start;

__DATA__

@@ index.html.ep
<html><head><title>index</title></head>
<body>
<form method="post" action="/auth">
<button type="submit">Auth</button>
</form>
</body>
</html>

@@ authenticated.html.ep
<html><head><title>Callback</title></head>
<body>
<h1>Authenticated</h1>
</body>
</html>
