-- glm

require("premake", ">=5.0.0-beta6")

project "glm"
  kind "None"
  language "C++"
  cppdialect "C++17"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  files {
    "premake5.lua",
    "glm/**.natvis",
    "glm/**.inl",
    "glm/**.hpp",
    "glm/**.h",
  }

  usage "INTERFACE"
    includedirs { "./" }
