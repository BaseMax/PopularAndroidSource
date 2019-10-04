package com.koushikdutta.async;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;

public interface n {
    String charset();

    void close();

    d getDataCallback();

    a getEndCallback();

    h getServer();

    boolean isChunked();

    boolean isPaused();

    void pause();

    void resume();

    void setDataCallback(d dVar);

    void setEndCallback(a aVar);
}
