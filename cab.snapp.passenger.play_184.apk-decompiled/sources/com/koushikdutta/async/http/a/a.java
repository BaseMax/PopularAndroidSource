package com.koushikdutta.async.http.a;

import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;

public interface a<T> {
    T get();

    String getContentType();

    int length();

    void parse(n nVar, com.koushikdutta.async.a.a aVar);

    boolean readFullyOnRequest();

    void write(d dVar, q qVar, com.koushikdutta.async.a.a aVar);
}
