{ lib, config, ... }: {
  options = { vimtex.enable = lib.mkEnableOption "Enable vimtex module"; };
  config =
    lib.mkIf config.vimtex.enable { plugins.vimtex = { enable = true; }; };
  keymaps = lib.mkIf config.vimtex.enable [{
    mode = "n";
    key = "<leader>vc";
    action = "<cmd>VimtexCompile<cr>";
  }];
  # Latex local options
  globalOpts = { vimtex_view_method = "zathura"; };
}
