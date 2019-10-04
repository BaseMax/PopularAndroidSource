package c.c.a.n.w;

import android.os.Bundle;
import b.w.C0309f;
import com.crashlytics.android.answers.SearchEvent;
import h.f.b.f;
import h.f.b.j;

/* compiled from: SearchFragmentArgs.kt */
public final class l implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f7048a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f7049b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7050c;

    /* renamed from: d  reason: collision with root package name */
    public final String f7051d;

    /* compiled from: SearchFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final l a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(l.class.getClassLoader());
            String str = null;
            String string = bundle.containsKey(SearchEvent.QUERY_ATTRIBUTE) ? bundle.getString(SearchEvent.QUERY_ATTRIBUTE) : null;
            String string2 = bundle.containsKey("searchToken") ? bundle.getString("searchToken") : null;
            if (bundle.containsKey("referrer")) {
                str = bundle.getString("referrer");
            }
            return new l(string, string2, str);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public l() {
        this(null, null, null, 7, null);
    }

    public l(String str, String str2, String str3) {
        this.f7049b = str;
        this.f7050c = str2;
        this.f7051d = str3;
    }

    public static final l fromBundle(Bundle bundle) {
        return f7048a.a(bundle);
    }

    public final String a() {
        return this.f7049b;
    }

    public final String b() {
        return this.f7051d;
    }

    public final String c() {
        return this.f7050c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f7051d, (java.lang.Object) r3.f7051d) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.n.w.l
            if (r0 == 0) goto L_0x0027
            c.c.a.n.w.l r3 = (c.c.a.n.w.l) r3
            java.lang.String r0 = r2.f7049b
            java.lang.String r1 = r3.f7049b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f7050c
            java.lang.String r1 = r3.f7050c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f7051d
            java.lang.String r3 = r3.f7051d
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.w.l.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f7049b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f7050c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f7051d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "SearchFragmentArgs(query=" + this.f7049b + ", searchToken=" + this.f7050c + ", referrer=" + this.f7051d + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(String str, String str2, String str3, int i2, f fVar) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3);
    }
}
