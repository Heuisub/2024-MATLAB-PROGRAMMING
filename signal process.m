% 필터 사양
fs = 1000; % 샘플링 주파수 (Hz)
fc_lp = 40; % 저역통과 필터의 차단 주파수 (Hz)
f0_br = 20; % Band-Reject 필터의 중심 주파수 (Hz)
BW_br = 5; % Band-Reject 필터의 대역폭 (Hz)
fc_hp = 10; % 하이패스 필터의 차단 주파수 (Hz)

% 저역통과 필터 설계
d_lowpass = designfilt('lowpassiir', 'FilterOrder', 4, ...
               'HalfPowerFrequency', fc_lp/(fs/2), ...
               'DesignMethod', 'butter');

% Band-Reject 필터 설계
d_bandreject = designfilt('bandstopiir', 'FilterOrder', 4, ...
               'HalfPowerFrequency1', f0_br-BW_br/2, 'HalfPowerFrequency2', f0_br+BW_br/2, ...
               'DesignMethod', 'butter', 'SampleRate', fs);

% 하이패스 필터 설계
d_highpass = designfilt('highpassiir', 'FilterOrder', 4, ...
               'HalfPowerFrequency', fc_hp/(fs/2), ...
               'DesignMethod', 'butter');

% 주파수 응답 계산 (Band-Reject 필터)
[H_br, w_br] = freqz(d_bandreject, fs);

% 주파수 응답 계산 (Low-Pass 필터)
[H_lp, w_lp] = freqz(d_lowpass, fs);

% 주파수 응답 계산 (High-Pass 필터)
[H_hp, w_hp] = freqz(d_highpass, fs);

% 주파수 응답 플롯 (Band-Reject 필터와 Low-Pass 필터와 High-Pass 필터)
figure;
plot(w_br*fs/(2*pi), 20*log10(abs(H_br)), 'k', 'DisplayName', 'Band-Reject Filter');
xlim([0 60])
hold on;
plot(w_lp*fs/(2*pi), 20*log10(abs(H_lp)), 'r', 'DisplayName', 'Low-Pass Filter');
plot(w_hp*fs/(2*pi), 20*log10(abs(H_hp)), 'b', 'DisplayName', 'High-Pass Filter');
xlim([0 60])
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Frequency Response of Band-Reject, Low-Pass, and High-Pass Filters');
legend('show');
print(gcf, 'Frequency_Response_Band_Reject_Low_Pass_and_High_Pass_Filter', '-dtiff', '-r300'); % TIF 파일로 저장 (300 dpi)

% 시간 벡터
t = 0:1/fs:1;

% 원 신호
x = sin(2*pi*10*t) + 2*cos(2*pi*30*t);

% 잡음 신호
n1 = 3 * sin(2*pi*20*t); % 주기적 잡음
n2 = sqrt(0.01) * randn(size(t)); % 백색 가우시안 잡음

% 입력 신호
x_t = x + n1 + n2;

% High-Pass 필터 적용
y_t_highpass = filter(d_highpass, x_t);

% Band-Reject 필터 적용
y_t_bandreject = filter(d_bandreject, y_t_highpass);

% 저역통과 필터 적용
y_t_filtered = filter(d_lowpass, y_t_bandreject);

% FFT 및 주파수 벡터 계산
N = length(t);
f = (0:N-1)*(fs/N);

% FFT 계산
X = fft(x);
X_t = fft(x_t);
Y_t_highpass = fft(y_t_highpass);
Y_t_bandreject = fft(y_t_bandreject);
Y_t_filtered = fft(y_t_filtered);

% 주파수 스펙트럼 플롯 - subplot으로 통합
figure;

subplot(4, 1, 1);
plot(f, abs(X)/N, 'k');
xlim([0 40]); % x축 범위를 0Hz에서 40Hz로 설정
ylim([0 1.5]);
title('Original Signal Spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

subplot(4, 1, 2);
plot(f, abs(X_t)/N, 'k');
xlim([0 40]); % x축 범위를 0Hz에서 40Hz로 설정
ylim([0 1.5]);
title('Input Signal Spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

subplot(4, 1, 3);
plot(f, abs(Y_t_highpass)/N, 'k');
xlim([0 40]); % x축 범위를 0Hz에서 40Hz로 설정
ylim([0 1.5]);
title('High-Pass Filtered Signal Spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

subplot(4, 1, 4);
plot(f, abs(Y_t_filtered)/N, 'k');
xlim([0 40]); % x축 범위를 0Hz에서 40Hz로 설정
ylim([0 1.5]);
title('Filtered Signal Spectrum (Band-Reject and Low-Pass)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

print(gcf, 'Combined_Frequency_Domain_Plots_With_High_Pass', '-dtiff', '-r300'); % TIF 파일로 저장 (300 dpi)

% 필터링된 신호 플롯 (시간 도메인)
figure;
subplot(5, 1, 1);
plot(t, x, 'k');
title('Original Signal');
ylim([-6 6]);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(5, 1, 2);
plot(t, x_t, 'k');
title('Input Signal');
ylim([-6 6]);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(5, 1, 3);
plot(t, y_t_highpass, 'k');
title('High-Pass Filtered Signal');
ylim([-6 6]);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(5, 1, 4);
plot(t, y_t_bandreject, 'k');
title('Band-Reject Filtered Signal');
ylim([-6 6]);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(5, 1, 5);
plot(t, y_t_filtered, 'k');
title('Filtered Signal (Band-Reject and Low-Pass)');
ylim([-6 6]);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
print(gcf, 'Filtered_Signal_Time_Domain_With_High_Pass', '-dtiff', '-r300'); % TIF 파일로 저장 (300 dpi)
