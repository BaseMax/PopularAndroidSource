package com.koushikdutta.ion.loader;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.text.TextUtils;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.e.g;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.u;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.Loader;
import com.koushikdutta.ion.ResponseServedFrom;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import java.io.File;
import java.io.FileInputStream;
import java.net.URI;
import java.util.concurrent.ExecutorService;

public class FileLoader extends StreamLoader {

    static final class FileFuture extends i<n> {
        private FileFuture() {
        }
    }

    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        String str3 = str2;
        if (str3 == null || !str3.startsWith("file:/")) {
            return null;
        }
        i iVar = new i();
        ExecutorService bitmapLoadExecutorService = Ion.getBitmapLoadExecutorService();
        final i iVar2 = iVar;
        final String str4 = str2;
        final Ion ion2 = ion;
        final int i3 = i;
        final int i4 = i2;
        final boolean z2 = z;
        final String str5 = str;
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                BitmapInfo bitmapInfo;
                FileInputStream fileInputStream;
                if (!iVar2.isCancelled()) {
                    try {
                        File file = new File(URI.create(str4));
                        BitmapFactory.Options prepareBitmapOptions = ion2.getBitmapCache().prepareBitmapOptions(file, i3, i4);
                        Point point = new Point(prepareBitmapOptions.outWidth, prepareBitmapOptions.outHeight);
                        if (!z2 || !TextUtils.equals("image/gif", prepareBitmapOptions.outMimeType)) {
                            Bitmap loadBitmap = IonBitmapCache.loadBitmap(file, prepareBitmapOptions);
                            if (loadBitmap != null) {
                                bitmapInfo = new BitmapInfo(str5, prepareBitmapOptions.outMimeType, loadBitmap, point);
                            } else {
                                throw new Exception("Bitmap failed to load");
                            }
                        } else {
                            fileInputStream = new FileInputStream(file);
                            bitmapInfo = FileLoader.this.loadGif(str5, point, fileInputStream, prepareBitmapOptions);
                            g.closeQuietly(fileInputStream);
                        }
                        bitmapInfo.servedFrom = ResponseServedFrom.LOADED_FROM_CACHE;
                        iVar2.setComplete(bitmapInfo);
                    } catch (OutOfMemoryError e) {
                        iVar2.setComplete(new Exception(e), null);
                    } catch (Exception e2) {
                        iVar2.setComplete(e2);
                    } catch (Throwable th) {
                        g.closeQuietly(fileInputStream);
                        throw th;
                    }
                }
            }
        };
        bitmapLoadExecutorService.execute(r0);
        return iVar;
    }

    public e<n> load(Ion ion, d dVar, f<Loader.LoaderEmitter> fVar) {
        if (!dVar.getUri().getScheme().startsWith("file")) {
            return null;
        }
        FileFuture fileFuture = new FileFuture();
        h server = ion.getHttpClient().getServer();
        final d dVar2 = dVar;
        final Ion ion2 = ion;
        final FileFuture fileFuture2 = fileFuture;
        final f<Loader.LoaderEmitter> fVar2 = fVar;
        AnonymousClass2 r2 = new Runnable() {
            public void run() {
                File file = new File(URI.create(dVar2.getUri().toString()));
                u uVar = new u(ion2.getHttpClient().getServer(), file);
                fileFuture2.setComplete(uVar);
                f fVar = fVar2;
                Loader.LoaderEmitter loaderEmitter = new Loader.LoaderEmitter(uVar, (long) ((int) file.length()), ResponseServedFrom.LOADED_FROM_CACHE, null, dVar2);
                fVar.onCompleted(null, loaderEmitter);
            }
        };
        server.post(r2);
        return fileFuture;
    }
}
