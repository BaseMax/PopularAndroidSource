package io.reactivex.parallel;

import io.reactivex.e.c;

public enum ParallelFailureHandling implements c<Long, Throwable, ParallelFailureHandling> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    public final ParallelFailureHandling apply(Long l, Throwable th) {
        return this;
    }
}
