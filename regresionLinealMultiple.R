expert <- c(4,7,1,5,8,10,0,1,6,6,
           9,2,10,5,6,8,4,6,3,3)

test <- c(78,100,86,82,86,84,75,80,
          83,91,88,73,75,81,74,87,79,94,70,89)

salario <- c(24,43,23.7,34.3,35.8,38,22.2,23.1,
             30,33,38,26.6,36.2,31.6,29,34,30.1,33.9,28.2,30)
modelo = lm(salario~expert+test)
plot(modelo)
cor(salario, expert)
cor(salario, test)
summary(modelo)

# salario = 3.17 +1.40expert + 0.25test
#          (6.16) (0.20)       (0.08)


#salario = +1.40expert + 0.25test

#Multiple 0.8342
#Adjusted R-Squared
anova(modelo)



#MODELOS NO LINEALES
#función nls