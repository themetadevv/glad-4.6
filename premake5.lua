project "glad"
	kind "StaticLib"
	language "C"
	systemversion "latest"
	staticruntime "off" 

    targetdir ("bin/glad/builds/%{cfg.system}_%{cfg.buildcfg}")
    objdir ("bin/glad/intermediates/%{cfg.system}")

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
