# default-project
This is a repo which contains the files necessary to create and build a visual studio solution with:
  - SFML
  - OpenGL (using Glad)
  - glm
  - spdlog
  
## Instructions
  - open cmd and type cd "file-path"
  - paste: `git clone --recurse-submodules https://github.com/slicgun/default-project "folder-name"`
  - go into "folder-name" and go to the premake folder
  - run generate script.py and type the name you want your visual studio solution and project to have
  - run generate project.bat
  - in git type `git remote set-url origin "new_url"`
  
 ## Notes
  - this is windows only
  - this requires git to be installed
  - "file-path" refers to the file path you want your project folder to be in (e.g. C:/projects)
  - "folder-name" refers to the folder you want your project to be in (e.g. "new game")
  - using the examples from before your project/solution would be in C:/projects/new game/
  - you may need to press "Show All Files" on visual studio when starting the solution for the first time
  - the "new_url" is the url to your github repo which needs to be completely empty 
  
  ## TODO
  - Remove the need for the sfml .dll files to be in the main folder.
