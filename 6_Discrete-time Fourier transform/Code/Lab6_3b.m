w = -10:0.01:10 ;

n = -100:100 ;

x_n = ( n == 0 )*1 ;
x_n_2 = ( n == 2 )*1 ;
x_n_1 = ( n == 1 )*1 ;
x_n__1 = ( n == -1 )*1 ;

h_n2 = ( x_n__1 + x_n + x_n_1 ) / 3 ;

H_w2 = DTFT(h_n2,101,w) ;

figure ;
sgtitle(" y[n] =  ( x[n+1] + x[n] + x[n-1] ) / 3 ") ;
subplot(2,1,1) ;
plot(w,abs(H_w2)) ;
ylabel("|H(w)|") ; xlabel("w") ;
subplot(2,1,2) ;
plot(w,angle(H_w2)) ;
ylabel(" phase(H(w))") ; xlabel("w") ;

h_n3 = ( 2*x_n - x_n__1 - x_n_1 ) / 4 ;

H_w3 = DTFT(h_n3,101,w) ;

figure ;
sgtitle(" y[n] =  ( 2*x[n] - x[n+1] - x[n-1] ) / 4 ") ;
subplot(2,1,1) ;
plot(w,abs(H_w1)) ;
ylabel("|H(w)|") ; xlabel("w") ;
subplot(2,1,2) ;
plot(w,angle(H_w1)) ;
ylabel(" phase(H(w))") ; xlabel("w") ;