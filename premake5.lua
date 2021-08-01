project "yaml-cpp"
  kind "StaticLib"
  language "C++"

  targetdir("bin/" .. outputdir .. "/%{prj.name}")
  objdir("intermediate/" .. outputdir .. "/%{prj.name}")

  files { "src/**.h", "src/**.cpp", "include/**.h"}

  includedirs { "include" }

  filter "system:windows"
         systemversion "latest"
         cppdialect "C++17"
         staticruntime "On"

  filter "system:linux"
         pic "On"
         systemversion "latest"
         cppdialect "C++17"
         staticruntime "On"

  filter "configurations:Debug"
         runtime "Debug"
         symbols "On"

  filter "configurations:Release"
         runtime "Release"
         optimize "On"
