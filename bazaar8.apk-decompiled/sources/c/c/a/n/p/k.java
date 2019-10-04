package c.c.a.n.p;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: RegisterFragmentArgs.kt */
public final class k implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6739a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6740b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6741c;

    /* compiled from: RegisterFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final k a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(k.class.getClassLoader());
            if (bundle.containsKey("dealerPackageName")) {
                String string = bundle.getString("dealerPackageName");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"dealerPackageName\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("loginType")) {
                    return new k(string, bundle.getInt("loginType"));
                } else {
                    throw new IllegalArgumentException("Required argument \"loginType\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"dealerPackageName\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public k(String str, int i2) {
        j.b(str, "dealerPackageName");
        this.f6740b = str;
        this.f6741c = i2;
    }

    public static final k fromBundle(Bundle bundle) {
        return f6739a.a(bundle);
    }

    public final String a() {
        return this.f6740b;
    }

    public final int b() {
        return this.f6741c;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof k) {
                k kVar = (k) obj;
                if (j.a((Object) this.f6740b, (Object) kVar.f6740b)) {
                    if (this.f6741c == kVar.f6741c) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6740b;
        return ((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6741c).hashCode();
    }

    public String toString() {
        return "RegisterFragmentArgs(dealerPackageName=" + this.f6740b + ", loginType=" + this.f6741c + ")";
    }
}
