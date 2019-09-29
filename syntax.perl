################################################

# Scalars use $. Scalars are single values: number, string or reference
my $foo = "dinosaur";

# Arrays: Always use @
my @foo = (1, 2, 3, "cowboy");
print "$foo[1]\n"; # prints 2

# Hashes Always use %
my %foo = (a => 1, "b" => 2, 'c' => 'batman');
print "$foo{c}\n"; # prints 'batman'
print "$foo{a}\n";
print "$foo{b}\n";

print "\n";

################################################

# Array references
my %hash = (a => 1, b => 2, c => 3);        # hash
my $hashref1 = \%hash;                      # hash reference
my $hashref2 = {x => 11, y => 12, z => 13}; # hash reference

# Access hash value 
print "$hash{a}\n";       # prints 1

# Dereference + access hash value 
print "$hashref1->{a}\n"; # prints 1
print "$hashref2->{x}\n"; # prints 11

################################################

sub rawr {
    print "RAWR!\n";
}

rawr();

# How to pass named parameters to a sub/function

sub rawrNamed {
    my (%params) = @_;
    print "$params{dinosaur} says RAWR $params{how}\n";
}

rawrNamed(
    dinosaur => "Stegasaurus", 
    how      => "loudly"
);

# How to return values from sub/function

sub get_cookie_flavor {
    return "chocolate chip";
}

my $flavor = get_cookie_flavor();

print "$flavor\n";

# How to return multiple values

sub get_available_flavors {
    return ("chocolate chip", "oatmeal raisin", "peanut butter");
}

my @flavors = get_available_flavors();

print "@flavors[0], @flavors[1]\n";

################################################

# How to get user input prompts

#my $first_name = prompt("First name: ");
#my $last_name = prompt("Last name: ");
 
sub prompt {
   my ($text) = @_;
   print $text;
 
   my $answer = <STDIN>;
   chomp $answer;
   return $answer;
}

#print "$first_name $last_name\n"

################################################

# Conditionals

sub eyes {
	my ($eyeballs) = @_;
	if ($eyeballs >= 2) {
    	print "its an alien\n";
	}
	elsif ($eyeballs == 2) {
    	print "its human\n";
	}
	else {
    	print "its a rock\n";
	}
}

$eye = eyes(2);

print "eyes";

################################################

# foreach iterate over array and hash

my @array = ('a', 'b', 'c', 1, 2, 3);

foreach my $i (@array) {
    print $i;
}

# prints "abc123"

# iterate over a hash

my %hash = (a => 1, b => 2, c => 3);

foreach my $i (keys %hash) {
    print $hash{$i};
}
# prints '123'

# while loops

my %hash = (a => 1, b => 2, c => 3);

foreach my $i (keys %hash) {
    print $hash{$i};
}
# prints '123'

################################################

