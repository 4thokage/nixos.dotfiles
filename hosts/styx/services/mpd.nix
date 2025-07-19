{pkgs, ...}: {
  services.mpd = {
    enable = true;
    musicDirectory = "/home/jsr/music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "Styx PipeWire"
      }
    '';

    network.listenAddress = "any";
    # network.startWhenNeeded = true;
  };
}
