#!/bin/bash

# Add `#!/bin/bash` to the top of the script, which instructs the 
# terminal everything found within the file is a part of a script


# The first thing we’ll do is format the date as we like it using two variable like this
formatted_datetime=$(date +%m-%d-%y:%H.%M.%S)
formatted_date=$(date +%m-%d-%y)

# Now we will output the date to the terminal
echo "The date and time is " $formatted_datetime
echo "The date is " $formatted_date
