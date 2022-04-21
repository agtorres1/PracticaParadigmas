module Library where
import PdePreludat



--nobara = (1,"Kuguisaki",3)
--satoru = (15,"gojo",0)
--maki = (3,"zenin",4)
--yuji = (0,"Itadori",1)

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

