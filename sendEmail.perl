#!/user/bin/perl
#use strict;
use warnings;

# first, create your message
use Email::MIME;
my $message = Email::MIME->create(
	header_str = [
		from => "takumiadachi\@gmail.com",
		to => "takumiadachi\@gmail.com",
		Subject => "Happy Birthday!",
	],
	attributes => {
		encoding => "quoted-printable",
		charset  => "ISO-8859-1",
	},
	body_str => "Happy birthday to you!\n",
);

# send the message
#use Email::Sender::Simple qw(sendmail);
#sendmail($message);

