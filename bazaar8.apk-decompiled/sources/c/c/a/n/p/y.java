package c.c.a.n.p;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VerifyOtpFragmentArgs.kt */
public final class y implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6762a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6763b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6764c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6765d;

    /* compiled from: VerifyOtpFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final y a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(y.class.getClassLoader());
            if (bundle.containsKey("phoneNumber")) {
                String string = bundle.getString("phoneNumber");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"phoneNumber\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("waitingTime")) {
                    long j2 = bundle.getLong("waitingTime");
                    if (bundle.containsKey("loginType")) {
                        return new y(string, j2, bundle.getInt("loginType"));
                    }
                    throw new IllegalArgumentException("Required argument \"loginType\" is missing and does not have an android:defaultValue");
                } else {
                    throw new IllegalArgumentException("Required argument \"waitingTime\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"phoneNumber\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public y(String str, long j2, int i2) {
        j.b(str, "phoneNumber");
        this.f6763b = str;
        this.f6764c = j2;
        this.f6765d = i2;
    }

    public static final y fromBundle(Bundle bundle) {
        return f6762a.a(bundle);
    }

    public final int a() {
        return this.f6765d;
    }

    public final String b() {
        return this.f6763b;
    }

    public final long c() {
        return this.f6764c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof y) {
                y yVar = (y) obj;
                if (j.a((Object) this.f6763b, (Object) yVar.f6763b)) {
                    if (this.f6764c == yVar.f6764c) {
                        if (this.f6765d == yVar.f6765d) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6763b;
        return ((((str != null ? str.hashCode() : 0) * 31) + Long.valueOf(this.f6764c).hashCode()) * 31) + Integer.valueOf(this.f6765d).hashCode();
    }

    public String toString() {
        return "VerifyOtpFragmentArgs(phoneNumber=" + this.f6763b + ", waitingTime=" + this.f6764c + ", loginType=" + this.f6765d + ")";
    }
}
