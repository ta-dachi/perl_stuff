eval { die "Something bad happened" }; # try (and catch)
warn $@ if $@;                         # handle exceptio
