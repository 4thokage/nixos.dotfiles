{pkgs, ...}: {
  services.mpd = {
    enable = true;
    musicDirectory = "/home/jsr/Music";
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
