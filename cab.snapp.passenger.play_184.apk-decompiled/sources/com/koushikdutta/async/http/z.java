package com.koushikdutta.async.http;

import com.koushikdutta.async.j;

public interface z extends j {

    public interface a {
        void onPingReceived(String str);
    }

    public interface b {
        void onPongReceived(String str);
    }

    public interface c {
        void onStringAvailable(String str);
    }

    b getPongCallback();

    j getSocket();

    c getStringCallback();

    boolean isBuffering();

    void ping(String str);

    void pong(String str);

    void send(String str);

    void send(byte[] bArr);

    void send(byte[] bArr, int i, int i2);

    void setPingCallback(a aVar);

    void setPongCallback(b bVar);

    void setStringCallback(c cVar);
}
