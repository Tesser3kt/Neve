{ config, lib, ... }: {
  autoCmd = [
    # Latex local options
    {
      event = [ "BufRead" "BufNewFile" ];
      pattern = [ "*.tex" ];
      callback = {
        __raw = ''
          function()
            vim.opt_local.shiftwidth = 1
            vim.opt_local.spell = true
            vim.opt_local.spelllang = "csa"
            vim.opt_local.textwidth = 80
            vim.opt_local.wrapmargin = 2
            vim.opt_local.formatoptions = "tcq"
            vim.opt_local.colorcolumn = "81"
            -- add item on Enter in itemize/enumerate/description
            vim.cmd [[
              function! AddItem()
                let [end_lnum, end_col] = searchpairpos('\\begin{', "", '\\end{', 'nW')
                if match(getline(end_lnum), '\(itemize\|enumerate\|description\)') != -1
                  return "\\item "
                else
                  return ""
                endif
              endfunction
              inoremap <expr><buffer> <CR> getline('.') =~ '\item $' 
                \ ? '<c-w><c-w>'
                \ : (col(".") < col("$") ? '<CR>' : '<CR>'.AddItem() )
              nnoremap <expr><buffer> o "o".AddItem()
              nnoremap <expr><buffer> O "O".AddItem()
            ]]
          end
        '';
      };
    }
  ];
}
