-- ABOUT: 
-- Displays the color of a hex values in your editor
-- -- For example #c048f7",

--=============================================================================
-- Installation

vim.pack.add({
    { src = "https://github.com/norcalli/nvim-colorizer.lua" }
})

--=============================================================================
-- Configuration

require("colorizer").setup({
    -- Set the filetypes

    -- For viewing colour settings in my Neovim configuration
    "lua";

    -- For viewing colour settings in my Hyprland configuration
    "conf";

    -- For viewing colour settings while using Tailwind CSS
    "html";

    -- For creating custom colours in Tailwind CSS
    "css";

    -- For viewing colours in the `app.json` file 
    -- in React Native projects
    "json";

    -- For viewing colours in the `tailwind.config.js` file 
    -- in React Native projects
    "javascript";

    -- For viewing colours in TypeScript files 
    -- that have React code 
    "typescriptreact";

    -- For viewing colours in rofi config file
    "rasi";
})

--=============================================================================
