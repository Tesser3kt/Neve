{ lib, config, pkgs, ... }: {
  options = { vimtex.enable = lib.mkEnableOption "Enable vimtex module"; };
  config = lib.mkIf config.vimtex.enable {
    plugins.vimtex = {
      enable = true;
      texlivePackage = pkgs.texlive.combined.scheme-full;
    };
    globals.vimtex_view_method = lib.mkForce "zathura";
  };
}
