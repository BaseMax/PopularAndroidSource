package com.koushikdutta.ion.loader;

import android.content.Context;
import android.net.Uri;
import com.google.firebase.analytics.FirebaseAnalytics;
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

public class ContentLoader extends StreamLoader {
    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        if (!str2.startsWith("content:/")) {
            return null;
        }
        return super.loadBitmap(context, ion, str, str2, i, i2, z);
    }

    /* access modifiers changed from: protected */
    public InputStream getInputStream(Context context, String str) throws Exception {
        return context.getContentResolver().openInputStream(Uri.parse(str));
    }

    public e<n> load(Ion ion, d dVar, f<Loader.LoaderEmitter> fVar) {
        if (!dVar.getUri().getScheme().startsWith(FirebaseAnalytics.b.CONTENT)) {
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
                    InputStream openInputStream = ion2.getContext().getContentResolver().openInputStream(Uri.parse(dVar2.getUri().toString()));
                    if (openInputStream != null) {
                        int available = openInputStream.available();
                        c cVar = new c(ion2.getHttpClient().getServer(), openInputStream);
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
