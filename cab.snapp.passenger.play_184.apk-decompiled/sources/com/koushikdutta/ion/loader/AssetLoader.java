package com.koushikdutta.ion.loader;

import android.content.Context;
import android.net.Uri;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.d.c;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.Loader;
import com.koushikdutta.ion.ResponseServedFrom;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import java.io.InputStream;

public class AssetLoader extends StreamLoader {
    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        if (!str2.startsWith("file:///android_asset/")) {
            return null;
        }
        return super.loadBitmap(context, ion, str, str2, i, i2, z);
    }

    /* access modifiers changed from: protected */
    public InputStream getInputStream(Context context, String str) throws Exception {
        return context.getAssets().open(Uri.parse(str).getPath().replaceFirst("^/android_asset/", ""));
    }

    public e<n> load(Ion ion, d dVar, f<Loader.LoaderEmitter> fVar) {
        if (!dVar.getUri().toString().startsWith("file:///android_asset/")) {
            return null;
        }
        InputStreamDataEmitterFuture inputStreamDataEmitterFuture = new InputStreamDataEmitterFuture();
        h server = ion.getHttpClient().getServer();
        final Ion ion2 = ion;
        final d dVar2 = dVar;
        final InputStreamDataEmitterFuture inputStreamDataEmitterFuture2 = inputStreamDataEmitterFuture;
        final f<Loader.LoaderEmitter> fVar2 = fVar;
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                try {
                    InputStream inputStream = AssetLoader.this.getInputStream(ion2.getContext(), dVar2.getUri().toString());
                    if (inputStream != null) {
                        int available = inputStream.available();
                        c cVar = new c(ion2.getHttpClient().getServer(), inputStream);
                        inputStreamDataEmitterFuture2.setComplete(cVar);
                        f fVar = fVar2;
                        Loader.LoaderEmitter loaderEmitter = new Loader.LoaderEmitter(cVar, (long) available, ResponseServedFrom.LOADED_FROM_CACHE, null, null);
                        fVar.onCompleted(null, loaderEmitter);
                        return;
                    }
                    throw new Exception("Unable to load content stream");
                } catch (Exception e) {
                    inputStreamDataEmitterFuture2.setComplete(e);
                    fVar2.onCompleted(e, null);
                }
            }
        };
        server.post(r0);
        return inputStreamDataEmitterFuture;
    }
}
