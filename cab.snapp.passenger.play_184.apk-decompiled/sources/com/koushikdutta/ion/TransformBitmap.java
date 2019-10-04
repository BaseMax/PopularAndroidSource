package com.koushikdutta.ion;

import android.graphics.Bitmap;
import com.koushikdutta.async.b.f;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.PostProcess;
import com.koushikdutta.ion.bitmap.Transform;
import java.util.ArrayList;
import java.util.Iterator;

class TransformBitmap extends BitmapCallback implements f<BitmapInfo> {
    String downloadKey;
    ArrayList<PostProcess> postProcess;
    ArrayList<Transform> transforms;

    static class PostProcessNullTransform implements Transform {
        String key;

        public Bitmap transform(Bitmap bitmap) {
            return bitmap;
        }

        public PostProcessNullTransform(String str) {
            this.key = str;
        }

        public String key() {
            return this.key;
        }
    }

    public TransformBitmap(Ion ion, String str, String str2, ArrayList<Transform> arrayList, ArrayList<PostProcess> arrayList2) {
        super(ion, str, true);
        this.transforms = arrayList;
        this.downloadKey = str2;
        this.postProcess = arrayList2;
    }

    public void onCompleted(Exception exc, final BitmapInfo bitmapInfo) {
        if (exc != null) {
            report(exc, null);
        } else if (this.ion.bitmapsPending.tag(this.key) == this) {
            Ion.getBitmapLoadExecutorService().execute(new Runnable() {
                public void run() {
                    if (TransformBitmap.this.ion.bitmapsPending.tag(TransformBitmap.this.key) == TransformBitmap.this) {
                        try {
                            Bitmap bitmap = bitmapInfo.bitmap;
                            Iterator<Transform> it = TransformBitmap.this.transforms.iterator();
                            while (it.hasNext()) {
                                bitmap = it.next().transform(bitmap);
                                if (bitmap == null) {
                                    throw new Exception("failed to transform bitmap");
                                }
                            }
                            BitmapInfo bitmapInfo = new BitmapInfo(TransformBitmap.this.key, bitmapInfo.mimeType, bitmap, bitmapInfo.originalSize);
                            bitmapInfo.servedFrom = bitmapInfo.servedFrom;
                            if (TransformBitmap.this.postProcess != null) {
                                Iterator<PostProcess> it2 = TransformBitmap.this.postProcess.iterator();
                                while (it2.hasNext()) {
                                    it2.next().postProcess(bitmapInfo);
                                }
                            }
                            TransformBitmap.this.report(null, bitmapInfo);
                        } catch (OutOfMemoryError e) {
                            TransformBitmap.this.report(new Exception(e), null);
                        } catch (Exception e2) {
                            TransformBitmap.this.report(e2, null);
                        }
                    }
                }
            });
        }
    }
}
