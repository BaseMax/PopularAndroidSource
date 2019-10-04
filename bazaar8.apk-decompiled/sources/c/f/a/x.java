package c.f.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.LruCache;

/* compiled from: LruCache */
public final class x implements C1040k {

    /* renamed from: a  reason: collision with root package name */
    public final LruCache<String, a> f12017a;

    /* compiled from: LruCache */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f12018a;

        /* renamed from: b  reason: collision with root package name */
        public final int f12019b;

        public a(Bitmap bitmap, int i2) {
            this.f12018a = bitmap;
            this.f12019b = i2;
        }
    }

    public x(Context context) {
        this(P.a(context));
    }

    public Bitmap a(String str) {
        a aVar = this.f12017a.get(str);
        if (aVar != null) {
            return aVar.f12018a;
        }
        return null;
    }

    public int size() {
        return this.f12017a.size();
    }

    public x(int i2) {
        this.f12017a = new w(this, i2);
    }

    public void a(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        int a2 = P.a(bitmap);
        if (a2 > a()) {
            this.f12017a.remove(str);
        } else {
            this.f12017a.put(str, new a(bitmap, a2));
        }
    }

    public int a() {
        return this.f12017a.maxSize();
    }
}
