#!/bin/sh

# this script creates a file semester in the current dir
# then adds 2 lines to it, one by one


touch semester

echo '#!/bin/sh' > semester
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester


chmod u+rwx ./semester