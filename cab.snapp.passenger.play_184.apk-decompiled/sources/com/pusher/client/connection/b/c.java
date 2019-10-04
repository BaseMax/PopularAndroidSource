package com.pusher.client.connection.b;

import com.pusher.java_websocket.c.h;

public interface c {
    void onClose(int i, String str, boolean z);

    void onError(Exception exc);

    void onMessage(String str);

    void onOpen(h hVar);
}
