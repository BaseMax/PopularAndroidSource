package com.koushikdutta.async.b;

import java.util.concurrent.Future;

public interface e<T> extends a, Future<T> {
    e<T> setCallback(f<T> fVar);

    <C extends f<T>> C then(C c);

    T tryGet();

    Exception tryGetException();
}
