{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import Network.Wai.Middleware.Static
import Data.Aeson (object, (.=))
import qualified Capitulo1 as Cap1

main :: IO ()
main = scotty 3000 $ do
    -- Middleware para servir archivos de la carpeta 'static'
    middleware $ staticPolicy (addBase "static")

    -- Ruta principal: Entrega el HTML
    get "/" $ file "static/index.html"

    -- API para ejecutar ejercicios
    -- Recibe: capítulo, número de ejercicio y el valor de entrada
    post "/ejecutar/:cap/:ej" $ do
        cap <- param "cap"
        ej  <- param "ej"
        val <- param "valor"
        
        let resultado = case (cap, ej) of
                ("1", "1") -> show $ Cap1.factorial (read val)
                -- Cuando tengas el Cap 2, agregarías:
                -- ("2", "1") -> show $ Cap2.otroEjercicio (read val)
                _          -> "Pendiente de implementar"
        
        json $ object ["res" .= resultado]