package com.google.android.gms.c;

import android.app.Activity;
import java.util.concurrent.Executor;

public abstract class f<TResult> {
    public f<TResult> addOnCompleteListener(Activity activity, b<TResult> bVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public f<TResult> addOnCompleteListener(b<TResult> bVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public f<TResult> addOnCompleteListener(Executor executor, b<TResult> bVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract f<TResult> addOnFailureListener(Activity activity, c cVar);

    public abstract f<TResult> addOnFailureListener(c cVar);

    public abstract f<TResult> addOnFailureListener(Executor executor, c cVar);

    public abstract f<TResult> addOnSuccessListener(Activity activity, d<? super TResult> dVar);

    public abstract f<TResult> addOnSuccessListener(d<? super TResult> dVar);

    public abstract f<TResult> addOnSuccessListener(Executor executor, d<? super TResult> dVar);

    public <TContinuationResult> f<TContinuationResult> continueWith(a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> f<TContinuationResult> continueWith(Executor executor, a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> f<TContinuationResult> continueWithTask(a<TResult, f<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public <TContinuationResult> f<TContinuationResult> continueWithTask(Executor executor, a<TResult, f<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract Exception getException();

    public abstract TResult getResult();

    public abstract <X extends Throwable> TResult getResult(Class<X> cls) throws Throwable;

    public abstract boolean isComplete();

    public abstract boolean isSuccessful();
}
