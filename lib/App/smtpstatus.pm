package App::smtpstatus;

use 5.010001;
use strict;
use warnings;

# VERSION

my $data = [

    {code=>'2.X.X', summary=>'Success',

     description =>

         'Success specifies that the DSN is reporting a positive delivery
action.  Detail sub-codes may provide notification of
transformations required for delivery.'

     },

    {code=>'4.X.X', summary=>'Persistent Transient Failure',

     description =>

         'A persistent transient failure is one in which the message as
sent is valid, but some temporary event prevents the successful
sending of the message.  Sending in the future may be successful.'

     },

    {code=>'5.X.X', summary=>'Permanent Failure',

     description =>

         'A permanent failure is one which is not likely to be resolved by
resending the message in the current form.  Some change to the
message or the destination must be made for successful delivery.',

 },

];

use Data::Format::Pretty::Console qw(format_pretty);

say format_pretty($data, {table_column_formats=>[{description=>[[wrap=>{columns=>40}]]}]});

1;
# ABSTRACT: Show STMP statuses
