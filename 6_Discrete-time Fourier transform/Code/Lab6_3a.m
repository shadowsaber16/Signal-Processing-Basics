w = -10:0.01:10 ;

n = -100:100 ;

x_n = ( n == 0 )*1 ;
x_n_2 = ( n == 2 )*1 ;
x_n_1 = ( n == 1 )*1 ;
x_n__1 = ( n == -1 )*1 ;

h_n1 = x_n - x_n_2 ;

H_w1 = DTFT(h_n1,101,w) ;

figure ;
sgtitle(" y[n] =  x[n] - x[n-2] ") ;
subplot(2,1,1) ;
plot(w,abs(H_w1)) ;
ylabel("|H(w)|") ; xlabel("w") ;
subplot(2,1,2) ;
plot(w,angle(H_w1)) ;
ylabel(" phase(H(w))") ; xlabel("w") ;

