package c.c.a.n.j.i;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: SeasonEpisodesFragmentArgs.kt */
public final class a implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final C0098a f6587a = new C0098a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6588b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6589c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6590d;

    /* renamed from: c.c.a.n.j.i.a$a  reason: collision with other inner class name */
    /* compiled from: SeasonEpisodesFragmentArgs.kt */
    public static final class C0098a {
        public C0098a() {
        }

        public final a a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(a.class.getClassLoader());
            if (bundle.containsKey("seasonId")) {
                String string = bundle.getString("seasonId");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"seasonId\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("seasonIndex")) {
                    int i2 = bundle.getInt("seasonIndex");
                    if (bundle.containsKey("referrer")) {
                        String string2 = bundle.getString("referrer");
                        if (string2 != null) {
                            return new a(string, i2, string2);
                        }
                        throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                    }
                    throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                } else {
                    throw new IllegalArgumentException("Required argument \"seasonIndex\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"seasonId\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ C0098a(f fVar) {
            this();
        }
    }

    public a(String str, int i2, String str2) {
        j.b(str, "seasonId");
        j.b(str2, "referrer");
        this.f6588b = str;
        this.f6589c = i2;
        this.f6590d = str2;
    }

    public static final a fromBundle(Bundle bundle) {
        return f6587a.a(bundle);
    }

    public final String a() {
        return this.f6588b;
    }

    public final int b() {
        return this.f6589c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (j.a((Object) this.f6588b, (Object) aVar.f6588b)) {
                    if (!(this.f6589c == aVar.f6589c) || !j.a((Object) this.f6590d, (Object) aVar.f6590d)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6588b;
        int i2 = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6589c).hashCode()) * 31;
        String str2 = this.f6590d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SeasonEpisodesFragmentArgs(seasonId=" + this.f6588b + ", seasonIndex=" + this.f6589c + ", referrer=" + this.f6590d + ")";
    }
}
