package com.koushikdutta.async.b;

public abstract class j<T, F> extends i<T> implements f<F> {
    /* access modifiers changed from: protected */
    public abstract void transform(F f) throws Exception;

    public void onCompleted(Exception exc, F f) {
        if (!isCancelled()) {
            if (exc != null) {
                error(exc);
                return;
            }
            try {
                transform(f);
            } catch (Exception e) {
                error(e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void error(Exception exc) {
        setComplete(exc);
    }
}
