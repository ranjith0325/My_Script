import os
import shutil
from datetime import datetime

# Specify the source and target folders
source_folder = r"D:\wa\WhatsApp Images"
target_folder = source_folder

# Iterate through files in the source folder
for root, dirs, files in os.walk(source_folder):
    for file in files:
        file_path = os.path.join(root, file)
        
        # Get the file's modification date
        modification_date = datetime.fromtimestamp(os.path.getmtime(file_path))
        year = modification_date.year
        
        # Create the year subfolder if it doesn't exist
        year_folder = os.path.join(target_folder, str(year))
        if not os.path.exists(year_folder):
            os.makedirs(year_folder)
        
        # Move the file to the year subfolder
        destination_path = os.path.join(year_folder, file)
        shutil.move(file_path, destination_path)

print("Done!")
