vim.g.lazyvim_picker = "telescope"

return {
  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts = opts or {}
      opts.files = {
        cmd = [[fd --type f --hidden --strip-cwd-prefix \
        --exclude .git --exclude node_modules --exclude dist --exclude .next \
        --exclude build --exclude coverage --exclude ios/Pods --exclude android/build \
        --exclude .dart_tool]],
      }
      opts.grep = {
        rg_opts = [[--hidden --column --line-number --no-heading --color=always --smart-case \
        -g !.git -g !node_modules -g !dist -g !.next -g !coverage -g !build -g !ios/Pods -g !android/build -g !.dart_tool]],
      }
      opts.ui_select = function(fzf_opts, items)
        fzf_opts = fzf_opts or {}
        items = items or {}
        local count = #items

        local function base_height()
          local height = math.floor(math.min(vim.o.lines * 0.8, count + 4) + 0.5)
          return math.max(height, 1)
        end

        local function code_action_height()
          local preview_height = 16
          local min_list_height = math.max(count + 4, 5)
          local max_total_height = math.floor(vim.o.lines * 0.8)
          local total_height = math.min(min_list_height + preview_height, max_total_height)
          return math.max(total_height, preview_height + 5)
        end

        local raw_prompt = fzf_opts.prompt or "Select"
        local title_text = vim.trim(raw_prompt:gsub("%s*:%s*$", ""))
        if title_text == "" then
          title_text = "Select"
        end
        local winopts = {
          title = " " .. title_text .. " ",
          title_pos = "center",
          width = 0.5,
          height = base_height(),
        }

        if fzf_opts.kind == "codeaction" then
          winopts.layout = "vertical"
          winopts.height = code_action_height()
          local preview = {
            layout = "vertical",
            vertical = "down:15,border-top",
          }
          if vim.tbl_isempty(vim.lsp.get_clients({ bufnr = 0, name = "vtsls" })) then
            winopts.preview = preview
          else
            preview.hidden = "hidden"
            winopts.preview = preview
          end
        end

        return vim.tbl_deep_extend("force", fzf_opts, {
          prompt = " ",
          winopts = winopts,
        })
      end
      return opts
    end,
    config = function(_, opts)
      require("fzf-lua").setup(opts)
    end,
  },
}
