{ lib, config, ... }:
{
  options = {
    nord.enable = lib.mkEnableOption "Enable nord module";
  };
  config = lib.mkIf config.nord.enable {
    colorschemes = {
      nord = {
        enable = true;
        settings = {
          borders = true;
          italic = false;
        };
      };
    };
  };
}
