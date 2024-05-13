**1. Install Dependencies:**

```sh
#!/bin/bash

# Install necessary packages
sudo apt-get update
sudo apt-get install -y python3 python3-pip

# Print success message
echo "Dependencies installed successfully."
```

**2. File Management:**

```sh
#!/bin/bash

# Copy a file
cp source.txt destination.txt

# Rename a file
mv old_file.txt new_file.txt

# Delete a file
rm file.txt
```

**3. Database Connection:**

```sh
#!/bin/bash

# Connect to a MySQL database
mysql -u username -p database_name

# Execute a query
mysql -u username -p database_name -e "SELECT * FROM table_name"

# Close the database connection
exit
```

**4. Process Automation:**

```sh
#!/bin/bash

# Run a script
./script.sh

# Open a new terminal window
xterm -e bash
```

**5. Scheduled Task:**

```sh
#!/bin/bash

# Schedule a task to run a script every minute
crontab -e
*/1 * * * * /path/to/script.sh
```

**6. Send Email:**

```sh
#!/bin/bash

# Send an email
echo "Subject: Automated Report" | mail -s -a "From: sender@example.com" recipient@example.com < report.txt
```

**7. Check File Existence:**

```sh
#!/bin/bash

# Check if a file exists
if [ -f file.txt ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
```

**8. Command Prompt Customization:**

```sh
#!/bin/bash

# Change the background color
tput setaf 4

# Set the title of the terminal window
title My Bash Script

# Print a message
echo "Hello, world!"
```