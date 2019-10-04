package c.c.a.n.j.k;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VideoDetailFragmentArgs.kt */
public final class o implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6634a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6635b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6636c;

    /* compiled from: VideoDetailFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final o a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(o.class.getClassLoader());
            if (bundle.containsKey("videoId")) {
                String string = bundle.getString("videoId");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"videoId\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("referrer")) {
                    String string2 = bundle.getString("referrer");
                    if (string2 != null) {
                        return new o(string, string2);
                    }
                    throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                } else {
                    throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"videoId\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public o(String str, String str2) {
        j.b(str, "videoId");
        j.b(str2, "referrer");
        this.f6635b = str;
        this.f6636c = str2;
    }

    public static final o fromBundle(Bundle bundle) {
        return f6634a.a(bundle);
    }

    public final String a() {
        return this.f6636c;
    }

    public final String b() {
        return this.f6635b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6636c, (java.lang.Object) r3.f6636c) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.n.j.k.o
            if (r0 == 0) goto L_0x001d
            c.c.a.n.j.k.o r3 = (c.c.a.n.j.k.o) r3
            java.lang.String r0 = r2.f6635b
            java.lang.String r1 = r3.f6635b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.f6636c
            java.lang.String r3 = r3.f6636c
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.k.o.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f6635b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6636c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "VideoDetailFragmentArgs(videoId=" + this.f6635b + ", referrer=" + this.f6636c + ")";
    }
}
