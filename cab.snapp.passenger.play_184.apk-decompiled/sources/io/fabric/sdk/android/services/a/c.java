package io.fabric.sdk.android.services.a;

import android.content.Context;

public interface c<T> {
    T get(Context context, d<T> dVar) throws Exception;

    void invalidate(Context context);
}
