-- Prática 04 de Haskell
-- Nome: Ivan Maidana da Silveira

--1
qualFaixa :: Int -> String
qualFaixa idade = if idade >= 60 && idade <= 64 then "IDO64" else 
                  if idade >= 65 && idade <= 69 then "IDO69" else
                  if idade >= 70 && idade <= 74 then "IDO74" else
                  if idade >= 75 && idade <= 79 then "IDO79" else
                  if idade >= 80 then "IDO80"else "ND"


faixaIdoso :: Int -> String
faixaIdoso idade = qualFaixa idade

--2
classifIdosos :: [(String,Int)] -> [(String,Int,String)]
classifIdosos lis =[(x,y,qualFaixa y) | (x,y) <- lis]

--3
classifIdosos':: [(String,Int)] -> [(String,Int,String)]
classifIdosos' list = map(\(x,y) -> ( x, y, qualFaixa y)) list

--4
strColor :: (Int,Int,Int) -> String
strColor (r,g,b) = "rgb(" ++ show r ++ "," ++ show g ++ "," ++ show b ++ ")"

--5
genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]
genCircs n (cx,cy) r = [(x,cy,r)| x <- take n [cx, cx+5..] ]

--6
genReds :: Int -> [(Int,Int,Int)]
genReds n = [(x,0,0)|x <- take n [5,10..255]]
