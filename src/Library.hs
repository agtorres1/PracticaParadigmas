module Library where
import PdePreludat



data Hechicero = Hechicero { 
    antiguedad :: Number,
    clan :: String,
    grado :: Number
}

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


experiencia hechicero | antiguedad hechicero > 1  = True
    | otherwise = False


grupoPreparado listaGrupo = length listaGrupo > 3

