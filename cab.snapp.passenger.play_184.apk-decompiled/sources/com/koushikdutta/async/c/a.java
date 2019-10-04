package com.koushikdutta.async.c;

import com.koushikdutta.async.b.e;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.lang.reflect.Type;

public interface a<T> {
    Type getType();

    e<T> parse(n nVar);

    void write(q qVar, T t, com.koushikdutta.async.a.a aVar);
}
