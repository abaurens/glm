-- glm

project "glm"
  kind "None"
  language "C++"
  cppdialect "C++17"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  IncludeDir["glm"] = "%{wks.location}/libs/glm"

  includedirs {}

  files {
    "premake5.lua",
    "glm/**.inl",
    "glm/**.hpp",
    "glm/**.h",
  }