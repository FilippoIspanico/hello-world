-- Definizione del progetto
workspace "HelloWorld"
   configurations { "Debug", "Release" }

-- Configurazione del progetto
project "HelloWorld"
   location "HelloWorld"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"

   -- File sorgente
   files { "HelloWorld.cpp" }

   -- Configurazione specifica per la modalità di build
   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
