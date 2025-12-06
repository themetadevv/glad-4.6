
outputdir = "%{cfg.system}/%{cfg.buildcfg}"
build_directory = "bin/builds/" ..outputdir.. "/%{prj.name}"
intermediates_directory = "bin/intermediates/" ..outputdir.. "/%{prj.name}"

project "glad"
	kind "StaticLib"
	language "C"
	systemversion "latest"
	staticruntime "On" 

	targetdir (build_directory)
	objdir (intermediates_directory)

	files
	{
		"include/glad/glad.h",
		"include/KHR/khrplatform.h",
		"src/glad.c"
	}

	includedirs {
		"include"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "on"
