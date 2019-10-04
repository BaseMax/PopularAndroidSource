package com.koushikdutta.async;

public interface r extends n {

    public interface a {
        void onData(int i);
    }

    int getBytesRead();

    a getDataTracker();

    void setDataEmitter(n nVar);

    void setDataTracker(a aVar);
}
