module DesignSystem exposing (..)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Css exposing (..)
import Css.Transitions exposing (zIndex2)

  -- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

bootstrapIcons = Html.Styled.node "link" [rel "stylesheet", href "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"] []

-- User profile start --
header = 
 div [styleHeader][
   div[headerWrapper][
      div [linksHeader][
              a [][text "Campaigns"]
            , a [][text "Prospects"]
          ]
      ,div[rightsideWrapper][
        div [leftsideHeader][
          ]
          ,div [rightsideHeader][
             createNewButtonTop
      
          ,div [headerIcons][
              i [class "bi-bell"][]
            , i [class "bi-question-circle"][]
          ]
          ,div [headerWorkspace][
            div[workspacWrapper][img [src "/avatar.svg"][]
            ,div[accountWrapper][
              div [account][text "Workspace 1"]
            , div[name][text "User Name"]]]
        ]
        ]  
      ]
    ]
  ]



headerSecond = 
 div [styleHeaderSecond][
   div[headerSecondWrapper][
      div [linksHeaderSecond][
          div[secondLink][ 
             i [class "bi-person-square"][bootstrapIcons]
             , a [links][text "User profile"]
           ]
          ,div[secondLink][ 
             i [class "bi-key"][]
             , a [links][text "Change password"]
           ]
          ,div[secondLink][ 
             i [class "bi-envelope-paper"][]
             , a [links][text "Invites"]
           ]
          ,div[secondLink][ 
             i [class "bi-trash3"][]
             , a [links][text "Delete accound"]
           ]
      ]
    ]
  ]

button_ label =
    button [buttonStyle] [text label]

card title content =
         div[profileBlock][
          div[profileItem][
            div[profileText][
              text title
            ]
            ,content
          ]
        ]
        
paragraph content = div[infoDescription][
              text content
            ]
section =
  div[styleProfile][
    div[profileWrapper][
        --Acount verification status start--
          div[profileTitle][
        text "User info"
        ]
        ,div[profileBlock][
          div[profileItem][
            div[profileText][
              text"Account verification status"
            ]
            ,div [infoInput][
              input [type_"email" ,placeholder "Email",class "inputStyle"][]
            ]
          ]
        ]
        --Acount verification status end--
        -- Change e-mail address--
        ,div[profileBlock][
          div[profileItem][
            div[profileText][
              text"Change e-mail address"
            ]
            ,div[infoDescription][
              text"We will send you a confirmation link to the new address."
            ]
            ,div[infosecondText][
              text"New workspace name"
            ]
            ,div [infoInput][
              input [type_"email" ,placeholder "wiktoria.michalina.harabasz@gmail.com",class "inputStyle"][]
            ]
            ,createNewButton
          ]
        ]
        --Change e-mail address end--

        --Personal information start--
        ,div[profileBlock][
          div[profileItem][
            div[profileText][
               text"Personal information"
            ]
               ,div[inputGroup][
                 div [infoInputPersonInformation][
                   label [styleLabel][text "First name"]
                   ,div[infoInput][
                   input [type_ "name", placeholder "Joe", inputStyle][]]
                 ]
                 ,div [infoInputPersonInformation][
                   label [styleLabel][text "Last name"]
                   ,div[infoInput][
                   input [type_ "text", placeholder "Doe", inputStyle][]]
                 ]
               ]
              , createNewButton
          ]
        ]
        --Personal information end--
    ]
  ]
--user profile end --

-- Sidebar Start --
sidebar =
  div[styleSidebar][
    div[][
      div[logo][img [src "/logo.svg"][]
             , a [links][text "Outreach"]]
     ,div [settings][
        text "Settings"
      ]
     ,div [linksSidebar][
          div[sidebarLink][ 
              div [iconsSidebar][i [class "bi-person-circle"][]]
             , a [linksSidebar][text "User profile"]
           ]
          ,div[sidebarLink][ 
             div [iconsSidebar][i [class "bi-person-workspace"][]]
             , a [linksSidebar][text "Change password"]
           ]
          ,div[sidebarLink][ 
             div [iconsSidebar][i [class "bi-envelope-plus"][]]
             , a [linksSidebar][text "Invites"]
           ]
          ,div[sidebarLink][ 
             div [iconsSidebar][i [class "bi-grid-1x2"][]]
             , a [linksSidebar][text "Delete accound"]
           ]
      ]
      ,hr [line][]  
      , createNewButtonSidebar
    ]
  ]
-- Sidebar End --

-- Sidebar style start --
styleSidebar = css [
 margin4 (px 0)(px 0)(px 0)(px 24)
 ,Css.height (pct 100)
 ,maxWidth (px 225)
 ,minWidth (px 225)
 ,borderRight3 (px 1) Css.solid (rgb 207 209 211)
 ]

settings = css [
   fontSize (px 12)
 , fontWeight (int 600)
 , margin4 (px 16)(px 0)(px 21)(px 0)
 , color (rgb 112 115 142)
 ]

linksSidebar = css [
   margin4 (px 0) (px 24) (px 0) (px 0)
 ]

iconsSidebar = css [
  marginRight (px 10)
 ]

logo = css [
   displayFlex
   ,alignItems center
   ,minHeight (px 48)
   ,maxHeight (px 48)
   ,borderBottom3 (px 1) Css.solid (rgb 207 209 211)
 ]

line = css [
    margin4 (px 6)(px 24)(px 19)(px 0)
  , backgroundColor (rgb 207 209 211)
  , Css.height (px 1)
  , border (px 0)
 ]

lineTop = css [
    margin4 (px 0)(px 0)(px 16)(px 0)
  , backgroundColor (rgb 207 209 211)
  , Css.height (px 1)
  , border (px 0)
  , Css.height (vh 100)
 ]

sidebarLink = css [
    displayFlex
  , alignItems center
  , fontSize (px 14)
  , fontWeight (int 500)
  , color (rgb 107 109 129)
  , marginBottom (px 24)
 ]
-- Sidebar style end --


-- Style Header Start --
styleHeader = css [
 ]

headerWrapper = css [
    displayFlex
  , padding4 (px 0)(px 24)(px 0)(px 24)
  , justifyContent spaceBetween
  , alignItems center
  , minHeight (px 48)
  , maxHeight (px 48)
  , borderBottom3 (px 1) Css.solid (rgb 207 209 211)
 ] 

leftsideWrapper = css [
   marginRight (px 125)
 ]

leftsideHeader = css [
 ]

rightsideHeader = css [
    displayFlex
  , alignItems center
 ]

rightsideWrapper = css [
    displayFlex
  , alignItems center
  ]

headerIcons = css [
    displayFlex
  , minWidth (px 64)
  , justifyContent spaceBetween
  , marginRight (px 24)
 ]

linksHeader = css [
    displayFlex
  , justifyContent spaceBetween
  , alignItems center
  , minWidth (px 161)
  , fontSize (px 14)
  , fontWeight (int 500)
  , color (rgb 107 109 129)
 ]

headerWorkspace = css[
   flexDirection column
 ]

workspacWrapper = css [
    displayFlex
  , alignItems center
 ]
accountWrapper = css [
 marginLeft (px 12)
 ]

account = css [
    fontSize (px 14)
  , fontWeight (int 600)
  , color (rgb 44 47 75)
 ]

name = css [
    fontSize (px 12)
  , fontWeight (int 400)
  , color (rgb 149 151 165)
 ]

-- Heder Second Start --
styleHeaderSecond = css [
 ]


headerSecondWrapper = css [
   displayFlex
  , padding4 (px 0)(px 24)(px 0)(px 24)
  , alignItems center
  , minHeight (px 48)
  , maxHeight (px 48)
  , borderBottom3 (px 1) Css.solid (rgb 207 209 211)
 ] 

linksHeaderSecond = css [
   displayFlex
  ,alignItems center
 ]

secondLink = css [
    displayFlex
  , alignItems center
  , fontSize (px 14)
  , fontWeight (int 500)
  , color (rgb 107 109 129)
 ]

links = css [
  margin4 (px 0) (px 20) (px 0) (px 10)
 ]
-- Header Second End --

--Buttons Style Start--
createNewButtonTop =
    button [buttonStyleHeder][text "14 days left in trial"]

createNewButton = 
    button[buttonStyle][text "Confirm"]

createNewButtonSidebar =
    button[buttonStyleSidebar][
      div[][
         i [class "bi-plus-circle"][]]
      ,div [textButton][
        text "Create new workspace"]
    ]
textButton = css [
  marginRight (px 13)
 ]
buttonStyle = css [
    color (rgb 69 88 255)
  , justifyContent spaceBetween
  , maxWidth (px 100)
  , maxHeight (px 36)
  , minHeight (px 36)
  , backgroundColor (rgb 236 238 255)
  , borderRadius (px 5)
  , border (px 0)
  , margin4 (px 15)(px 0)(px 0)(px 0)
  , fontWeight (int 600)
  , fontSize (px 14)
  ]

buttonStyleHeder = css [
    color (rgb 44 47 75)
  , fontWeight (int 600)
  , maxWidth (px 140)
  , minWidth (px 140)
  , maxHeight (px 32)
  , minHeight (px 32)
  , backgroundColor (rgb 244 245 246)
  , borderRadius (px 5)
  , border (px 0)
  , margin4 (px 0)(px 24)(px 0)(px 0)
  ,fontSize (px 14)
  ]

buttonStyleSidebar = css [
    color (rgb 44 47 75)
  , fontWeight (int 600)
  , maxWidth (px 201)
  , minWidth (px 201)
  , maxHeight (px 36)
  , minHeight (px 36)
  , backgroundColor (rgb 255 255 255)
  , borderRadius (px 5)
  , border3 (px 1) Css.solid (rgb 207 209 211)
  ,fontSize (px 14)
  ,alignItems center
  ,displayFlex
  ,justifyContent spaceBetween
 ]
-- Buttons Style End --



-- Style Account Start --
styleProfile = css [
    maxWidth (px 608)
  ]

profileWrapper = css [
    margin (px 24)
  ]

profileTitle = css [
    fontSize (px 16)
  , fontWeight (int 600)
  , displayFlex
  ]

profileBlock = css [
  ]

profileItem = css [
    border3 (Css.px 1) (Css.solid) (Css.rgb 0 0 0)
  , borderRadius (px 6)
  , displayFlex
  , flexDirection column
  , minWidth (px 573)
  , alignItems left
  , margin4 (px 24)(px 0)(px 24)(px 0)
  , padding (px 16)
  , borderColor (rgb 207 209 211)
  ]

profileText= css [
    displayFlex
  , color (rgb 44 47 75)
  , fontWeight (int 600)
  ]

infoDescription = css [
    displayFlex
  , fontSize (px 14)
  , fontWeight (int 400)
  , padding4 (px 10)(px 0)(px 24)(px 0)
  , color (rgb 114 119 124)
  ]
infosecondText = css [
    displayFlex
  , fontSize (px 14)
  , color (rgb 44 47 75)
  ]

-- Input Style Start --  
inputStyle = css [ 
    minWidth (px 268)
  , maxWidth (px 268)
  , paddingLeft  (px 12)
  , borderRadius (px 5)
  , borderStyle solid
  , border3 (Css.px 1) solid (rgb 207 209 211)
  ]

inputGroup = css [
    displayFlex
  , justifyContent spaceBetween
  ]

infoInputlastChild = css [
    margin (px 0)
  ]

infoInputPersonInformation = css [
    margin4 (px 24)(px 0)(px 0)(px 0)
  ]

infoInput = css [
    padding4 (px 15)(px 0)(px 0)(px 0)
  , displayFlex
  , minWidth (px 275)
  , maxHeight (px 275)
  , minHeight (px 44)
  , borderRadius (px 5)
  , outline none
  ]

inputPersonalInformation = css [
    displayFlex
  , padding (px 0)
  , margin4 (px 24)(px 0)(px 0)(px 0)
  , justifyContent spaceBetween
  ] 

styleLabel = css [
    fontSize (px 14)
  , fontWeight (int 600) 
  , color (rgb 44 47 75)
  ]
-- input style end --
-- Style Account end--