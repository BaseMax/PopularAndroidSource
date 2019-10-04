package com.koushikdutta.ion.loader;

import android.content.Context;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.Loader;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.future.ResponseFuture;
import java.lang.reflect.Type;

public class SimpleLoader implements Loader {
    public e<n> load(Ion ion, d dVar, f<Loader.LoaderEmitter> fVar) {
        return null;
    }

    public <T> ResponseFuture<T> load(Ion ion, d dVar, Type type) {
        return null;
    }

    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        return null;
    }

    public e<d> resolve(Context context, Ion ion, d dVar) {
        return null;
    }
}
