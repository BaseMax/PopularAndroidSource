package io.reactivex.internal.b;

import java.util.concurrent.Callable;

public interface h<T> extends Callable<T> {
    T call();
}
