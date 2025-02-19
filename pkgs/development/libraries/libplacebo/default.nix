{ lib, stdenv
, fetchFromGitLab
, meson
, ninja
, pkg-config
, python3Packages
, vulkan-headers
, vulkan-loader
, shaderc
, glslang
, lcms2
, libepoxy
, libGL
, xorg
}:

stdenv.mkDerivation rec {
  pname = "libplacebo";
  version = "4.157.0";

  src = fetchFromGitLab {
    domain = "code.videolan.org";
    owner = "videolan";
    repo = pname;
    rev = "v${version}";
    sha256 = "08kqsd29h8wm0vz7698wh2mdgpwv6anqc5n7d1spnnamwyfwc64h";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    python3Packages.Mako
  ];

  buildInputs = [
    vulkan-headers
    vulkan-loader
    shaderc
    glslang
    lcms2
    libepoxy
    libGL
    xorg.libX11
  ];

  mesonFlags = [
    "-Dvulkan-registry=${vulkan-headers}/share/vulkan/registry/vk.xml"
    "-Ddemos=false" # Don't build and install the demo programs
    "-Dd3d11=disabled" # Disable the Direct3D 11 based renderer
  ];

  meta = with lib; {
    description = "Reusable library for GPU-accelerated video/image rendering primitives";
    longDescription = ''
      Reusable library for GPU-accelerated image/view processing primitives and
      shaders, as well a batteries-included, extensible, high-quality rendering
      pipeline (similar to mpv's vo_gpu). Supports Vulkan, OpenGL and Metal (via
      MoltenVK).
    '';
    homepage = "https://code.videolan.org/videolan/libplacebo";
    changelog = "https://code.videolan.org/videolan/libplacebo/-/tags/v${version}";
    license = licenses.lgpl21Plus;
    maintainers = with maintainers; [ primeos tadeokondrak ];
    platforms = platforms.all;
  };
}
