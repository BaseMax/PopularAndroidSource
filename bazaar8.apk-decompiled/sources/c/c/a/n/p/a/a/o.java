package c.c.a.n.p.a.a;

import android.os.Bundle;
import b.w.p;
import com.farsitel.bazaar.R;
import h.f.b.f;
import h.f.b.j;

/* compiled from: VerifyEmailOtpFragmentDirections.kt */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6722a = new a(null);

    /* compiled from: VerifyEmailOtpFragmentDirections.kt */
    public static final class a {
        public a() {
        }

        public final p a(String str, int i2) {
            j.b(str, "dealerPackageName");
            return new b(str, i2);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: VerifyEmailOtpFragmentDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6723a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6724b;

        public b(String str, int i2) {
            j.b(str, "dealerPackageName");
            this.f6723a = str;
            this.f6724b = i2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("dealerPackageName", this.f6723a);
            bundle.putInt("loginType", this.f6724b);
            return bundle;
        }

        public int b() {
            return R.id.verifyEmailOtpFragment_to_registerFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    if (j.a((Object) this.f6723a, (Object) bVar.f6723a)) {
                        if (this.f6724b == bVar.f6724b) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6723a;
            return ((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6724b).hashCode();
        }

        public String toString() {
            return "VerifyEmailOtpFragmentToRegisterFragment(dealerPackageName=" + this.f6723a + ", loginType=" + this.f6724b + ")";
        }
    }
}
