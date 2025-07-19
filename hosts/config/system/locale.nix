{lib, ...}: {
  time = {
    timeZone = lib.mkDefault "Europe/Lisbon";
    hardwareClockInLocalTime = lib.mkDefault true;
  };
}
