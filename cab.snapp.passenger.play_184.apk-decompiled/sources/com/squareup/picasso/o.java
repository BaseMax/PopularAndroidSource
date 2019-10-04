package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;

public final class o implements d {

    /* renamed from: a  reason: collision with root package name */
    final LruCache<String, a> f5285a;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Bitmap f5287a;

        /* renamed from: b  reason: collision with root package name */
        final int f5288b;

        a(Bitmap bitmap, int i) {
            this.f5287a = bitmap;
            this.f5288b = i;
        }
    }

    public o(Context context) {
        this(af.b(context));
    }

    public o(int i) {
        this.f5285a = new LruCache<String, a>(i) {
            /* access modifiers changed from: protected */
            public final /* bridge */ /* synthetic */ int sizeOf(Object obj, Object obj2) {
                return ((a) obj2).f5288b;
            }
        };
    }

    public final Bitmap get(String str) {
        a aVar = this.f5285a.get(str);
        if (aVar != null) {
            return aVar.f5287a;
        }
        return null;
    }

    public final void set(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        int a2 = af.a(bitmap);
        if (a2 > maxSize()) {
            this.f5285a.remove(str);
        } else {
            this.f5285a.put(str, new a(bitmap, a2));
        }
    }

    public final int size() {
        return this.f5285a.size();
    }

    public final int maxSize() {
        return this.f5285a.maxSize();
    }

    public final void clear() {
        this.f5285a.evictAll();
    }

    public final void clearKeyUri(String str) {
        for (String next : this.f5285a.snapshot().keySet()) {
            if (next.startsWith(str) && next.length() > str.length() && next.charAt(str.length()) == 10) {
                this.f5285a.remove(next);
            }
        }
    }

    public final int hitCount() {
        return this.f5285a.hitCount();
    }

    public final int missCount() {
        return this.f5285a.missCount();
    }

    public final int putCount() {
        return this.f5285a.putCount();
    }

    public final int evictionCount() {
        return this.f5285a.evictionCount();
    }
}
