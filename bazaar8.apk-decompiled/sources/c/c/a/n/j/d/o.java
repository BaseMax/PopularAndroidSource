package c.c.a.n.j.d;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: EpisodeDetailFragmentArgs.kt */
public final class o implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6534a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6535b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6536c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6537d;

    /* compiled from: EpisodeDetailFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final o a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(o.class.getClassLoader());
            if (bundle.containsKey("episodeId")) {
                String string = bundle.getString("episodeId");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"episodeId\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("seasonIndex")) {
                    int i2 = bundle.getInt("seasonIndex");
                    if (bundle.containsKey("referrer")) {
                        String string2 = bundle.getString("referrer");
                        if (string2 != null) {
                            return new o(string, i2, string2);
                        }
                        throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                    }
                    throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                } else {
                    throw new IllegalArgumentException("Required argument \"seasonIndex\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"episodeId\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public o(String str, int i2, String str2) {
        j.b(str, "episodeId");
        j.b(str2, "referrer");
        this.f6535b = str;
        this.f6536c = i2;
        this.f6537d = str2;
    }

    public static final o fromBundle(Bundle bundle) {
        return f6534a.a(bundle);
    }

    public final String a() {
        return this.f6535b;
    }

    public final String b() {
        return this.f6537d;
    }

    public final int c() {
        return this.f6536c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof o) {
                o oVar = (o) obj;
                if (j.a((Object) this.f6535b, (Object) oVar.f6535b)) {
                    if (!(this.f6536c == oVar.f6536c) || !j.a((Object) this.f6537d, (Object) oVar.f6537d)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6535b;
        int i2 = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6536c).hashCode()) * 31;
        String str2 = this.f6537d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "EpisodeDetailFragmentArgs(episodeId=" + this.f6535b + ", seasonIndex=" + this.f6536c + ", referrer=" + this.f6537d + ")";
    }
}
