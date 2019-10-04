package com.koushikdutta.ion;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.TextUtils;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.e.c;
import com.koushikdutta.async.e.g;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.gif.GifDecoder;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;

public class LoadDeepZoom extends LoadBitmapEmitter implements f<Response<File>> {
    c fileCache;

    public LoadDeepZoom(Ion ion, String str, boolean z, c cVar) {
        super(ion, str, true, z);
        this.fileCache = cVar;
    }

    public void onCompleted(Exception exc, final Response<File> response) {
        if (exc == null) {
            exc = response.getException();
        }
        if (exc != null) {
            report(exc, null);
            return;
        }
        final File result = response.getResult();
        if (this.ion.bitmapsPending.tag(this.key) == this) {
            Ion.getBitmapLoadExecutorService().execute(new Runnable() {
                public void run() {
                    FileInputStream fileInputStream;
                    File file;
                    FileInputStream fileInputStream2 = null;
                    try {
                        if (LoadDeepZoom.this.fileCache != null) {
                            LoadDeepZoom.this.fileCache.commitTempFiles(LoadDeepZoom.this.key, result);
                            file = LoadDeepZoom.this.fileCache.getFile(LoadDeepZoom.this.key);
                        } else {
                            file = result;
                        }
                        BitmapFactory.Options prepareBitmapOptions = LoadDeepZoom.this.ion.getBitmapCache().prepareBitmapOptions(file, 0, 0);
                        Point point = new Point(prepareBitmapOptions.outWidth, prepareBitmapOptions.outHeight);
                        if (!LoadDeepZoom.this.animateGif || !TextUtils.equals("image/gif", prepareBitmapOptions.outMimeType)) {
                            BitmapRegionDecoder newInstance = BitmapRegionDecoder.newInstance(file.toString(), false);
                            Bitmap decodeRegion = newInstance.decodeRegion(new Rect(0, 0, point.x, point.y), prepareBitmapOptions);
                            if (decodeRegion != null) {
                                BitmapInfo bitmapInfo = new BitmapInfo(LoadDeepZoom.this.key, prepareBitmapOptions.outMimeType, decodeRegion, point);
                                bitmapInfo.decoder = newInstance;
                                bitmapInfo.decoderFile = file;
                                bitmapInfo.servedFrom = response.getServedFrom();
                                LoadDeepZoom.this.report(null, bitmapInfo);
                                g.closeQuietly(null);
                                return;
                            }
                            throw new Exception("unable to load decoder");
                        }
                        FileInputStream fileInputStream3 = LoadDeepZoom.this.fileCache.get(LoadDeepZoom.this.key);
                        try {
                            GifDecoder gifDecoder = new GifDecoder(ByteBuffer.wrap(g.readToEndAsArray(fileInputStream3)));
                            BitmapInfo bitmapInfo2 = new BitmapInfo(LoadDeepZoom.this.key, prepareBitmapOptions.outMimeType, gifDecoder.nextFrame().image, point);
                            bitmapInfo2.gifDecoder = gifDecoder;
                            LoadDeepZoom.this.report(null, bitmapInfo2);
                            g.closeQuietly(fileInputStream3);
                        } catch (Exception e) {
                            Exception exc = e;
                            fileInputStream = fileInputStream3;
                            e = exc;
                            try {
                                LoadDeepZoom.this.report(e, null);
                                g.closeQuietly(fileInputStream);
                            } catch (Throwable th) {
                                th = th;
                                fileInputStream2 = fileInputStream;
                                g.closeQuietly(fileInputStream2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            FileInputStream fileInputStream4 = fileInputStream3;
                            th = th2;
                            fileInputStream2 = fileInputStream4;
                            g.closeQuietly(fileInputStream2);
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream = null;
                        LoadDeepZoom.this.report(e, null);
                        g.closeQuietly(fileInputStream);
                    } catch (Throwable th3) {
                        th = th3;
                        g.closeQuietly(fileInputStream2);
                        throw th;
                    }
                }
            });
        }
    }
}
