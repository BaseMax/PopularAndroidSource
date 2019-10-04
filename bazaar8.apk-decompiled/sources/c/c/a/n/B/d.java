package c.c.a.n.B;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: WebViewFragmentArgs.kt */
public final class d implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6171a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6172b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6173c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f6174d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6175e;

    /* compiled from: WebViewFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final d a(Bundle bundle) {
            Bundle bundle2;
            j.b(bundle, "bundle");
            bundle.setClassLoader(d.class.getClassLoader());
            if (bundle.containsKey("url")) {
                String string = bundle.getString("url");
                if (string != null) {
                    int i2 = -1;
                    int i3 = bundle.containsKey("fallbackId") ? bundle.getInt("fallbackId") : -1;
                    if (!bundle.containsKey("fallbackBundle")) {
                        bundle2 = null;
                    } else if (Parcelable.class.isAssignableFrom(Bundle.class) || Serializable.class.isAssignableFrom(Bundle.class)) {
                        bundle2 = (Bundle) bundle.get("fallbackBundle");
                    } else {
                        throw new UnsupportedOperationException(Bundle.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                    }
                    if (bundle.containsKey("cacheMode")) {
                        i2 = bundle.getInt("cacheMode");
                    }
                    return new d(string, i3, bundle2, i2);
                }
                throw new IllegalArgumentException("Argument \"url\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Required argument \"url\" is missing and does not have an android:defaultValue");
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(String str, int i2, Bundle bundle, int i3) {
        j.b(str, "url");
        this.f6172b = str;
        this.f6173c = i2;
        this.f6174d = bundle;
        this.f6175e = i3;
    }

    public static final d fromBundle(Bundle bundle) {
        return f6171a.a(bundle);
    }

    public final int a() {
        return this.f6175e;
    }

    public final Bundle b() {
        return this.f6174d;
    }

    public final int c() {
        return this.f6173c;
    }

    public final String d() {
        return this.f6172b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (j.a((Object) this.f6172b, (Object) dVar.f6172b)) {
                    if ((this.f6173c == dVar.f6173c) && j.a((Object) this.f6174d, (Object) dVar.f6174d)) {
                        if (this.f6175e == dVar.f6175e) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6172b;
        int i2 = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6173c).hashCode()) * 31;
        Bundle bundle = this.f6174d;
        if (bundle != null) {
            i2 = bundle.hashCode();
        }
        return ((hashCode + i2) * 31) + Integer.valueOf(this.f6175e).hashCode();
    }

    public String toString() {
        return "WebViewFragmentArgs(url=" + this.f6172b + ", fallbackId=" + this.f6173c + ", fallbackBundle=" + this.f6174d + ", cacheMode=" + this.f6175e + ")";
    }
}
