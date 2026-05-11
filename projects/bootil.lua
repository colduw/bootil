
project "bootil_static"
	
	configurations
	{
		"Release",
		"Debug"
	}
	
	uuid ( "AB8E7B19-A70C-4767-88DE-F02160167C2E" )
	defines { "BOOTIL_COMPILE_STATIC", "BOOST_ALL_NO_LIB" }
	files { "../src/**.cpp", "../include/**.h", "../src/**.c", "../src/**.cc", "premake4.lua" }
	kind "StaticLib"
	targetname( "bootil_static" )

	symbols "On"
	editandcontinue "Off"
	enablepch "Off"
	staticruntime "On"
	vectorextensions "SSE"
	exceptionhandling "SEH"

	targetdir ( "../lib/" .. os.get() .. "/" .. _ACTION )
	includedirs { "../include/", "../src/3rdParty/" }
	
	if os.ishost( "linux" ) or os.ishost( "macosx" ) then
		buildoptions { "-fPIC" }
	end
	
	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "Speed"
		floatingpoint "Fast"
	
	filter "configurations:Debug"
		defines { "_DEBUG" }
		targetsuffix "_debug"
	

