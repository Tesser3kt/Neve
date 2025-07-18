{ lib, config, ... }: {
  # Import all your configuration modules here
  imports = [
    ./locals.nix
    ./bufferlines
    ./colorschemes
    ./completion
    ./dap
    ./filetrees
    ./git
    ./keys.nix
    ./languages
    ./lsp
    ./none-ls
    ./pluginmanagers
    ./sets
    ./snippets
    ./statusline
    ./telescope
    ./ui
    ./utils
  ];

  bufferlines.enable = lib.mkDefault true;
  colorschemes.enable = lib.mkDefault true;
  completion.enable = lib.mkDefault true;
  dap.enable = lib.mkDefault true;
  filetrees.enable = lib.mkDefault true;
  git.enable = lib.mkDefault true;
  keys.enable = true;
  languages.enable = true;
  lsp.enable = lib.mkDefault true;
  none-ls.enable = lib.mkDefault true;
  sets.enable = lib.mkDefault true;
  pluginmanagers.enable = lib.mkDefault true;
  snippets.enable = lib.mkDefault true;
  statusline.enable = lib.mkDefault true;
  telescope.enable = lib.mkDefault true;
  ui.enable = lib.mkDefault true;
  utils.enable = lib.mkDefault true;
}
