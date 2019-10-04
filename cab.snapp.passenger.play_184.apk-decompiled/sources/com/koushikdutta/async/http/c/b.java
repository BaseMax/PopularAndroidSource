package com.koushikdutta.async.http.c;

import com.koushikdutta.async.a.f;
import com.koushikdutta.async.http.e;

public interface b<T> extends f<e, T> {
    void onConnect(e eVar);

    void onProgress(e eVar, long j, long j2);
}
