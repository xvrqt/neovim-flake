# Customize my NeoVim instance
{pkgs, ...}: {
  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        viAlias = false;
        vimAlias = true;
        luaConfigPost = ''
          require('lspconfig').glsl_analyzer.setup{}
        '';
        debugMode = {
          enable = false;
          level = 16;
          logFile = "/tmp/nvim.log";
        };
        ui.fastaction = true;

        spellcheck.enable = true;

        lsp = {
          formatOnSave = true;
          lspkind.enable = true;
          lightbulb.enable = false;
          lspsaga.enable = true;
          # nvimCodeActionMenu.enable = false;
          trouble.enable = false;
          lspSignature.enable = true;
          lsplines.enable = true;
          lspconfig.enable = true;
          nvim-docs-view.enable = true;
        };

        debugger = {
          nvim-dap = {
            enable = true;
            ui.enable = true;
          };
        };

        languages = {
          enableLSP = true;
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;

          ts.enable = true;
          nix.enable = true;
          css.enable = true;
          html.enable = true;
          bash.enable = true;
          rust = {
            enable = true;
            lsp.enable = true;
            dap.enable = true;
            crates.enable = true;
            format.enable = true;
          };
        };

        visuals = {
          enable = true;
          nvimWebDevicons.enable = true;
          scrollBar.enable = true;
          smoothScroll.enable = true;
          cellularAutomaton.enable = false;
          fidget-nvim.enable = true;
          highlight-undo.enable = true;

          indentBlankline = {
            enable = true;
            #fillChar = null;
            #eolChar = null;
            #scope.enabled = true;
          };

          cursorline = {
            enable = true;
            lineTimeout = 0;
          };
        };

        statusline = {
          lualine = {
            enable = true;
            theme = "catppuccin";
          };
        };

        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
          transparent = false;
        };

        autopairs.enable = true;

        autocomplete = {
          enable = true;
          type = "nvim-cmp";
        };

        filetree = {
          nvimTree.enable = true;
          nvimTree.setupOpts.git.enable = true;
        };

        tabline = {
          nvimBufferline.enable = true;
        };

        treesitter = {
          context.enable = true;
          addDefaultGrammars = false;
          grammars = [
            pkgs.glsl_analyzer
            pkgs.vimPlugins.nvim-treesitter-parsers.glsl
          ];
        };

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        telescope.enable = true;

        git = {
          enable = true;
          gitsigns.enable = true;
          gitsigns.codeActions.enable = false;
        };

        # minimap = {
        #   minimap-vim.enable = true;
        #   codewindow.enable = true;
        # };

        dashboard = {
          dashboard-nvim.enable = false;
          alpha.enable = true;
        };

        notify = {
          nvim-notify.enable = true;
        };

        projects = {
          project-nvim.enable = true;
        };

        utility = {
          ccc.enable = false;
          vim-wakatime.enable = false;
          icon-picker.enable = false;
          surround.enable = true;
          diffview-nvim.enable = true;
          motion = {
            hop.enable = true;
            leap.enable = true;
          };

          images = {
            image-nvim.enable = false;
          };
        };

        notes = {
          obsidian.enable = true;
          orgmode.enable = false;
          mind-nvim.enable = false;
          todo-comments.enable = true;
        };

        terminal = {
          toggleterm = {
            enable = true;
            lazygit.enable = true;
          };
        };

        ui = {
          borders.enable = true;
          noice.enable = true;
          colorizer.enable = true;
          modes-nvim.enable = false;
          illuminate.enable = true;
          breadcrumbs = {
            enable = false;
            navbuddy.enable = false;
          };
          smartcolumn = {
            enable = true;
            setupOpts.custom_colorcolumn = {
              nix = "110";
              rust = "120";
            };
          };
        };

        comments = {
          comment-nvim.enable = true;
        };
      };
    };
  };
}
