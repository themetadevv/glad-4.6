base_dir = "bin"
output_dir = (base_dir .. "/glad/builds")
intermediates_dir = (base_dir .. "/glad/intermediates")

project "glad"
	kind "StaticLib"
	language "C"
	systemversion "latest"
	staticruntime "On" 

    targetdir (output_dir .. "/%{cfg.system}_%{cfg.buildcfg}")
    objdir (intermediates_dir .. "/%{cfg.system}")

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
