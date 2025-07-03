function filtered_signal = practical_notch_filter(signal, fs, notchFreq, Q)
    wo = notchFreq / (fs / 2); 
    bw = wo / Q; 
    [b, a] = iirnotch(wo, bw);
    filtered_signal = filter(b, a, signal);
end
