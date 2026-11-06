
return {
  meme = function(args)

    local src = pandoc.utils.stringify(args[1])
    local url = pandoc.utils.stringify(args[2])
    local largeur = pandoc.utils.stringify(args[3])

    local image = pandoc.Image(
      {pandoc.Str("Mème")}, src
    )

    local attributs = pandoc.Attr(
      "",
      {"meme"},
      {
        {"style", "max-width:" .. largeur .. ";"},
        {"target", "_blank"},
        {"rel", "noopener noreferrer"}
      }
    )

    local lien = pandoc.Link(
      {image}, url, "", attributs
    )

    return pandoc.Para({lien})

  end
}
