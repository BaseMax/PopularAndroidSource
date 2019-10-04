package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import b.v;
import com.squareup.picasso.Picasso;
import java.io.IOException;

public abstract class y {

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f5311a;

        /* renamed from: b  reason: collision with root package name */
        private final Picasso.LoadedFrom f5312b;
        private final Bitmap c;
        private final v d;

        public a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            this((Bitmap) af.a(bitmap, "bitmap == null"), null, loadedFrom, 0);
        }

        public a(v vVar, Picasso.LoadedFrom loadedFrom) {
            this(null, (v) af.a(vVar, "source == null"), loadedFrom, 0);
        }

        a(Bitmap bitmap, v vVar, Picasso.LoadedFrom loadedFrom, int i) {
            boolean z = true;
            if ((bitmap != null) != (vVar == null ? false : z)) {
                this.c = bitmap;
                this.d = vVar;
                this.f5312b = (Picasso.LoadedFrom) af.a(loadedFrom, "loadedFrom == null");
                this.f5311a = i;
                return;
            }
            throw new AssertionError();
        }

        public final Bitmap getBitmap() {
            return this.c;
        }

        public final v getSource() {
            return this.d;
        }

        public final Picasso.LoadedFrom getLoadedFrom() {
            return this.f5312b;
        }
    }

    /* access modifiers changed from: package-private */
    public int a() {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public boolean a(NetworkInfo networkInfo) {
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        return false;
    }

    public abstract boolean canHandleRequest(w wVar);

    public abstract a load(w wVar, int i) throws IOException;

    static BitmapFactory.Options b(w wVar) {
        boolean hasSize = wVar.hasSize();
        boolean z = wVar.config != null;
        BitmapFactory.Options options = null;
        if (hasSize || z || wVar.purgeable) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = hasSize;
            options.inInputShareable = wVar.purgeable;
            options.inPurgeable = wVar.purgeable;
            if (z) {
                options.inPreferredConfig = wVar.config;
            }
        }
        return options;
    }

    static boolean a(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    static void a(int i, int i2, BitmapFactory.Options options, w wVar) {
        a(i, i2, options.outWidth, options.outHeight, options, wVar);
    }

    static void a(int i, int i2, int i3, int i4, BitmapFactory.Options options, w wVar) {
        int i5;
        double floor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                floor = Math.floor((double) (((float) i3) / ((float) i)));
            } else if (i == 0) {
                floor = Math.floor((double) (((float) i4) / ((float) i2)));
            } else {
                int floor2 = (int) Math.floor((double) (((float) i4) / ((float) i2)));
                int floor3 = (int) Math.floor((double) (((float) i3) / ((float) i)));
                i5 = wVar.centerInside ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            i5 = (int) floor;
        } else {
            i5 = 1;
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }
}
