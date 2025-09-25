use strict;
use warnings;

package file_object;

sub new {
  my $class = shift;
  my $self = {
    _filename => shift,
  };

  bless $self, $class;
  return $self;
}



sub move_to_trash {
  use File::Copy;
  my $self = shift;
  my $parameter = shift;

  move("$parameter->{_filename}", "/trash/$parameter->{_filename}")
  or die "move failed: $!";
  
  return 1;
}

1;
