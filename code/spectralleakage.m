Fx=10; 
Fs=100; 
observationTime = 1; 
t=0:1/Fs:observationTime-1/Fs;
x=sin(2*pi*Fx*t);

N=100; dft length
X1 = 1/N*fftshift(fft(x,N));
f1=(-N/2:1:N/2-1)*Fs/N; 

N=128; %DFT length
X2 = 1/N*fftshift(fft(x,N));
f2=(-N/2:1:N/2-1)*Fs/N; 
figure;
subplot(3,1,1);stem(x,'r')
title('Time domain');xlabel('index (n)');ylabel('x[n]');
subplot(3,1,2);stem(f1,abs(X1));
xlim([-16,16]);title(['FFT, N=100, \Delta f=',num2str(Fs/100)]);xlabel('f (Hz)'); ylabel('|X(k)|');
subplot(3,1,3);stem(f2,abs(X2)); 
xlim([-16,16]);title(['FFT, N=128, \Delta f=',num2str(Fs/128)]);xlabel('f (Hz)'); ylabel('|X(k)|');