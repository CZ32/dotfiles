return {
  "brianhuster/autosave.nvim",
  opts = {
    enabled = true,
    execution_events = { "InsertLeave", "FocusLost" },
    write_all_buffers = false,
    debounce_delay = 2000,
  },
}
