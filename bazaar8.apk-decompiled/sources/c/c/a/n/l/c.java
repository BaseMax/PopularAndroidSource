package c.c.a.n.l;

import android.os.Bundle;
import android.os.Parcelable;
import b.w.C0309f;
import com.farsitel.bazaar.ui.fehrest.FehrestParams;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: FehrestFragmentArgs.kt */
public final class c implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6662a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final FehrestParams f6663b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6664c;

    /* compiled from: FehrestFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final c a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(c.class.getClassLoader());
            if (!bundle.containsKey("fehrestParams")) {
                throw new IllegalArgumentException("Required argument \"fehrestParams\" is missing and does not have an android:defaultValue");
            } else if (Parcelable.class.isAssignableFrom(FehrestParams.class) || Serializable.class.isAssignableFrom(FehrestParams.class)) {
                FehrestParams fehrestParams = (FehrestParams) bundle.get("fehrestParams");
                if (fehrestParams == null) {
                    throw new IllegalArgumentException("Argument \"fehrestParams\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("referrer")) {
                    String string = bundle.getString("referrer");
                    if (string != null) {
                        return new c(fehrestParams, string);
                    }
                    throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                } else {
                    throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new UnsupportedOperationException(FehrestParams.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(FehrestParams fehrestParams, String str) {
        j.b(fehrestParams, "fehrestParams");
        j.b(str, "referrer");
        this.f6663b = fehrestParams;
        this.f6664c = str;
    }

    public static final c fromBundle(Bundle bundle) {
        return f6662a.a(bundle);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6664c, (java.lang.Object) r3.f6664c) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.n.l.c
            if (r0 == 0) goto L_0x001d
            c.c.a.n.l.c r3 = (c.c.a.n.l.c) r3
            com.farsitel.bazaar.ui.fehrest.FehrestParams r0 = r2.f6663b
            com.farsitel.bazaar.ui.fehrest.FehrestParams r1 = r3.f6663b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.f6664c
            java.lang.String r3 = r3.f6664c
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.l.c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        FehrestParams fehrestParams = this.f6663b;
        int i2 = 0;
        int hashCode = (fehrestParams != null ? fehrestParams.hashCode() : 0) * 31;
        String str = this.f6664c;
        if (str != null) {
            i2 = str.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "FehrestFragmentArgs(fehrestParams=" + this.f6663b + ", referrer=" + this.f6664c + ")";
    }
}
