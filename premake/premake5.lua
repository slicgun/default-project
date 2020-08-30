workspace "default_project"
	configurations {"Debug", "Release"}
	location "../"
	startproject "default_project"

include "../vendor/Glad"

project "default_project"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	targetdir "../bin/%{cfg.buildcfg}"
	objdir "../bin-int"

	files 
	{
		"../src/**.h",
		"../src/**.cpp",
	}

	includedirs
	{
		"../vendor/glm",
		"../vendor/SFML/include",
		"../vendor/Glad/include"
	}

	libdirs
	{
		"../vendor/SFML/lib"
	} 

	links
	{
		"Glad",
		"opengl32.lib"
	}

	filter "configurations:Debug"
		defines {""}
		symbols "on"

		links
		{
			"sfml-system-d.lib",
			"sfml-window-d.lib",
			"sfml-graphics-d.lib",
			"sfml-audio-d.lib",
			"sfml-network-d.lib"
		}

	filter "configurations:Release"
		defines {""}
		optimize "on"

		links
		{
			"sfml-system.lib",
			"sfml-window.lib",
			"sfml-graphics.lib",
			"sfml-audio.lib",
			"sfml-network.lib"
		}
