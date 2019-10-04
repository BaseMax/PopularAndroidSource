package com.koushikdutta.ion;

import android.os.Handler;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.c.b;
import com.koushikdutta.async.e.c;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.d;
import com.koushikdutta.ion.IonRequestBuilder;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.PostProcess;
import com.koushikdutta.ion.bitmap.Transform;
import com.koushikdutta.ion.loader.MediaFile;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;

class BitmapFetcher implements IonRequestBuilder.LoadRequestCallback {
    public static final int MAX_IMAGEVIEW_LOAD = 5;
    boolean animateGif;
    String bitmapKey;
    IonRequestBuilder builder;
    String decodeKey;
    boolean deepZoom;
    boolean hasTransforms;
    BitmapInfo info;
    ArrayList<PostProcess> postProcess;
    int sampleHeight;
    int sampleWidth;
    ArrayList<Transform> transforms;

    BitmapFetcher() {
    }

    public void recomputeDecodeKey() {
        this.decodeKey = IonBitmapRequestBuilder.computeDecodeKey(this.builder, this.sampleWidth, this.sampleHeight, this.animateGif, this.deepZoom);
        this.bitmapKey = IonBitmapRequestBuilder.computeBitmapKey(this.decodeKey, this.transforms);
    }

    private boolean fastLoad(String str) {
        Ion ion = this.builder.ion;
        if (this.deepZoom) {
            if (str == null || !str.startsWith("file:/")) {
                return false;
            }
            File file = new File(URI.create(str));
            if (!file.exists()) {
                return false;
            }
            MediaFile.MediaFileType fileType = MediaFile.getFileType(file.getAbsolutePath());
            if (fileType == null || !MediaFile.isVideoFileType(fileType.fileType)) {
                LoadDeepZoom loadDeepZoom = new LoadDeepZoom(ion, this.decodeKey, this.animateGif, null);
                Response response = new Response(null, ResponseServedFrom.LOADED_FROM_CACHE, null, null, file);
                loadDeepZoom.onCompleted((Exception) null, (Response<File>) response);
                return true;
            }
        }
        boolean z = !this.hasTransforms;
        for (Loader loadBitmap : ion.configure().getLoaders()) {
            e<BitmapInfo> loadBitmap2 = loadBitmap.loadBitmap(this.builder.contextReference.getContext(), ion, this.decodeKey, str, this.sampleWidth, this.sampleHeight, this.animateGif);
            if (loadBitmap2 != null) {
                final LoadBitmapBase loadBitmapBase = new LoadBitmapBase(ion, this.decodeKey, z);
                loadBitmap2.setCallback(new f<BitmapInfo>() {
                    public void onCompleted(Exception exc, BitmapInfo bitmapInfo) {
                        loadBitmapBase.report(exc, bitmapInfo);
                    }
                });
                return true;
            }
        }
        return false;
    }

    public static boolean shouldDeferImageView(Ion ion) {
        if (ion.bitmapsPending.keySet().size() <= 5) {
            return false;
        }
        int i = 0;
        for (String tag : ion.bitmapsPending.keySet()) {
            if (ion.bitmapsPending.tag(tag) instanceof LoadBitmapBase) {
                i++;
                if (i > 5) {
                    return true;
                }
            }
        }
        return false;
    }

    public DeferredLoadBitmap defer() {
        DeferredLoadBitmap deferredLoadBitmap = new DeferredLoadBitmap(this.builder.ion, this.decodeKey, this);
        executeTransforms(this.builder.ion);
        return deferredLoadBitmap;
    }

    private void executeTransforms(Ion ion) {
        if (this.hasTransforms && ion.bitmapsPending.tag(this.bitmapKey) == null) {
            com.koushikdutta.async.e.e<f<BitmapInfo>> eVar = ion.bitmapsPending;
            String str = this.decodeKey;
            TransformBitmap transformBitmap = new TransformBitmap(ion, this.bitmapKey, str, this.transforms, this.postProcess);
            eVar.add(str, transformBitmap);
        }
    }

    public boolean loadRequest(d dVar) {
        return !fastLoad(dVar.getUri().toString());
    }

    public void execute() {
        final Ion ion = this.builder.ion;
        c fileCache = ion.responseCache.getFileCache();
        if (this.builder.noCache || !fileCache.exists(this.bitmapKey) || this.deepZoom) {
            if (ion.bitmapsPending.tag(this.decodeKey) == null && !fastLoad(this.builder.uri)) {
                this.builder.setHandler((Handler) null);
                IonRequestBuilder ionRequestBuilder = this.builder;
                ionRequestBuilder.loadRequestCallback = this;
                if (!this.deepZoom) {
                    e withResponse = ionRequestBuilder.execute(new b(), new Runnable() {
                        public void run() {
                            h.post(Ion.mainHandler, (Runnable) new Runnable() {
                                public void run() {
                                    ion.bitmapsPending.remove(BitmapFetcher.this.decodeKey);
                                }
                            });
                        }
                    }).withResponse();
                    LoadBitmap loadBitmap = new LoadBitmap(ion, this.decodeKey, !this.hasTransforms, this.sampleWidth, this.sampleHeight, this.animateGif);
                    withResponse.setCallback(loadBitmap);
                } else {
                    this.builder.write(fileCache.getTempFile()).withResponse().setCallback(new LoadDeepZoom(ion, this.decodeKey, this.animateGif, fileCache));
                }
            }
            executeTransforms(ion);
            return;
        }
        BitmapCallback.getBitmapSnapshot(ion, this.bitmapKey, this.postProcess);
    }
}
