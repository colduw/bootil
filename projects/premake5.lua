workspace "Bootil"
	configurations { "Debug", "Release" }
	platforms { "x86", "x64" }
	targetdir ( "%{cfg.shortname}_%{cfg.system}" )
	
	filter "platforms:x86"
		architecture "x86"

	filter "platforms:x64"
		architecture "x64"
	
	include( "bootil_premake5.lua" );
