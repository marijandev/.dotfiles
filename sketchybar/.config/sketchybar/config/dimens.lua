local padding <const> = {
  background = 20,
  icon = 0,
  label = 8,
  bar = 20,
  left = 12,
  right = 12,
  width = 20,
  align = "center",
  item = 18,
  popup = 8,
}

local graphics <const> = {
  bar = {
    height = 20,
    offset = 8,
  },
  background = {
    height = 18,
    corner_radius = 3,
  },
  slider = {
    height = 20,
  },
  popup = {
    width = 200,
    large_width = 300,
  },
  blur_radius = 30,
}

local text <const> = {
  icon = 14.0,
  label = 14.0,
}

return {
  padding = padding,
  graphics = graphics,
  text = text,
}
