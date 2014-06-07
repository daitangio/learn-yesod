module Handler.SimpleLog where

import Import

-- GG simple logger

getSimpleLogR :: Text -> Handler Html
getSimpleLogR theLogLine = defaultLayout $(widgetFile "log")
