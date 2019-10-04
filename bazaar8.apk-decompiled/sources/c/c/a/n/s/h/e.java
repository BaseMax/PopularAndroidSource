package c.c.a.n.s.h;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: PaymentWebViewFragmentArgs.kt */
public final class e implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6925a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6926b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6927c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f6928d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6929e;

    /* renamed from: f  reason: collision with root package name */
    public final String f6930f;

    /* compiled from: PaymentWebViewFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final e a(Bundle bundle) {
            Bundle bundle2;
            j.b(bundle, "bundle");
            bundle.setClassLoader(e.class.getClassLoader());
            if (bundle.containsKey("url")) {
                String string = bundle.getString("url");
                if (string != null) {
                    int i2 = bundle.containsKey("fallbackId") ? bundle.getInt("fallbackId") : -1;
                    if (!bundle.containsKey("fallbackBundle")) {
                        bundle2 = null;
                    } else if (Parcelable.class.isAssignableFrom(Bundle.class) || Serializable.class.isAssignableFrom(Bundle.class)) {
                        bundle2 = (Bundle) bundle.get("fallbackBundle");
                    } else {
                        throw new UnsupportedOperationException(Bundle.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                    }
                    Bundle bundle3 = bundle2;
                    int i3 = bundle.containsKey("cacheMode") ? bundle.getInt("cacheMode") : -1;
                    if (bundle.containsKey("finishRedirectUrl")) {
                        String string2 = bundle.getString("finishRedirectUrl");
                        if (string2 != null) {
                            e eVar = new e(string, i2, bundle3, i3, string2);
                            return eVar;
                        }
                        throw new IllegalArgumentException("Argument \"finishRedirectUrl\" is marked as non-null but was passed a null value.");
                    }
                    throw new IllegalArgumentException("Required argument \"finishRedirectUrl\" is missing and does not have an android:defaultValue");
                }
                throw new IllegalArgumentException("Argument \"url\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Required argument \"url\" is missing and does not have an android:defaultValue");
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public e(String str, int i2, Bundle bundle, int i3, String str2) {
        j.b(str, "url");
        j.b(str2, "finishRedirectUrl");
        this.f6926b = str;
        this.f6927c = i2;
        this.f6928d = bundle;
        this.f6929e = i3;
        this.f6930f = str2;
    }

    public static final e fromBundle(Bundle bundle) {
        return f6925a.a(bundle);
    }

    public final String a() {
        return this.f6930f;
    }

    public final String b() {
        return this.f6926b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (j.a((Object) this.f6926b, (Object) eVar.f6926b)) {
                    if ((this.f6927c == eVar.f6927c) && j.a((Object) this.f6928d, (Object) eVar.f6928d)) {
                        if (!(this.f6929e == eVar.f6929e) || !j.a((Object) this.f6930f, (Object) eVar.f6930f)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6926b;
        int i2 = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6927c).hashCode()) * 31;
        Bundle bundle = this.f6928d;
        int hashCode2 = (((hashCode + (bundle != null ? bundle.hashCode() : 0)) * 31) + Integer.valueOf(this.f6929e).hashCode()) * 31;
        String str2 = this.f6930f;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "PaymentWebViewFragmentArgs(url=" + this.f6926b + ", fallbackId=" + this.f6927c + ", fallbackBundle=" + this.f6928d + ", cacheMode=" + this.f6929e + ", finishRedirectUrl=" + this.f6930f + ")";
    }
}
