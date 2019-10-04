package c.c.a.n.u.a;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: DeveloperReplyFragmentArgs.kt */
public final class i implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6978a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final int f6979b;

    /* compiled from: DeveloperReplyFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final i a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(i.class.getClassLoader());
            if (bundle.containsKey("reviewId")) {
                return new i(bundle.getInt("reviewId"));
            }
            throw new IllegalArgumentException("Required argument \"reviewId\" is missing and does not have an android:defaultValue");
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public i(int i2) {
        this.f6979b = i2;
    }

    public static final i fromBundle(Bundle bundle) {
        return f6978a.a(bundle);
    }

    public final int a() {
        return this.f6979b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                if (this.f6979b == ((i) obj).f6979b) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Integer.valueOf(this.f6979b).hashCode();
    }

    public String toString() {
        return "DeveloperReplyFragmentArgs(reviewId=" + this.f6979b + ")";
    }
}
