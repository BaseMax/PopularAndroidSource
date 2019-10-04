package c.c.a.n.j.c;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VideoDownloadFragmentArgs.kt */
public final class d implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6483a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6484b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6485c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6486d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6487e;

    /* renamed from: f  reason: collision with root package name */
    public final String f6488f;

    /* compiled from: VideoDownloadFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final d a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(d.class.getClassLoader());
            if (bundle.containsKey("videoId")) {
                String string = bundle.getString("videoId");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"videoId\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("videoName")) {
                    String string2 = bundle.getString("videoName");
                    if (string2 == null) {
                        throw new IllegalArgumentException("Argument \"videoName\" is marked as non-null but was passed a null value.");
                    } else if (bundle.containsKey("description")) {
                        String string3 = bundle.getString("description");
                        if (bundle.containsKey("shareLink")) {
                            String string4 = bundle.getString("shareLink");
                            if (bundle.containsKey("referrer")) {
                                String string5 = bundle.getString("referrer");
                                if (string5 != null) {
                                    d dVar = new d(string, string2, string3, string4, string5);
                                    return dVar;
                                }
                                throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                            }
                            throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                        }
                        throw new IllegalArgumentException("Required argument \"shareLink\" is missing and does not have an android:defaultValue");
                    } else {
                        throw new IllegalArgumentException("Required argument \"description\" is missing and does not have an android:defaultValue");
                    }
                } else {
                    throw new IllegalArgumentException("Required argument \"videoName\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"videoId\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(String str, String str2, String str3, String str4, String str5) {
        j.b(str, "videoId");
        j.b(str2, "videoName");
        j.b(str5, "referrer");
        this.f6484b = str;
        this.f6485c = str2;
        this.f6486d = str3;
        this.f6487e = str4;
        this.f6488f = str5;
    }

    public static final d fromBundle(Bundle bundle) {
        return f6483a.a(bundle);
    }

    public final String a() {
        return this.f6486d;
    }

    public final String b() {
        return this.f6488f;
    }

    public final String c() {
        return this.f6487e;
    }

    public final String d() {
        return this.f6484b;
    }

    public final String e() {
        return this.f6485c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6488f, (java.lang.Object) r3.f6488f) != false) goto L_0x003d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x003d
            boolean r0 = r3 instanceof c.c.a.n.j.c.d
            if (r0 == 0) goto L_0x003b
            c.c.a.n.j.c.d r3 = (c.c.a.n.j.c.d) r3
            java.lang.String r0 = r2.f6484b
            java.lang.String r1 = r3.f6484b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.f6485c
            java.lang.String r1 = r3.f6485c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.f6486d
            java.lang.String r1 = r3.f6486d
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.f6487e
            java.lang.String r1 = r3.f6487e
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = r2.f6488f
            java.lang.String r3 = r3.f6488f
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x003b
            goto L_0x003d
        L_0x003b:
            r3 = 0
            return r3
        L_0x003d:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.c.d.equals(java.lang.Object):boolean");
    }

    public final Bundle f() {
        Bundle bundle = new Bundle();
        bundle.putString("videoId", this.f6484b);
        bundle.putString("videoName", this.f6485c);
        bundle.putString("description", this.f6486d);
        bundle.putString("shareLink", this.f6487e);
        bundle.putString("referrer", this.f6488f);
        return bundle;
    }

    public int hashCode() {
        String str = this.f6484b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6485c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f6486d;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f6487e;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f6488f;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode4 + i2;
    }

    public String toString() {
        return "VideoDownloadFragmentArgs(videoId=" + this.f6484b + ", videoName=" + this.f6485c + ", description=" + this.f6486d + ", shareLink=" + this.f6487e + ", referrer=" + this.f6488f + ")";
    }
}
