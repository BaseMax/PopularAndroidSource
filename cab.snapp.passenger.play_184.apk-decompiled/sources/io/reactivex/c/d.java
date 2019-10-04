package io.reactivex.c;

public final class d extends RuntimeException {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public d(Throwable th) {
        this("The exception was not handled due to missing onError handler in the subscribe() method call. Further reading: https://github.com/ReactiveX/RxJava/wiki/Error-Handling | ".concat(String.valueOf(th)), th);
    }
}
