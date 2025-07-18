{ lib, config, ... }: {
  options = { vimtex.enable = lib.mkEnableOption "Enable vimtex module"; };
  config =
    lib.mkIf config.vimtex.enable { plugins.vimtex = { enable = true; }; };
}
