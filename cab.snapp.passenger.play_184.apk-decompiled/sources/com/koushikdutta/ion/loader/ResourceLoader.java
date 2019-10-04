package com.koushikdutta.ion.loader;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.d.c;
import com.koushikdutta.async.e.g;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.Loader;
import com.koushikdutta.ion.ResponseServedFrom;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;

public class ResourceLoader extends StreamLoader {

    static class Resource {
        int id;
        Resources res;

        private Resource() {
        }
    }

    /* access modifiers changed from: private */
    public static Resource lookupResource(Context context, String str) throws Exception {
        int i;
        Uri parse = Uri.parse(str);
        if (parse.getPathSegments() != null) {
            String authority = parse.getAuthority();
            Resources resources = context.createPackageContext(authority, 0).getResources();
            if (parse.getPathSegments().size() == 1) {
                i = Integer.valueOf(parse.getPathSegments().get(0)).intValue();
            } else if (parse.getPathSegments().size() == 2) {
                i = resources.getIdentifier(parse.getPathSegments().get(1), parse.getPathSegments().get(0), authority);
                if (i == 0) {
                    throw new IllegalArgumentException("resource not found in given package");
                }
            } else {
                throw new IllegalArgumentException("uri is not a valid resource uri");
            }
            Resource resource = new Resource();
            resource.res = resources;
            resource.id = i;
            return resource;
        }
        throw new IllegalArgumentException("uri is not a valid resource uri");
    }

    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        String str3 = str2;
        if (str3 == null || !str3.startsWith("android.resource:/")) {
            return null;
        }
        i iVar = new i();
        ExecutorService bitmapLoadExecutorService = Ion.getBitmapLoadExecutorService();
        final Context context2 = context;
        final String str4 = str2;
        final Ion ion2 = ion;
        final int i3 = i;
        final int i4 = i2;
        final boolean z2 = z;
        final String str5 = str;
        final i iVar2 = iVar;
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                BitmapInfo bitmapInfo;
                InputStream openRawResource;
                try {
                    Resource access$100 = ResourceLoader.lookupResource(context2, str4);
                    BitmapFactory.Options prepareBitmapOptions = ion2.getBitmapCache().prepareBitmapOptions(access$100.res, access$100.id, i3, i4);
                    Point point = new Point(prepareBitmapOptions.outWidth, prepareBitmapOptions.outHeight);
                    if (!z2 || !TextUtils.equals("image/gif", prepareBitmapOptions.outMimeType)) {
                        Bitmap loadBitmap = IonBitmapCache.loadBitmap(access$100.res, access$100.id, prepareBitmapOptions);
                        if (loadBitmap != null) {
                            bitmapInfo = new BitmapInfo(str5, prepareBitmapOptions.outMimeType, loadBitmap, point);
                        } else {
                            throw new Exception("Bitmap failed to load");
                        }
                    } else {
                        openRawResource = access$100.res.openRawResource(access$100.id);
                        bitmapInfo = ResourceLoader.this.loadGif(str5, point, openRawResource, prepareBitmapOptions);
                        g.closeQuietly(openRawResource);
                    }
                    bitmapInfo.servedFrom = ResponseServedFrom.LOADED_FROM_CACHE;
                    iVar2.setComplete(bitmapInfo);
                } catch (OutOfMemoryError e) {
                    iVar2.setComplete(new Exception(e), null);
                } catch (Exception e2) {
                    iVar2.setComplete(e2);
                } catch (Throwable th) {
                    g.closeQuietly(openRawResource);
                    throw th;
                }
            }
        };
        bitmapLoadExecutorService.execute(r0);
        return iVar;
    }

    public e<n> load(Ion ion, d dVar, f<Loader.LoaderEmitter> fVar) {
        if (!dVar.getUri().getScheme().equals("android.resource")) {
            return null;
        }
        InputStreamDataEmitterFuture inputStreamDataEmitterFuture = new InputStreamDataEmitterFuture();
        h server = ion.getHttpClient().getServer();
        final Ion ion2 = ion;
        final d dVar2 = dVar;
        final InputStreamDataEmitterFuture inputStreamDataEmitterFuture2 = inputStreamDataEmitterFuture;
        final f<Loader.LoaderEmitter> fVar2 = fVar;
        AnonymousClass2 r0 = new Runnable() {
            public void run() {
                try {
                    Resource access$100 = ResourceLoader.lookupResource(ion2.getContext(), dVar2.getUri().toString());
                    InputStream openRawResource = access$100.res.openRawResource(access$100.id);
                    if (openRawResource != null) {
                        int available = openRawResource.available();
                        c cVar = new c(ion2.getHttpClient().getServer(), openRawResource);
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
