my %hash = ( a => 1, b => 2, c => 3 );

my $key = 'd';

if ( exists $hash{$key} ) {
    print "Key '$key' exists\n";
} else {
    print "Key '$key' does not exist\n";
    # Handle the case where the key does not exist safely
    $hash{$key} = 4; 
}

print "Hash: %{", join(',', map "$_ => $hash{$_}", keys %hash), "}";

#Alternative using defined
my $value = $hash{$key};
$hash{$key} = defined $value ? $value : 4; #assigns 4 if key does not exist or its value is undef
print "Hash: %{", join(',', map "$_ => $hash{$_}", keys %hash), "}";