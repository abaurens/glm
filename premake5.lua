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
    defines {
      "GLM_FORCE_RADIANS",          -- Ensures GLM uses radians
      "GLM_ENABLE_EXPERIMENTAL",    -- enables experimental features like std::hash<>() implementation for GLM types
      "GLM_FORCE_DEPTH_ZERO_TO_ONE" -- Ensures GLM uses depth range [0,1] instead of the OpenGL's [-1,1]
    }
    includedirs { "./" }
