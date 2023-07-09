vim.filetype.add({
  pattern = {
    [".*/roles/.*.yml"] = "yaml.ansible",
    [".*/roles/.*.yaml"] = "yaml.ansible",
    [".*/playbooks/.*.yml"] = "yaml.ansible",
    [".*/playbooks/.*.yaml"] = "yaml.ansible",
    [".*.yml.j2"] = "yaml",
    [".*.yaml.j2"] = "yaml",
  },
})

