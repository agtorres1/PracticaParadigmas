module Library where
import PdePreludat



data Hechicero = Hechicero { 
    antiguedad :: Number,
    clan :: String,
    grado :: Number
}deriving Show

nobara = Hechicero 1 "Kuguisaki" 3
satoru = Hechicero 1 "Gojo" 0 
maki = Hechicero 3 "Zenin" 4
yuki = Hechicero 0 "itadori" 1


{-
nobara = Hechicero {
        antiguedad = 1 ,
        clan =  "Kuguisaki",
        grado = 3
        }

satoru =  Hechicero {
        antiguedad = 1,
        clan =  "Gojo",
        grado = 0
        }

maki =  Hechicero {
        antiguedad = 3,
        clan =  "Zenin",
        grado = 4
        }

yuki =  Hechicero {
        antiguedad = 0,
        clan =  "Itadori",
        grado = 1
        }
-}

esEspecial hechicero = grado hechicero == 0

subirGrado :: Hechicero -> Hechicero
subirGrado unHechicero 
    | esEspecial unHechicero = unHechicero
    | otherwise = unHechicero {grado = grado unHechicero - 1} 



experiencia hechicero | antiguedad hechicero > 1  = True
    | otherwise = False


grupoPreparado listaGrupo = length listaGrupo > 3

clanesPrestigiosos = ["zenin","gojo","komo"]

esPrestigiosos hechicero = elem (hechicero) clanesPrestigiosos


calcular (x,y) | even x && odd y = (x*2,y+1)
        | even x = (x*2,y)
        | odd y = (x,y+1)
        | otherwise = (x,y)



saludar1 nombre = "Hola " ++ nombre

saludar2 prefijo nombre =  "Hola " ++ prefijo ++ " " ++ nombre

sinTitulo nombre = nombre
sr nombre = "Sr. " ++ nombre
sra nombre = "Sra. " ++ nombre
reyQuick nombre = nombre ++ " Rey de los Minisupers"

saludar3 titulador nombre = "Hola " ++ titulador nombre

funcionMisteriosa3 h g x = h (g x) True 

funcionMisteriosa2 g = g . length 

esNoVacio = (/=0).length

multiplo nro = (==0) . rem nro

 textos ((nombre,texto),(nombre,texto))= 