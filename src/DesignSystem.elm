module DesignSystem exposing (..)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Css exposing (..)

-- adding icons
-- option 1: img + src
  -- file must be in /public
  -- file must not use "file://" protocol
  -- example: /public/icon-example.svg --> img [src "/icon-example.svg"] []
  -- PROBLEM: you can not change the color of the icon. So for hover effects it does not work
-- option 2: using icon font
  -- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

bootstrapIcons = Html.Styled.node "link" [rel "stylesheet", href "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"] []


-- header start -- 
header =
    div [styleHeader] [
      div [styleLogoNav] [text "Go",
            a [styleLogoNavName] [text "Outreach"]
            ]
      , linkstop
      ,linstopright
      ,div [iconshHeader][
       img [src "/"][]
      ,img [src "/"][]
      ]
    ]
-- header end --

-- left sidebar start --
sidebar =
    div [component] [
        links
      , hr [stylehr] []
      , createNewWorkspaceButton
      , bootstrapIcons
      , div [css [hover [color (rgb 69 88 255 )]]] [i  [class "bi-person-circle"] []]
      
      -- <i class="bi-alarm"></i>
    ]
-- left sidebar end --

-- links header --
linkstop =
    div [styleNavTop][
      a [][text "Campaigns"]
    , a [][text "Prospects"]
    ]
    
linstopright=
    div [styleLinksTopRight][
    a [][text "14 days left in trial"]
    ]
-- links header end --


-- links sidebar --
links =
  div [linksclock][
     div [linksPhotoStyle][a [styleNavLinkSettings] [text "Settings"]]
    ,div [linksPhotoStyle][img [src"file:///Users/andriim./Desktop/person-circle.png"][],a [styleNavLink] [text "Account"]]
    ,div [linksPhotoStyle][img [src"../../Desktop/svg-icons.css/Union-1.Svg"][], a [styleNavLink] [text "Workspace"]]
    ,div [linksPhotoStyle][img [src"/"][], a [styleNavLink] [text "Email slot configuartion"]]
    ,div [linksPhotoStyle][img [src"/person-circle.png"][], a [styleNavLink] [text "Integrations"]]
  ]
-- links sidebar end --

-- style header --
styleLogo =css []
styledButton =
    button [
        css [Css.color (Css.rgb 255 0 0)]] 
        [text "My first styled button"]
    |> toUnstyled

styleHeader = css [displayFlex
  , justifyContent spaceBetween
  ,alignItems center
  , maxWidth (px 1920)
  ,minHeight (px 48)
  ,maxHeight (px 48)
  ,fontWeight (int 500)
  ,fontSize (px 14)
  , borderBottom3 (Css.px 1) (Css.solid) (Css.rgb 0 0 0)
  ]
styleNavTop = css [margin2 (px 0)(px 28)]
styleLogoNav = css [margin4 (px 0)(px 0)(px 0)(px 24), fontWeight (int 600)]
styleLogoNavName = css [color (rgb 77 88 248)]
styleLinksTopRight = css []
iconshHeader = css [margin4 (px 0)(px 24)(px 0)(px 0)]
-- style header end --

-- style sidebar --
linksPhotoStyle = css [displayFlex, textAlign center]
linksclock = css []
styleNavLink = css [margin4 (px 8)(px 0)(px 0)(px 10),padding2 (px 8) (px 0),fontSize (px 14), display block, color (rgb 125 125 136),fontWeight (int 500),lineHeight (px 20)]
styleNavLinkSettings = css [padding4 (px 16) (px 0) (px 13) (px 0),fontSize (px 12),color (rgb 125 125 136),fontWeight (int 600),lineHeight (px 16)]
styleButton = css [margin2 (px 16)(px 0),padding (px 10),outlineColor (rgb 125 125 136),borderWidth (px 1), borderRadius (px 5),borderStyle solid, backgroundColor (rgb 255 255 255), borderColor (rgb 79 79 80),fontWeight (int 600)]
component = css [textAlign left, margin2 (px 0)(px 24),maxWidth (px 249)]
stylehr = css [color (rgb 125 125 136)]
stylehrtop = css [color (rgb 125 125 136)]
-- style sidebar end --

-- style button --
createNewWorkspaceButton =
    button [styleButton] [text "Create new workspace"]
-- style button end --