library(readxl)
overpass <- read_excel("R/overpass2024.xlsx")
View(overpass)
papel = overpass$price
"sans = overpass$chance"

sans = c(1/7.5 ,1/7.5,1/7.5,1/7.5,1/7.5,1/7.5, 1/24.99,1/24.99,1/24.99,1/24.99,1/93.72,1/93.72,1/93.72, 1/312.4, 1/312.4 , 1/781)

counter = 0;
iterations = 100000;
yildiz = 100;
percentage = 0;
for (h in 1:iterations){
  total=0
  for  (i in 1:yildiz) {
    inc=0
    r = runif(1)
    k=1
    index=2
    check = TRUE;
    inc=1/7.5 + y0.000243
    while(check){
      if(inc < r){
        inc = inc + sans[index]
        index = index + 1
        k = k+1
      }else {
        check = FALSE
      }
    }
    
    total = total + papel[k]
  }
  
  if (total > 160){
    counter = counter + 1;
  }
  percentage = percentage + (total/160)
}
total / yildiz
counter/iterations
percentage/iterations

