workspace "Acorn"
	architecture "x64"

	configurations
	{
		"Debug",
		"Release",
		"Dist"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Acorn"
	location "Acorn"
	kind "SharedLib"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	pchheader "acpch.h"
	pchsource "Acorn/src/acpch.cpp"

	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}

	includedirs
	{
		"%{prj.name}/src",
		"%{prj.name}/vendor/spdlog/include"
	}

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

		defines
		{
			"AC_PLATFORM_WINDOWS",
			"AC_BUILD_DLL"
		}

		postbuildcommands
		{
			("{COPY} %{cfg.buildtarget.relpath} ../bin/" .. outputdir .. "/Sandbox")
		}
		
	filter "configurations:Debug"
		defines "AC_DEBUG"
		symbols "On"
		
	filter "configurations:Release"
		defines "AC_RELEASE"
		optimize "On"
		
	filter "configurations:Dist"
		defines "AC_DIST"
		optimize "On"

project "Sandbox"
	location "Sandbox"
	kind "ConsoleApp"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}

	includedirs
	{
		"Acorn/vendor/spdlog/include",
		"Acorn/src",
	}

	links
	{
		"Acorn"
	}

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

		defines
		{
			"AC_PLATFORM_WINDOWS"
		}
		
	filter "configurations:Debug"
		defines "AC_DEBUG"
		symbols "On"
		
	filter "configurations:Release"
		defines "AC_RELEASE"
		optimize "On"
		
	filter "configurations:Dist"
		defines "AC_DIST"
		optimize "On"