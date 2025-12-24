glad_prj_output_dir = ("submodules/bin/glad/builds")
glad_prj_intermediates_dir = ("submodules/bin/glad/intermediates")

project "glad"
	location "submodules"
	kind "StaticLib"
	language "C"
	systemversion "latest"
	staticruntime "off" 

    targetdir (glad_prj_output_dir .. "/%{cfg.system}_%{cfg.buildcfg}")
    objdir (glad_prj_intermediates_dir .. "/%{cfg.system}")

	files
	{
		"submodules/include/glad/glad.h",
		"submodules/include/KHR/khrplatform.h",
		"submodules/src/glad.c"
	}

	includedirs {
		"submodules/include"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		optimize "off"

	filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "on"
