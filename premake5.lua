project "ImGui"
	kind "StaticLib"
	language "C++"
  staticruntime "off"

	targetdir ("bin/" .. outputDirectory .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDirectory .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
    staticruntime "off"
		cppdialect "C++20"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
    staticruntime "off"
    optimize "off"

	filter "configurations:Release"
		runtime "Release"
    staticruntime "off"
		optimize "on"
    symbols "off"

    filter "configurations:Dist"
		runtime "Release"
    staticruntime "off"
		optimize "on"
    symbols "off"
