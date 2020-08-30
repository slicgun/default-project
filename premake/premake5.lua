workspace "cod zombies"
	configurations {"Debug", "Release"}
	location "../"

project "cod zombies"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	targetdir "bin/%{cfg.buildcfg}"
	objdir "bin-int/%{cfg.buildcfg}"

	files 
	{
		"../src/**.h",
		"../src/**.cpp",
	}

	includedirs
	{
		"../vendor/glm"
	}

	filter "configurations:Debug"
		defines {""}
		symbols "on"

	filter "configurations:Release"
		defines {""}
		optimize "on"