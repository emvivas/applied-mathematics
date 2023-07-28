#Gauss-Newton method.
#Emiliano Vivas Rodríguez (a01424732@tec.mx).

gaussNewton = data.frame(index = integer(), x_0 = numeric(), f_x = numeric(), Df_x = numeric(), x_i = numeric());
f = parse(text = readline(prompt="f(x) = "));
x_0 = as.numeric(readline(prompt="x_0: "));
h = as.numeric(readline(prompt="h: "));
tolerance = as.numeric(readline(prompt="Mínima diferencia: "));
index = 1;
repeat{
  f_x = eval(f, envir=list(x=x_0));
  Df_x = (eval(f, envir=list(x=x_0 + h)) - f_x)/h;
  x_i = x_0 - f_x/Df_x;
  gaussNewton[nrow(gaussNewton) + 1,] = list(index, x_0, f_x, Df_x, x_i);
  if(x_0-x_i>tolerance || index == 1){
    index = index + 1;
    x_0 = x_i;
  } else break;
}
View(gaussNewton);
print(paste("Raíz resultante: ", gaussNewton$x_i[index]));
