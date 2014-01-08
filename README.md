# NAME

Net::Salesforce - Authentication against Salesforce OAuth 2 endpoints.

# SYNOPSIS

    use Net::Salesforce;

    my $sf = Net::Salesforce->new(
        'key'          => $ENV{SFKEY},
        'secret'       => $ENV{SFSECRET},
        'redirect_uri' => 'https://localhost:8081/callback'
    );

# DESCRIPTION

Net::Salesforce is an authentication module for Salesforce OAuth 2.

# ATTRIBUTES

## api\_url

Returns a [Mojo::URL](https://metacpan.org/pod/Mojo::URL) of the Salesforce api host, defaults to
https://na15.salesforce.com/

## authorize\_path

Endpoint to Salesforce's authorize page.

## access\_token\_path

Endpoint to Salesforce's access token page

## params

Form parameters attribute

## redirect\_uri

Callback URI defined in your Salesforce application

## response\_type

Response type for authorization callback

## scope

Scopes available as defined by the Salesforce application.

## secret

Acts as Salesforce client\_secret

## key

Acts as Salesforce client\_key

## ua

A [Mojo::UserAgent](https://metacpan.org/pod/Mojo::UserAgent) object.

## json

A [Mojo::JSON](https://metacpan.org/pod/Mojo::JSON) object.

# METHODS

## verify\_signature

## refresh

## oauth2

## authorize\_url

## access\_token\_url

## authenticate

## password

# INSTALL

    $ cpanm git://github.com/battlemidget/Net-Salesforce.git

If you'd wish to try out the latest code base you can do so with above
command.

# AUTHOR

Adam Stokes <adamjs@cpan.org>

# COPYRIGHT

Copyright 2014- Adam Stokes

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
