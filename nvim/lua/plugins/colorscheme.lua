return {
  {
    "wkhadgar/catppuccin-nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      color_overrides = {
        mocha = {
          rosewater = "#FFC2D4",
          flamingo = "#FE7D6C",
          pink = "#FF85A6",
          mauve = "#B5A1F2",
          red = "#FC618D",
          maroon = "#C44D6F",
          peach = "#FD9353",
          yellow = "#FCE566",
          green = "#7BD88F",
          teal = "#5AD4E6",
          sky = "#8CEAF5",
          sapphire = "#62A0EA",
          blue = "#948AE3",
          lavender = "#B8B0F5",
          text = "#F7F1FF",
          subtext1 = "#D1D1D1",
          subtext0 = "#ABABAB",
          overlay2 = "#858585",
          overlay1 = "#747474",
          overlay0 = "#636363",
          surface2 = "#525252",
          surface1 = "#424242",
          surface0 = "#323232",
          base = "#1A1919",
          mantle = "#191919",
          crust = "#222222",
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
