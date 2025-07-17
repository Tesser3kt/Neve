{ lib, config, ... }: {
  imports =
    [ ./treesitter-nvim.nix ./nvim-jdtls.nix ./nvim-lint.nix ./vimtex.nix ];

  options = {
    languages.enable = lib.mkEnableOption "Enable languages module";
  };
  config = lib.mkIf config.languages.enable {
    treesitter-nvim.enable = lib.mkDefault true;
    jdtls.enable = lib.mkDefault true;
    nvim-lint.enable = lib.mkDefault true;
    vimtex.enable = lib.mkDefault true;
  };
}
