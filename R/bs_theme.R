
navbar_col <- "#373a3c"

foreground_col <- "#101010"
background_col <- "#f8f9fa"

primary_col   <- "#E86A33"
secondary_col <- "#0072B2"

success_col   <- "#009E73" 

base_font <- font_google("Inter")
code_font <- font_google("JetBrains Mono")

navbar_brand <- HTML(
                  paste0(
                    span("data", style = paste0("color: ", primary_col, ";") ),
                    "for",
                    span("you", style = paste0("color: ", primary_col, ";") ),
                    "."
                  )
)

              
theme <- bs_theme(
                  version = version_default(),
                  bg = background_col,
                  fg = foreground_col,
                  primary = primary_col,
                  secondary = secondary_col,
                  success = success_col,
                  base_font = base_font,
                  code_font = code_font
                 ) |> 
                 bs_add_rules( 
                   list(
                        "h1, h2, h3, h4, h5 { color: $primary; }"
                        )
                 )