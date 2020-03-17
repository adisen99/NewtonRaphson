a=input('Enter the function in the form of variable x:','s');	% This is the user's input function

x(1)=input('Enter initial approximation:');						% Enter the initial approximation 

error=input('Enter allowed error:');							% Enter the precision of the required solution (example 0.1, 0.01, 0.001, etc.)

f=inline(a);

dif=dif(sym('a'));

d=inline(dif);

for i=1:100
    x(i+1)=x(i)-(f(x(i))/d(x(i)));
    err(i)=abs(x(i+1)-x(i))/x(i);
    if err(i)<error
        break
    else
        continue
       
    end
end

%Now find the final solution

root=x(i)				