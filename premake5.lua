include "Dependencies.lua"

workspace "Application"
	architecture "x86_64"
	startproject "Application"

	configurations
	{
		"Debug",
		"Release"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
	include "thirdparty/GLFW"
	include "thirdparty/Glad"
group ""

include "Application"