package com.bumptech.glide.load.b.a;

import android.graphics.Bitmap;
import com.bumptech.glide.g.k;

final class c implements l {

    /* renamed from: a  reason: collision with root package name */
    private final b f2125a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final h<a, Bitmap> f2126b = new h<>();

    static class a implements m {

        /* renamed from: a  reason: collision with root package name */
        private final b f2127a;

        /* renamed from: b  reason: collision with root package name */
        private int f2128b;
        private int c;
        private Bitmap.Config d;

        public a(b bVar) {
            this.f2127a = bVar;
        }

        public final void init(int i, int i2, Bitmap.Config config) {
            this.f2128b = i;
            this.c = i2;
            this.d = config;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f2128b == aVar.f2128b && this.c == aVar.c && this.d == aVar.d) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = ((this.f2128b * 31) + this.c) * 31;
            Bitmap.Config config = this.d;
            return i + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return c.a(this.f2128b, this.c, this.d);
        }

        public final void offer() {
            this.f2127a.offer(this);
        }
    }

    static class b extends d<a> {
        b() {
        }

        /* access modifiers changed from: package-private */
        public final a a(int i, int i2, Bitmap.Config config) {
            a aVar = (a) b();
            aVar.init(i, i2, config);
            return aVar;
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ m a() {
            return new a(this);
        }
    }

    c() {
    }

    public final void put(Bitmap bitmap) {
        this.f2126b.put(this.f2125a.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    public final Bitmap get(int i, int i2, Bitmap.Config config) {
        return this.f2126b.get(this.f2125a.a(i, i2, config));
    }

    public final Bitmap removeLast() {
        return this.f2126b.removeLast();
    }

    public final String logBitmap(int i, int i2, Bitmap.Config config) {
        return a(i, i2, config);
    }

    public final int getSize(Bitmap bitmap) {
        return k.getBitmapByteSize(bitmap);
    }

    public final String toString() {
        return "AttributeStrategy:\n  " + this.f2126b;
    }

    static String a(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    public final String logBitmap(Bitmap bitmap) {
        return a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }
}
