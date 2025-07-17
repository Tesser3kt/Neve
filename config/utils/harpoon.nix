{ lib, config, ... }:
{
  options = {
    harpoon.enable = lib.mkEnableOption "Enable harpoon module";
  };
  config = lib.mkIf config.harpoon.enable {
    plugins.harpoon = {
      enable = true;
      enableTelescope = true;
    };
  };
}
