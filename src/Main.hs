import Network.HTTP.Conduit
import Control.Exception (try)
import qualified Data.ByteString.Lazy as L

main :: IO ()
main = do
  response <- try $ simpleHttp "https://github.com" :: IO (Either HttpException L.ByteString)
  case response of
    Left err -> putStrLn "\n \129412 It's down. Go outside!"
    Right res -> putStrLn "\n 🐈 It's up. Go back to work!"
