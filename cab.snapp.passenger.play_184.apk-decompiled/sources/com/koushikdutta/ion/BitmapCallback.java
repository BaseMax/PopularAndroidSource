package com.koushikdutta.ion;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.e.c;
import com.koushikdutta.async.h;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import com.koushikdutta.ion.bitmap.PostProcess;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;

abstract class BitmapCallback {
    final Ion ion;
    final String key;
    final boolean put;

    public static void saveBitmapSnapshot(Ion ion2, BitmapInfo bitmapInfo) {
        if (bitmapInfo.bitmap != null) {
            c fileCache = ion2.responseCache.getFileCache();
            if (fileCache != null) {
                File tempFile = fileCache.getTempFile();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
                    bitmapInfo.bitmap.compress(bitmapInfo.bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.close();
                    fileCache.commitTempFiles(bitmapInfo.key, tempFile);
                } catch (Exception unused) {
                } finally {
                    tempFile.delete();
                }
            }
        }
    }

    public static void getBitmapSnapshot(final Ion ion2, final String str, final ArrayList<PostProcess> arrayList) {
        if (ion2.bitmapsPending.tag(str) == null) {
            final LoadBitmapBase loadBitmapBase = new LoadBitmapBase(ion2, str, true);
            Ion.getBitmapLoadExecutorService().execute(new Runnable() {
                public final void run() {
                    if (ion2.bitmapsPending.tag(str) == loadBitmapBase) {
                        try {
                            Bitmap loadBitmap = IonBitmapCache.loadBitmap(ion2.responseCache.getFileCache().getFile(str), (BitmapFactory.Options) null);
                            if (loadBitmap != null) {
                                BitmapInfo bitmapInfo = new BitmapInfo(str, "image/jpeg", loadBitmap, null);
                                bitmapInfo.servedFrom = ResponseServedFrom.LOADED_FROM_CACHE;
                                if (arrayList != null) {
                                    Iterator it = arrayList.iterator();
                                    while (it.hasNext()) {
                                        ((PostProcess) it.next()).postProcess(bitmapInfo);
                                    }
                                }
                                loadBitmapBase.report(null, bitmapInfo);
                                return;
                            }
                            throw new Exception("Bitmap failed to load");
                        } catch (OutOfMemoryError e) {
                            loadBitmapBase.report(new Exception(e), null);
                        } catch (Exception e2) {
                            loadBitmapBase.report(e2, null);
                            try {
                                ion2.responseCache.getFileCache().remove(str);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            });
        }
    }

    protected BitmapCallback(Ion ion2, String str, boolean z) {
        this.key = str;
        this.put = z;
        this.ion = ion2;
        ion2.bitmapsPending.tag(str, this);
    }

    /* access modifiers changed from: package-private */
    public boolean put() {
        return this.put;
    }

    /* access modifiers changed from: protected */
    public void onReported() {
        this.ion.processDeferred();
    }

    /* access modifiers changed from: protected */
    public void report(final Exception exc, final BitmapInfo bitmapInfo) {
        h.post(Ion.mainHandler, (Runnable) new Runnable() {
            public void run() {
                BitmapInfo bitmapInfo = bitmapInfo;
                if (bitmapInfo == null) {
                    bitmapInfo = new BitmapInfo(BitmapCallback.this.key, null, null, new Point());
                    Exception exc = exc;
                    bitmapInfo.exception = exc;
                    if (!(exc instanceof CancellationException)) {
                        BitmapCallback.this.ion.getBitmapCache().put(bitmapInfo);
                    }
                } else if (BitmapCallback.this.put()) {
                    BitmapCallback.this.ion.getBitmapCache().put(bitmapInfo);
                } else {
                    BitmapCallback.this.ion.getBitmapCache().putSoft(bitmapInfo);
                }
                ArrayList<f<BitmapInfo>> remove = BitmapCallback.this.ion.bitmapsPending.remove(BitmapCallback.this.key);
                if (remove == null || remove.size() == 0) {
                    BitmapCallback.this.onReported();
                    return;
                }
                Iterator<f<BitmapInfo>> it = remove.iterator();
                while (it.hasNext()) {
                    it.next().onCompleted(exc, bitmapInfo);
                }
                BitmapCallback.this.onReported();
            }
        });
        if (bitmapInfo != null && bitmapInfo.originalSize != null && bitmapInfo.decoder == null && this.put && bitmapInfo.bitmap != null && bitmapInfo.gifDecoder == null && bitmapInfo.sizeOf() <= 1048576) {
            saveBitmapSnapshot(this.ion, bitmapInfo);
        }
    }
}
