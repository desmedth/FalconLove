return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 50,
  height = 120,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 2,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "ground",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 12,
      image = "../gfx/ground.png",
      imagewidth = 192,
      imageheight = 160,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 120,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 50,
      height = 120,
      id = 1,
      name = "Ground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        49, 37, 37, 49, 37, 37, 88, 49, 49, 61, 61, 111, 61, 111, 111, 51, 49, 49, 49, 51, 51, 111, 111, 111, 51, 37, 37, 49, 51, 37, 111, 61, 61, 37, 111, 111, 51, 86, 111, 37, 111, 111, 111, 51, 111, 51, 111, 111, 49, 51,
        61, 37, 49, 61, 37, 49, 88, 51, 37, 61, 111, 49, 111, 85, 111, 111, 111, 51, 37, 111, 111, 49, 37, 111, 51, 51, 37, 111, 111, 111, 37, 111, 111, 37, 37, 37, 109, 77, 75, 75, 99, 75, 99, 99, 99, 75, 99, 75, 99, 75,
        49, 49, 37, 49, 49, 110, 88, 111, 51, 37, 61, 74, 99, 75, 75, 75, 75, 99, 99, 75, 99, 75, 75, 75, 99, 75, 99, 99, 75, 75, 99, 99, 75, 99, 99, 75, 75, 78, 41, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        37, 49, 61, 49, 49, 85, 88, 73, 61, 37, 61, 86, 85, 85, 51, 85, 85, 51, 37, 111, 37, 61, 51, 49, 37, 37, 111, 111, 51, 111, 51, 37, 111, 37, 37, 51, 51, 86, 52, 72, 72, 43, 43, 66, 43, 43, 43, 72, 43, 43,
        37, 49, 49, 37, 61, 49, 86, 111, 85, 49, 51, 88, 49, 61, 111, 51, 37, 49, 37, 49, 51, 37, 111, 37, 49, 37, 111, 37, 37, 37, 111, 37, 111, 111, 111, 51, 37, 86, 52, 66, 43, 66, 43, 66, 72, 66, 66, 43, 72, 72,
        37, 37, 37, 49, 37, 73, 86, 102, 99, 75, 99, 87, 75, 99, 99, 99, 75, 75, 75, 99, 75, 75, 75, 75, 99, 99, 99, 75, 99, 99, 75, 75, 99, 75, 75, 75, 75, 78, 52, 72, 72, 72, 66, 72, 72, 72, 66, 43, 72, 43,
        49, 61, 61, 61, 61, 49, 88, 85, 37, 49, 37, 88, 85, 51, 49, 51, 49, 111, 111, 61, 51, 37, 85, 51, 85, 51, 37, 37, 37, 51, 51, 51, 111, 49, 51, 51, 37, 86, 52, 66, 66, 72, 72, 72, 66, 72, 43, 72, 72, 43,
        37, 49, 37, 49, 37, 51, 88, 61, 51, 61, 111, 77, 75, 99, 99, 99, 99, 99, 75, 75, 99, 99, 99, 75, 99, 99, 99, 99, 99, 75, 75, 99, 99, 99, 75, 99, 99, 78, 52, 66, 72, 43, 66, 66, 43, 72, 66, 66, 66, 66,
        37, 37, 49, 37, 37, 51, 86, 111, 51, 49, 37, 86, 61, 49, 61, 51, 85, 37, 37, 51, 61, 85, 37, 51, 61, 37, 111, 111, 37, 37, 37, 111, 51, 61, 61, 51, 49, 86, 52, 43, 43, 43, 72, 72, 43, 43, 72, 66, 43, 43,
        49, 37, 37, 37, 49, 111, 86, 85, 111, 51, 61, 86, 85, 51, 49, 51, 111, 37, 37, 37, 51, 51, 37, 37, 37, 61, 51, 37, 111, 111, 111, 111, 51, 37, 111, 111, 109, 88, 52, 66, 66, 43, 72, 43, 43, 72, 66, 66, 43, 66,
        49, 49, 49, 37, 37, 102, 87, 75, 75, 99, 99, 87, 75, 99, 75, 75, 75, 75, 75, 99, 75, 75, 75, 75, 75, 99, 75, 99, 75, 75, 75, 99, 75, 99, 99, 99, 75, 78, 52, 43, 72, 66, 66, 43, 43, 43, 72, 43, 43, 66,
        37, 49, 37, 61, 37, 37, 86, 102, 75, 75, 75, 87, 99, 99, 75, 99, 99, 75, 75, 99, 99, 75, 99, 75, 99, 75, 99, 75, 75, 99, 99, 99, 75, 75, 99, 99, 99, 78, 53, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39,
        49, 61, 49, 49, 61, 73, 88, 51, 51, 111, 61, 88, 111, 37, 49, 37, 85, 49, 85, 61, 49, 51, 61, 61, 49, 85, 51, 111, 51, 49, 49, 61, 111, 111, 111, 49, 2147483745, 77, 75, 75, 75, 75, 99, 99, 99, 75, 99, 75, 99, 75,
        61, 61, 37, 49, 61, 51, 88, 61, 85, 51, 61, 77, 99, 75, 99, 75, 99, 75, 75, 75, 99, 75, 75, 99, 75, 99, 75, 75, 99, 99, 99, 99, 75, 75, 99, 99, 75, 78, 2147483757, 110, 85, 111, 49, 61, 51, 85, 73, 61, 85, 85,
        49, 61, 37, 37, 49, 49, 88, 37, 51, 37, 61, 86, 49, 49, 85, 85, 111, 61, 37, 49, 49, 51, 85, 111, 85, 49, 37, 61, 61, 61, 61, 111, 37, 51, 49, 37, 37, 86, 73, 49, 49, 37, 37, 111, 111, 111, 61, 51, 37, 49,
        61, 37, 37, 37, 61, 73, 88, 37, 111, 49, 49, 98, 75, 99, 75, 99, 75, 75, 75, 99, 75, 75, 99, 75, 99, 99, 75, 75, 99, 99, 75, 75, 99, 99, 75, 75, 75, 78, 37, 49, 61, 61, 37, 110, 37, 61, 37, 110, 85, 51,
        49, 61, 49, 61, 49, 61, 86, 49, 85, 49, 51, 37, 85, 85, 85, 85, 85, 61, 37, 37, 51, 85, 61, 49, 85, 51, 61, 49, 49, 51, 111, 49, 51, 111, 61, 61, 109, 77, 99, 75, 99, 75, 99, 75, 99, 99, 75, 75, 99, 75,
        61, 61, 61, 37, 61, 37, 88, 61, 61, 49, 37, 37, 49, 37, 37, 61, 49, 37, 37, 37, 61, 37, 49, 37, 61, 61, 37, 49, 37, 61, 37, 49, 61, 37, 37, 37, 49, 88, 111, 85, 73, 110, 61, 37, 73, 111, 111, 111, 73, 73,
        37, 37, 49, 61, 61, 51, 88, 61, 49, 37, 49, 49, 61, 49, 61, 61, 49, 61, 49, 61, 61, 49, 37, 37, 37, 37, 37, 37, 49, 49, 61, 49, 61, 49, 37, 37, 37, 77, 75, 75, 99, 75, 99, 75, 99, 99, 99, 99, 75, 99,
        37, 37, 61, 37, 49, 37, 86, 111, 37, 61, 37, 37, 61, 37, 37, 61, 61, 61, 37, 37, 37, 49, 37, 61, 61, 61, 49, 49, 61, 61, 49, 61, 37, 61, 49, 37, 37, 77, 75, 99, 99, 99, 99, 75, 75, 75, 75, 99, 75, 99,
        37, 61, 61, 51, 73, 110, 86, 73, 51, 51, 85, 37, 110, 73, 51, 73, 111, 110, 61, 49, 61, 51, 61, 85, 61, 73, 51, 111, 37, 111, 110, 61, 111, 49, 111, 111, 51, 88, 85, 51, 85, 37, 51, 61, 85, 37, 110, 85, 110, 85,
        99, 75, 99, 75, 99, 99, 90, 99, 75, 75, 75, 75, 99, 75, 99, 75, 75, 99, 75, 75, 99, 75, 75, 75, 99, 99, 75, 75, 75, 99, 99, 75, 99, 75, 99, 99, 99, 78, 73, 111, 37, 51, 49, 111, 51, 49, 61, 111, 111, 49,
        99, 99, 75, 75, 75, 75, 75, 99, 75, 75, 75, 75, 75, 75, 75, 75, 89, 99, 99, 75, 75, 99, 99, 99, 99, 75, 99, 99, 99, 75, 99, 75, 75, 99, 99, 99, 99, 78, 85, 61, 37, 51, 61, 49, 61, 37, 37, 49, 111, 49,
        73, 37, 37, 111, 85, 85, 49, 37, 73, 51, 73, 37, 73, 51, 61, 49, 86, 97, 61, 111, 51, 110, 111, 49, 110, 37, 61, 61, 73, 110, 51, 110, 111, 51, 110, 110, 109, 86, 85, 61, 61, 61, 51, 61, 37, 51, 51, 49, 111, 111,
        99, 75, 75, 75, 75, 99, 75, 99, 75, 99, 99, 75, 99, 75, 75, 75, 87, 75, 99, 99, 99, 99, 75, 75, 99, 75, 75, 75, 75, 75, 75, 75, 75, 99, 99, 99, 75, 78, 49, 49, 51, 61, 111, 111, 51, 61, 51, 111, 61, 37,
        61, 111, 49, 49, 85, 111, 37, 61, 61, 61, 111, 37, 85, 51, 37, 111, 88, 85, 110, 49, 37, 110, 110, 111, 49, 49, 37, 49, 73, 37, 110, 51, 73, 110, 51, 51, 110, 88, 2147483757, 61, 61, 61, 51, 49, 61, 111, 111, 37, 37, 51,
        37, 61, 49, 61, 49, 49, 37, 61, 49, 37, 49, 61, 37, 37, 49, 61, 88, 73, 61, 49, 37, 49, 61, 49, 49, 49, 61, 49, 49, 49, 61, 49, 49, 49, 49, 49, 37, 88, 85, 111, 61, 51, 37, 51, 111, 61, 37, 51, 111, 49,
        85, 85, 49, 37, 37, 61, 61, 51, 49, 51, 49, 37, 37, 51, 85, 37, 86, 110, 110, 85, 85, 37, 73, 61, 37, 37, 49, 49, 85, 73, 49, 73, 73, 111, 51, 110, 73, 86, 49, 37, 61, 37, 111, 111, 51, 61, 51, 51, 37, 49,
        99, 75, 99, 75, 99, 99, 75, 75, 99, 75, 99, 75, 99, 75, 75, 75, 90, 75, 99, 99, 99, 99, 99, 99, 75, 99, 99, 89, 75, 99, 99, 99, 75, 75, 75, 99, 99, 78, 37, 51, 111, 111, 51, 111, 61, 51, 51, 37, 49, 111,
        51, 37, 111, 111, 111, 61, 37, 51, 37, 37, 61, 111, 37, 51, 85, 37, 85, 37, 111, 37, 37, 51, 37, 51, 49, 111, 85, 86, 85, 49, 73, 61, 111, 49, 49, 73, 85, 88, 111, 61, 51, 49, 49, 37, 37, 37, 49, 111, 37, 49,
        37, 61, 51, 37, 49, 51, 111, 61, 61, 61, 51, 51, 49, 37, 49, 51, 49, 37, 51, 49, 111, 37, 37, 61, 51, 51, 73, 88, 51, 51, 61, 49, 37, 37, 49, 61, 109, 88, 73, 85, 73, 85, 61, 51, 111, 73, 49, 110, 49, 37,
        37, 51, 37, 51, 49, 37, 49, 49, 61, 51, 49, 49, 51, 37, 61, 61, 37, 61, 51, 37, 51, 111, 37, 49, 37, 111, 51, 86, 85, 51, 51, 51, 49, 37, 51, 51, 73, 77, 99, 75, 99, 99, 75, 75, 99, 75, 99, 75, 99, 75,
        111, 61, 49, 61, 61, 49, 49, 51, 111, 61, 37, 51, 49, 111, 37, 49, 49, 37, 51, 111, 111, 51, 111, 37, 51, 111, 49, 88, 111, 61, 61, 111, 37, 49, 37, 111, 85, 86, 37, 111, 85, 51, 49, 110, 85, 110, 111, 49, 73, 37,
        51, 51, 37, 61, 111, 111, 37, 37, 51, 111, 49, 111, 61, 111, 61, 51, 37, 37, 61, 51, 51, 61, 61, 61, 111, 111, 110, 86, 37, 111, 37, 51, 51, 51, 61, 49, 51, 77, 99, 75, 75, 75, 99, 99, 75, 75, 99, 75, 99, 99,
        61, 61, 51, 111, 49, 37, 61, 49, 37, 37, 37, 111, 49, 37, 51, 37, 49, 111, 49, 51, 49, 37, 37, 111, 49, 37, 37, 86, 51, 111, 61, 49, 51, 51, 51, 111, 51, 88, 2147483757, 61, 85, 49, 111, 61, 111, 37, 73, 37, 85, 61,
        101, 51, 51, 85, 111, 85, 51, 111, 51, 51, 61, 111, 85, 111, 37, 111, 85, 37, 51, 37, 111, 51, 111, 49, 51, 51, 49, 88, 85, 61, 110, 51, 49, 73, 49, 85, 85, 88, 51, 51, 111, 111, 49, 51, 51, 51, 111, 49, 61, 111,
        87, 75, 99, 99, 99, 75, 99, 75, 99, 75, 75, 99, 99, 75, 75, 99, 99, 99, 75, 75, 75, 75, 75, 99, 75, 99, 99, 87, 75, 99, 75, 75, 75, 75, 99, 99, 99, 78, 49, 51, 37, 51, 61, 49, 37, 37, 49, 61, 111, 61,
        88, 37, 37, 51, 111, 85, 49, 49, 37, 61, 111, 61, 111, 85, 37, 111, 111, 51, 37, 37, 37, 49, 49, 37, 61, 49, 51, 88, 73, 49, 111, 73, 37, 37, 85, 51, 109, 88, 61, 37, 51, 37, 111, 51, 49, 49, 51, 51, 49, 111,
        87, 99, 99, 99, 99, 75, 99, 75, 99, 75, 75, 75, 99, 75, 75, 75, 99, 75, 99, 99, 75, 75, 75, 75, 75, 75, 99, 87, 99, 75, 75, 75, 75, 75, 75, 75, 99, 78, 61, 61, 111, 51, 37, 51, 49, 111, 37, 111, 61, 37,
        88, 111, 51, 49, 37, 85, 110, 111, 37, 110, 110, 51, 85, 111, 49, 73, 111, 111, 73, 85, 49, 49, 85, 110, 73, 61, 61, 86, 111, 37, 37, 49, 51, 49, 51, 111, 51, 86, 85, 111, 61, 37, 51, 51, 61, 111, 61, 37, 61, 61,
        87, 75, 75, 75, 99, 75, 75, 75, 75, 75, 75, 99, 99, 75, 99, 75, 89, 75, 99, 99, 99, 99, 99, 75, 99, 99, 75, 90, 75, 75, 99, 75, 75, 75, 99, 99, 75, 78, 49, 37, 37, 51, 61, 85, 49, 37, 51, 37, 37, 51,
        113, 111, 85, 111, 37, 85, 111, 61, 37, 51, 61, 111, 111, 49, 37, 97, 88, 61, 51, 49, 51, 37, 37, 37, 111, 49, 61, 61, 111, 51, 37, 49, 61, 51, 49, 111, 51, 77, 99, 99, 75, 75, 75, 99, 99, 75, 99, 99, 99, 75,
        61, 61, 37, 111, 61, 49, 49, 51, 37, 49, 61, 49, 37, 37, 61, 49, 88, 111, 51, 51, 111, 37, 61, 37, 49, 51, 61, 37, 111, 37, 37, 49, 51, 51, 49, 111, 37, 88, 2147483757, 111, 111, 61, 85, 37, 61, 49, 51, 110, 51, 37,
        37, 49, 51, 49, 49, 61, 37, 111, 61, 61, 37, 61, 61, 49, 61, 49, 88, 111, 37, 49, 37, 37, 49, 51, 111, 61, 111, 111, 51, 51, 37, 111, 51, 37, 49, 51, 49, 77, 75, 99, 75, 99, 99, 75, 99, 99, 99, 75, 99, 99,
        111, 111, 51, 49, 111, 111, 51, 49, 111, 51, 37, 111, 111, 37, 37, 49, 86, 61, 37, 37, 61, 49, 111, 37, 61, 51, 51, 61, 37, 37, 111, 51, 37, 61, 61, 37, 73, 86, 111, 111, 49, 37, 61, 61, 111, 61, 37, 61, 49, 111,
        51, 37, 49, 49, 51, 61, 73, 61, 61, 61, 111, 49, 73, 61, 61, 37, 88, 49, 49, 85, 110, 61, 37, 73, 49, 49, 111, 49, 49, 110, 37, 37, 110, 61, 73, 61, 109, 88, 111, 37, 61, 61, 37, 51, 51, 49, 37, 51, 51, 37,
        75, 99, 99, 99, 75, 99, 75, 99, 99, 75, 75, 99, 99, 75, 89, 75, 90, 75, 75, 75, 99, 99, 99, 99, 99, 99, 99, 99, 75, 75, 99, 99, 75, 99, 99, 75, 99, 78, 111, 37, 51, 61, 51, 49, 49, 111, 49, 37, 61, 61,
        49, 49, 49, 37, 37, 110, 110, 61, 51, 110, 73, 110, 73, 111, 86, 61, 51, 111, 61, 49, 85, 61, 51, 85, 85, 49, 85, 51, 37, 73, 61, 85, 73, 49, 37, 110, 110, 77, 75, 99, 99, 75, 99, 75, 99, 75, 75, 99, 99, 75,
        51, 61, 49, 37, 111, 61, 49, 49, 49, 111, 111, 61, 51, 61, 86, 111, 49, 111, 37, 111, 37, 61, 49, 49, 61, 61, 37, 37, 49, 61, 37, 37, 49, 37, 37, 61, 51, 86, 2147483757, 85, 49, 111, 49, 51, 110, 73, 37, 61, 49, 61,
        37, 61, 49, 37, 111, 61, 73, 61, 49, 110, 51, 51, 111, 110, 88, 61, 37, 111, 110, 73, 49, 51, 37, 85, 37, 37, 49, 73, 110, 37, 111, 111, 73, 110, 49, 37, 61, 77, 75, 99, 99, 75, 99, 99, 75, 75, 75, 99, 75, 99,
        75, 99, 99, 75, 75, 99, 75, 99, 75, 75, 99, 99, 99, 99, 90, 75, 99, 75, 99, 75, 75, 99, 99, 75, 99, 75, 75, 99, 99, 89, 75, 99, 75, 99, 99, 99, 75, 78, 110, 51, 85, 51, 97, 49, 111, 110, 85, 49, 111, 111,
        111, 110, 110, 49, 61, 51, 51, 110, 73, 49, 37, 51, 37, 111, 51, 37, 51, 73, 73, 37, 37, 73, 61, 61, 49, 110, 110, 51, 73, 88, 73, 73, 49, 49, 85, 110, 109, 88, 51, 61, 37, 61, 51, 61, 37, 111, 37, 111, 61, 37,
        111, 37, 37, 111, 49, 37, 37, 49, 51, 49, 111, 37, 51, 111, 51, 37, 111, 51, 49, 61, 61, 37, 49, 37, 37, 37, 37, 61, 61, 86, 61, 61, 49, 49, 61, 49, 51, 88, 61, 61, 111, 49, 51, 49, 49, 111, 51, 49, 111, 61,
        37, 49, 61, 49, 37, 37, 49, 111, 37, 61, 51, 37, 37, 51, 37, 37, 37, 37, 37, 37, 61, 49, 37, 61, 49, 61, 37, 37, 37, 86, 49, 61, 61, 37, 49, 61, 51, 86, 2147483757, 37, 51, 61, 110, 51, 61, 85, 85, 85, 61, 49,
        51, 111, 111, 51, 41, 63, 63, 63, 63, 63, 63, 63, 63, 42, 51, 111, 49, 37, 111, 51, 49, 49, 49, 37, 61, 37, 37, 61, 61, 88, 37, 49, 49, 49, 49, 61, 110, 77, 99, 75, 99, 75, 99, 99, 75, 99, 75, 99, 99, 75,
        51, 41, 63, 63, 64, 72, 43, 43, 66, 72, 43, 72, 43, 62, 63, 63, 42, 37, 111, 51, 111, 61, 49, 61, 37, 61, 61, 61, 37, 88, 61, 49, 61, 61, 49, 37, 51, 88, 61, 37, 49, 51, 111, 111, 51, 85, 49, 51, 37, 111,
        63, 64, 72, 72, 43, 65, 43, 43, 66, 66, 65, 72, 66, 66, 72, 66, 62, 63, 42, 37, 111, 61, 49, 37, 61, 61, 37, 37, 49, 88, 61, 49, 37, 49, 61, 37, 109, 88, 37, 37, 37, 49, 49, 37, 61, 37, 61, 49, 49, 37,
        65, 43, 66, 43, 65, 43, 43, 43, 43, 66, 66, 72, 43, 43, 72, 65, 72, 43, 62, 42, 51, 51, 37, 37, 61, 61, 49, 49, 61, 88, 37, 37, 37, 49, 61, 61, 73, 86, 111, 110, 37, 37, 110, 51, 49, 73, 111, 51, 110, 37,
        72, 43, 43, 43, 43, 43, 43, 43, 43, 43, 65, 43, 43, 72, 65, 66, 72, 72, 66, 62, 42, 37, 51, 61, 49, 49, 37, 37, 37, 86, 49, 37, 61, 37, 37, 49, 37, 77, 75, 75, 75, 99, 99, 75, 75, 99, 99, 99, 75, 75,
        43, 66, 43, 72, 66, 43, 43, 43, 43, 72, 43, 43, 43, 43, 72, 66, 43, 65, 66, 66, 62, 42, 37, 37, 61, 37, 61, 61, 37, 88, 49, 49, 49, 49, 37, 37, 51, 77, 99, 75, 75, 99, 99, 75, 99, 75, 75, 75, 99, 75,
        43, 72, 72, 72, 66, 72, 43, 43, 65, 66, 43, 43, 43, 43, 43, 43, 43, 66, 66, 43, 72, 62, 42, 111, 37, 37, 49, 37, 37, 88, 37, 61, 37, 37, 49, 61, 37, 86, 2147483757, 37, 37, 110, 61, 49, 110, 111, 111, 111, 110, 61,
        43, 43, 43, 66, 66, 43, 43, 43, 65, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 65, 62, 42, 51, 37, 61, 37, 37, 86, 37, 49, 37, 61, 49, 37, 111, 86, 110, 85, 73, 110, 37, 49, 73, 51, 73, 61, 110, 49,
        43, 43, 72, 43, 66, 65, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 43, 65, 43, 62, 42, 111, 111, 49, 37, 86, 37, 61, 37, 49, 61, 61, 109, 77, 99, 99, 99, 75, 75, 99, 99, 99, 99, 99, 75, 75,
        43, 43, 43, 66, 72, 72, 43, 72, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 72, 43, 66, 62, 42, 51, 111, 51, 88, 37, 37, 49, 37, 61, 49, 51, 77, 75, 75, 75, 75, 99, 75, 99, 99, 75, 99, 75, 99,
        43, 43, 43, 43, 43, 43, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 65, 72, 43, 65, 50, 51, 111, 111, 88, 111, 49, 61, 61, 61, 61, 51, 86, 2147483757, 110, 111, 73, 73, 111, 85, 73, 37, 85, 73, 111,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 72, 72, 66, 62, 42, 111, 51, 88, 51, 51, 51, 61, 61, 49, 37, 77, 75, 75, 99, 75, 99, 75, 75, 99, 99, 99, 75, 99,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 72, 43, 65, 43, 50, 51, 51, 88, 51, 51, 111, 51, 51, 49, 109, 88, 61, 111, 73, 37, 85, 85, 61, 73, 49, 37, 110, 61,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 43, 72, 72, 66, 50, 51, 51, 88, 111, 111, 111, 111, 111, 111, 73, 88, 110, 111, 37, 61, 49, 37, 61, 51, 51, 111, 49, 111,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 43, 43, 43, 43, 66, 72, 72, 65, 62, 42, 111, 88, 51, 51, 51, 111, 111, 111, 73, 86, 111, 111, 111, 51, 51, 111, 49, 37, 49, 111, 37, 49,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 43, 43, 43, 43, 72, 72, 65, 72, 72, 50, 51, 88, 111, 111, 111, 51, 51, 51, 110, 86, 2147483757, 111, 51, 111, 111, 49, 51, 61, 61, 51, 49, 51,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 43, 43, 66, 50, 111, 88, 51, 51, 51, 111, 111, 51, 109, 88, 111, 51, 111, 111, 51, 111, 61, 111, 49, 51, 111, 111,
        43, 43, 43, 43, 43, 43, 43, 43, 72, 43, 43, 43, 43, 43, 43, 43, 43, 66, 43, 43, 43, 43, 43, 65, 43, 66, 43, 50, 37, 86, 37, 37, 111, 37, 51, 111, 85, 86, 110, 51, 51, 111, 111, 111, 51, 111, 111, 49, 111, 49,
        43, 43, 43, 43, 43, 43, 72, 72, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 72, 72, 43, 50, 111, 88, 37, 111, 51, 51, 111, 51, 37, 86, 85, 51, 111, 111, 111, 37, 111, 61, 37, 51, 51, 111,
        43, 43, 72, 66, 65, 43, 43, 65, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 65, 43, 65, 72, 50, 37, 86, 37, 37, 37, 51, 111, 51, 111, 86, 2147483757, 51, 111, 111, 51, 51, 61, 49, 111, 111, 37, 111,
        43, 43, 43, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 65, 72, 65, 43, 50, 37, 88, 2147483745, 37, 51, 51, 51, 111, 49, 88, 49, 51, 111, 111, 37, 37, 111, 51, 111, 51, 49, 49,
        43, 43, 43, 43, 43, 43, 43, 43, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 65, 72, 65, 66, 72, 50, 51, 88, 112, 73, 110, 37, 112, 37, 109, 77, 99, 99, 75, 75, 75, 99, 99, 75, 75, 75, 99, 99,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 65, 65, 66, 43, 50, 102, 90, 75, 99, 99, 99, 99, 75, 99, 78, 111, 37, 110, 51, 112, 73, 112, 85, 51, 85, 73, 51,
        43, 43, 43, 43, 43, 43, 43, 43, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 43, 43, 72, 65, 50, 111, 112, 110, 85, 85, 73, 73, 37, 111, 88, 2147483757, 51, 111, 111, 37, 61, 111, 37, 51, 61, 111, 49,
        43, 43, 43, 43, 43, 43, 43, 43, 66, 65, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 72, 43, 66, 43, 43, 38, 54, 102, 75, 75, 99, 75, 99, 75, 75, 99, 78, 85, 37, 37, 51, 37, 111, 110, 51, 111, 112, 51, 73,
        43, 43, 72, 72, 66, 43, 43, 43, 66, 66, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 72, 66, 72, 66, 50, 37, 37, 37, 73, 110, 112, 111, 112, 37, 109, 77, 99, 99, 99, 75, 75, 75, 99, 75, 75, 75, 99, 75,
        72, 66, 66, 66, 66, 43, 43, 72, 72, 72, 43, 43, 43, 43, 65, 43, 43, 43, 43, 43, 65, 66, 72, 65, 43, 43, 50, 111, 37, 111, 111, 51, 51, 111, 111, 51, 73, 86, 49, 37, 110, 85, 111, 73, 49, 51, 111, 110, 85, 111,
        65, 72, 65, 72, 72, 43, 65, 43, 65, 43, 43, 43, 43, 43, 72, 43, 43, 43, 43, 43, 72, 66, 72, 72, 43, 38, 54, 37, 37, 111, 111, 51, 51, 111, 111, 111, 73, 77, 99, 99, 99, 99, 75, 75, 75, 75, 75, 75, 75, 75,
        43, 43, 43, 43, 43, 65, 72, 43, 43, 43, 43, 43, 43, 43, 43, 66, 43, 43, 43, 43, 66, 66, 72, 72, 66, 50, 51, 51, 37, 51, 111, 111, 111, 111, 51, 51, 73, 86, 2147483757, 110, 61, 73, 73, 51, 73, 73, 110, 85, 111, 37,
        43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 66, 65, 65, 66, 43, 43, 43, 66, 72, 66, 72, 38, 54, 51, 37, 111, 111, 37, 37, 111, 111, 51, 111, 73, 77, 99, 99, 75, 99, 75, 99, 75, 75, 99, 99, 75, 99,
        72, 43, 43, 43, 43, 65, 43, 43, 43, 43, 43, 43, 43, 43, 66, 65, 66, 66, 72, 43, 65, 66, 66, 38, 54, 51, 111, 37, 51, 37, 111, 111, 51, 111, 51, 51, 110, 77, 75, 99, 75, 99, 99, 99, 99, 75, 99, 75, 75, 75,
        43, 43, 65, 43, 43, 72, 65, 43, 43, 43, 43, 43, 43, 66, 65, 72, 72, 65, 66, 72, 43, 65, 38, 54, 111, 85, 51, 51, 111, 112, 111, 110, 110, 110, 112, 37, 109, 86, 51, 37, 111, 111, 49, 73, 85, 51, 51, 61, 73, 110,
        43, 43, 43, 43, 43, 43, 66, 43, 43, 43, 43, 43, 43, 43, 43, 65, 43, 43, 43, 66, 43, 38, 54, 102, 99, 99, 75, 99, 99, 99, 99, 99, 75, 75, 75, 75, 99, 78, 111, 111, 51, 111, 51, 51, 51, 111, 51, 111, 111, 51,
        43, 43, 65, 43, 43, 72, 43, 43, 65, 66, 43, 43, 66, 65, 65, 65, 43, 43, 66, 43, 38, 54, 37, 51, 112, 51, 110, 85, 110, 73, 111, 51, 73, 111, 111, 73, 111, 86, 111, 111, 111, 51, 111, 51, 51, 51, 51, 51, 51, 61,
        43, 43, 66, 43, 43, 65, 66, 66, 65, 65, 65, 66, 66, 43, 66, 66, 72, 65, 66, 38, 54, 111, 51, 111, 51, 51, 37, 37, 111, 37, 111, 51, 51, 37, 111, 111, 112, 88, 2147483757, 73, 85, 111, 110, 73, 49, 73, 61, 111, 111, 85,
        65, 66, 72, 72, 43, 66, 66, 72, 72, 66, 72, 72, 43, 65, 66, 43, 65, 66, 38, 54, 37, 51, 51, 37, 37, 37, 111, 51, 51, 37, 111, 37, 37, 51, 37, 51, 85, 77, 99, 75, 75, 99, 99, 75, 75, 99, 99, 99, 99, 75,
        39, 40, 66, 72, 72, 72, 65, 65, 65, 43, 43, 43, 65, 66, 66, 72, 38, 39, 54, 37, 37, 111, 111, 111, 111, 51, 111, 51, 51, 37, 51, 37, 37, 111, 111, 51, 73, 88, 110, 49, 110, 49, 110, 49, 111, 61, 111, 51, 85, 37,
        37, 53, 39, 39, 40, 65, 72, 43, 66, 43, 66, 65, 66, 38, 39, 39, 54, 73, 73, 85, 110, 110, 73, 112, 111, 112, 110, 37, 112, 111, 112, 110, 51, 73, 37, 37, 109, 77, 99, 99, 99, 75, 75, 99, 99, 75, 99, 99, 99, 75,
        111, 37, 111, 37, 53, 39, 39, 39, 39, 39, 39, 39, 39, 54, 102, 99, 75, 75, 75, 75, 75, 99, 75, 75, 75, 99, 99, 99, 99, 99, 99, 75, 99, 75, 99, 99, 99, 78, 73, 111, 85, 110, 61, 73, 61, 61, 110, 61, 73, 85,
        112, 51, 2147483745, 51, 110, 85, 37, 73, 112, 37, 111, 37, 111, 110, 73, 73, 37, 110, 73, 111, 37, 85, 37, 51, 37, 37, 85, 112, 51, 51, 37, 73, 73, 110, 85, 111, 73, 86, 51, 37, 51, 37, 111, 111, 37, 51, 37, 111, 111, 51,
        75, 99, 75, 75, 75, 99, 75, 99, 99, 99, 75, 99, 99, 99, 75, 99, 99, 99, 99, 75, 99, 99, 99, 75, 99, 99, 75, 99, 75, 99, 75, 75, 99, 99, 99, 99, 99, 78, 111, 61, 73, 49, 85, 73, 37, 85, 37, 73, 61, 111,
        110, 37, 37, 112, 73, 51, 37, 111, 111, 111, 73, 73, 111, 37, 51, 73, 112, 51, 111, 85, 73, 85, 73, 111, 85, 51, 51, 73, 37, 85, 111, 112, 51, 51, 110, 51, 109, 77, 75, 75, 75, 75, 99, 99, 99, 75, 99, 75, 75, 75,
        75, 99, 99, 99, 99, 75, 75, 99, 99, 99, 75, 75, 75, 99, 99, 75, 75, 99, 99, 99, 99, 99, 75, 75, 99, 75, 99, 99, 75, 75, 99, 75, 99, 75, 99, 75, 99, 78, 112, 37, 85, 51, 110, 112, 73, 110, 111, 112, 85, 111,
        73, 112, 37, 37, 111, 51, 112, 73, 111, 110, 51, 112, 85, 51, 110, 51, 73, 112, 37, 111, 110, 112, 85, 111, 112, 37, 37, 73, 111, 110, 51, 112, 111, 73, 110, 37, 85, 88, 2147483757, 111, 111, 51, 37, 111, 111, 37, 111, 51, 51, 111,
        111, 37, 37, 111, 37, 111, 51, 51, 111, 51, 111, 111, 51, 111, 111, 111, 51, 111, 51, 37, 111, 37, 51, 111, 111, 37, 51, 51, 111, 51, 111, 111, 111, 111, 111, 111, 111, 88, 85, 111, 51, 73, 37, 112, 111, 112, 112, 110, 111, 51,
        51, 37, 111, 111, 51, 37, 51, 111, 111, 51, 51, 111, 111, 37, 111, 111, 111, 111, 51, 51, 37, 51, 37, 51, 37, 37, 111, 37, 51, 111, 51, 51, 51, 51, 111, 37, 73, 77, 99, 99, 99, 75, 99, 99, 75, 99, 99, 99, 75, 75,
        51, 51, 37, 111, 37, 51, 51, 37, 51, 51, 111, 111, 111, 51, 37, 37, 111, 37, 37, 37, 111, 111, 111, 51, 37, 51, 37, 111, 111, 51, 51, 111, 51, 111, 51, 37, 37, 86, 85, 73, 85, 73, 111, 110, 112, 111, 85, 51, 51, 51,
        111, 37, 51, 51, 51, 37, 51, 37, 51, 111, 51, 111, 51, 37, 37, 37, 37, 37, 51, 37, 51, 51, 37, 51, 37, 37, 51, 51, 111, 51, 111, 111, 111, 51, 111, 111, 109, 77, 75, 75, 99, 75, 75, 75, 75, 75, 75, 99, 75, 75,
        37, 51, 51, 111, 37, 51, 37, 111, 51, 51, 37, 37, 51, 111, 111, 37, 111, 51, 111, 37, 37, 37, 37, 51, 51, 37, 111, 111, 111, 51, 111, 51, 97, 51, 111, 111, 111, 77, 99, 99, 75, 75, 75, 75, 75, 75, 99, 99, 75, 99,
        51, 111, 37, 73, 73, 85, 51, 51, 85, 110, 111, 37, 37, 111, 73, 110, 73, 37, 85, 73, 37, 111, 51, 85, 110, 37, 111, 37, 85, 111, 73, 112, 110, 73, 112, 37, 73, 86, 51, 85, 110, 37, 51, 51, 37, 37, 73, 37, 51, 85,
        75, 75, 99, 99, 99, 99, 99, 75, 75, 75, 75, 99, 99, 75, 99, 99, 99, 99, 99, 75, 99, 99, 75, 99, 75, 75, 99, 99, 99, 75, 75, 99, 99, 99, 75, 99, 75, 78, 2147483757, 51, 51, 51, 111, 111, 51, 111, 51, 37, 111, 111,
        73, 51, 112, 85, 111, 73, 112, 73, 73, 110, 111, 110, 85, 111, 37, 112, 37, 37, 112, 110, 112, 85, 111, 51, 51, 112, 85, 110, 110, 73, 37, 110, 51, 37, 73, 112, 111, 88, 112, 110, 85, 112, 73, 37, 37, 51, 110, 112, 51, 110,
        37, 110, 51, 85, 110, 51, 112, 51, 51, 112, 85, 111, 73, 111, 110, 51, 85, 85, 85, 85, 85, 51, 73, 110, 110, 51, 111, 51, 37, 110, 111, 112, 85, 51, 112, 110, 109, 77, 75, 99, 99, 99, 99, 99, 99, 75, 75, 99, 99, 75,
        99, 75, 75, 99, 99, 75, 75, 99, 99, 99, 75, 99, 75, 75, 75, 75, 99, 75, 99, 99, 75, 75, 75, 75, 75, 75, 99, 75, 99, 75, 75, 99, 99, 75, 75, 75, 99, 78, 110, 112, 110, 112, 73, 73, 111, 37, 112, 73, 73, 110,
        75, 75, 75, 75, 99, 75, 99, 99, 99, 75, 99, 99, 99, 75, 75, 75, 99, 75, 99, 99, 75, 75, 99, 99, 99, 99, 99, 99, 75, 99, 99, 75, 99, 75, 99, 75, 75, 78, 85, 112, 112, 51, 112, 110, 37, 110, 37, 51, 73, 73,
        112, 110, 112, 111, 73, 73, 110, 37, 85, 73, 112, 37, 111, 112, 73, 73, 111, 37, 73, 111, 51, 110, 112, 51, 73, 85, 85, 85, 51, 51, 112, 112, 85, 111, 85, 51, 111, 77, 99, 99, 75, 99, 99, 99, 99, 99, 99, 99, 99, 99,
        99, 99, 75, 75, 75, 99, 75, 75, 75, 75, 99, 75, 99, 75, 75, 75, 75, 99, 75, 75, 99, 75, 99, 99, 75, 75, 75, 99, 99, 99, 75, 75, 99, 99, 99, 99, 99, 78, 73, 37, 85, 111, 112, 85, 37, 112, 37, 112, 112, 37,
        51, 111, 110, 37, 51, 111, 73, 51, 111, 112, 112, 85, 51, 51, 51, 85, 37, 112, 37, 37, 112, 112, 85, 37, 51, 110, 112, 111, 73, 111, 51, 73, 110, 110, 51, 37, 111, 77, 75, 75, 99, 99, 99, 99, 75, 99, 75, 99, 75, 99,
        51, 37, 111, 51, 111, 51, 111, 51, 111, 51, 111, 51, 111, 51, 111, 37, 51, 51, 51, 111, 37, 51, 51, 37, 111, 37, 37, 51, 51, 37, 51, 51, 111, 51, 37, 51, 109, 86, 85, 37, 73, 37, 73, 37, 112, 51, 110, 51, 73, 111,
        111, 111, 111, 111, 111, 111, 51, 111, 111, 111, 111, 51, 111, 51, 51, 51, 111, 51, 51, 37, 37, 51, 111, 51, 37, 111, 111, 51, 37, 37, 111, 37, 37, 51, 111, 51, 111, 77, 99, 99, 99, 75, 99, 99, 99, 75, 75, 75, 75, 99,
        37, 111, 37, 111, 37, 111, 111, 111, 37, 51, 51, 37, 37, 37, 51, 51, 37, 111, 37, 37, 51, 111, 111, 51, 37, 51, 51, 37, 111, 37, 51, 51, 111, 37, 111, 111, 37, 86, 111, 51, 37, 51, 111, 111, 111, 37, 111, 51, 111, 51,
        51, 73, 51, 85, 51, 73, 110, 85, 51, 37, 112, 110, 110, 73, 51, 73, 110, 37, 110, 51, 73, 51, 110, 37, 51, 85, 110, 85, 85, 112, 112, 37, 110, 110, 110, 85, 111, 86, 2147483757, 51, 37, 37, 111, 37, 111, 51, 37, 111, 51, 111,
        75, 99, 99, 75, 99, 75, 75, 99, 75, 99, 99, 99, 75, 75, 75, 99, 75, 75, 99, 99, 75, 99, 75, 75, 75, 75, 99, 99, 99, 75, 75, 99, 75, 75, 75, 99, 99, 78, 111, 111, 37, 51, 37, 37, 37, 51, 51, 111, 51, 111,
        85, 73, 110, 112, 85, 110, 110, 111, 37, 51, 110, 37, 37, 37, 37, 110, 51, 37, 51, 111, 37, 110, 37, 73, 111, 111, 111, 51, 73, 111, 51, 73, 73, 85, 51, 37, 73, 86, 51, 111, 37, 111, 51, 51, 111, 111, 111, 111, 51, 111,
        37, 37, 51, 111, 111, 111, 51, 37, 37, 51, 51, 51, 111, 111, 37, 51, 111, 111, 111, 37, 37, 111, 111, 37, 37, 111, 37, 51, 51, 111, 51, 111, 111, 111, 37, 37, 109, 88, 111, 37, 51, 51, 111, 51, 51, 51, 111, 37, 51, 37,
        111, 111, 37, 37, 37, 51, 37, 51, 37, 37, 37, 37, 37, 51, 51, 51, 51, 51, 37, 37, 51, 51, 111, 111, 111, 111, 37, 111, 37, 37, 37, 111, 51, 37, 51, 37, 51, 77, 99, 99, 75, 99, 75, 99, 75, 99, 75, 75, 99, 99
      }
    }
  }
}