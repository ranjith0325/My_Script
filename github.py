import os
import datetime
import random
import string

# Function to create a new file with random content
def create_file():
    # Generate a random filename
    filename = ''.join(random.choices(string.ascii_letters + string.digits, k=8)) + '.txt'

    # Generate random content for the file
    content = ''.join(random.choices(string.ascii_letters + string.digits, k=100))

    # Create the file with the random content
    with open(filename, 'w') as file:
        file.write(content)

    return filename

# Function to commit and push changes to GitHub
def commit_and_push(filename):
    # Add the new file to the Git staging area
    os.system(f'git add {filename}')

    # Create a commit with a timestamp as the commit message
    timestamp = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    commit_message = f'Commit at {timestamp}'
    os.system(f'git commit -m "{commit_message}"')

    # Push the changes to the GitHub repository
    os.system('git push')

# Set the working directory to your local Git repository
os.chdir('D:/Repo/MyWebSite/files')
os.chdir('D:/Repo/My_Script/files')
# Create a new file with random content
filename = create_file()

# Commit and push the changes to GitHub
commit_and_push(filename)