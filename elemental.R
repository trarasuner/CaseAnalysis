library(readxl)
elemental <- read_excel("R/elemental.xlsx")
View(elemental)
papel = elemental$price
sans = elemental$chance
counter = 0;
iterations = 1000000
yildiz = 200
percentage = 0
for (h in 1:iterations){
  total =0
  inc=0
  for  (i in 1:yildiz) {
    r = runif(1)
    inc = 0.053418803

    
    k=1;
    
    index=2
    
    check = TRUE
    
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
  if (total > 80){
    counter = counter + 1;
  }
  percentage = percentage + (total/80)
}
total / yildiz
counter/iterations
percentage

