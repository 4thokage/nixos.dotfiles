{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      cmake
      gnumake
      bear

      valgrind
      clang-tools

      # libs
      glm
      SDL2
      SDL2_gfx
    ];
  };
}
