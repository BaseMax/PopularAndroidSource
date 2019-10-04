package c.c.a.n.j.j;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: SeriesDetailFragmentArgs.kt */
public final class i implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6602a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6603b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6604c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6605d;

    /* compiled from: SeriesDetailFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final i a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(i.class.getClassLoader());
            if (bundle.containsKey("seriesId")) {
                String string = bundle.getString("seriesId");
                if (string != null) {
                    int i2 = bundle.containsKey("seasonIndex") ? bundle.getInt("seasonIndex") : 0;
                    if (bundle.containsKey("referrer")) {
                        String string2 = bundle.getString("referrer");
                        if (string2 != null) {
                            return new i(string, i2, string2);
                        }
                        throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                    }
                    throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                }
                throw new IllegalArgumentException("Argument \"seriesId\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Required argument \"seriesId\" is missing and does not have an android:defaultValue");
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public i(String str, int i2, String str2) {
        j.b(str, "seriesId");
        j.b(str2, "referrer");
        this.f6603b = str;
        this.f6604c = i2;
        this.f6605d = str2;
    }

    public static final i fromBundle(Bundle bundle) {
        return f6602a.a(bundle);
    }

    public final String a() {
        return this.f6605d;
    }

    public final int b() {
        return this.f6604c;
    }

    public final String c() {
        return this.f6603b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                i iVar = (i) obj;
                if (j.a((Object) this.f6603b, (Object) iVar.f6603b)) {
                    if (!(this.f6604c == iVar.f6604c) || !j.a((Object) this.f6605d, (Object) iVar.f6605d)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6603b;
        int i2 = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6604c).hashCode()) * 31;
        String str2 = this.f6605d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SeriesDetailFragmentArgs(seriesId=" + this.f6603b + ", seasonIndex=" + this.f6604c + ", referrer=" + this.f6605d + ")";
    }
}
