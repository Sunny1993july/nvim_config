return {
    'JellyApple102/flote.nvim',
	config = function ()
		-- defaults
require('flote').setup{
    q_to_quit = false,
    window_style = 'minimal',
    window_border = 'double',
    window_title = true,
    notes_dir =  '/home/kamaljeet-singh/Desktop/Notes',
    files = {
        global = 'flote-global.md',
        cwd = function ()
           return vim.fn.getcwd()
        end,
        file_name = function (cwd)
            local base_name = vim.fs.basename(cwd)	  
            local parent_base_name = vim.fs.basename(vim.fs.dirname(cwd))
	    local parent_base_name_formated = string.gsub(base_name, "%.", "")
            local file_name =  parent_base_name_formated .. '_' .. base_name .. '.md'
	   	    return file_name
				end
    },
	     }
local notes_dir =  '/home/kamaljeet-singh/Desktop/Notes'
		vim.api.nvim_create_autocmd('BufWritePost', {
			pattern = notes_dir .. '/*.md',
			callback = function()
				local current_buf_path = vim.api.nvim_buf_get_name(0)
				if current_buf_path and vim.bo.buftype == '' and vim.endswith(current_buf_path, '.md') then
				local file_path = vim.fn.expand('<afile>')
				if file_path and vim.startswith(file_path, notes_dir) then
					local file_name = vim.fs.basename(file_path)

					vim.fn.system({
						'git', '-C', notes_dir, 'add', file_name
					})

					vim.fn.system({
						'git', '-C', notes_dir, 'commit', '-m', 'Auto commit from nvim for ' .. file_name .. ' at ' .. os.date('%H:%M') .. '.' 
					})
					print("Notes have been committed.")
				vim.fn.system({
							'git', '-C', notes_dir, 'push', '-u', 'origin', 'master'
						})
						print("Notes is pushed.")
				end
			end

			end
		})	
	end
}
