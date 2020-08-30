import fileinput

projectName = str(input("project name: "))
with fileinput.FileInput("premake5.lua", inplace=True, backup='.bak') as file:
    for line in file:
        print(line.replace("default_project", projectName), end='')