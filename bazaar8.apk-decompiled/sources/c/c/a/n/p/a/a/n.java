package c.c.a.n.p.a.a;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VerifyEmailOtpFragmentArgs.kt */
public final class n implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6719a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6720b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6721c;

    /* compiled from: VerifyEmailOtpFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final n a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(n.class.getClassLoader());
            if (bundle.containsKey("email")) {
                String string = bundle.getString("email");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"email\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("waitingTime")) {
                    return new n(string, bundle.getLong("waitingTime"));
                } else {
                    throw new IllegalArgumentException("Required argument \"waitingTime\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"email\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public n(String str, long j2) {
        j.b(str, "email");
        this.f6720b = str;
        this.f6721c = j2;
    }

    public static final n fromBundle(Bundle bundle) {
        return f6719a.a(bundle);
    }

    public final String a() {
        return this.f6720b;
    }

    public final long b() {
        return this.f6721c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof n) {
                n nVar = (n) obj;
                if (j.a((Object) this.f6720b, (Object) nVar.f6720b)) {
                    if (this.f6721c == nVar.f6721c) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6720b;
        return ((str != null ? str.hashCode() : 0) * 31) + Long.valueOf(this.f6721c).hashCode();
    }

    public String toString() {
        return "VerifyEmailOtpFragmentArgs(email=" + this.f6720b + ", waitingTime=" + this.f6721c + ")";
    }
}
