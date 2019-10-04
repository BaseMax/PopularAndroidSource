package c.c.a.n.p;

import android.os.Bundle;
import b.w.C0304a;
import b.w.p;
import com.farsitel.bazaar.R;
import h.f.b.f;
import h.f.b.j;

/* compiled from: RegisterFragmentDirections.kt */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final b f6742a = new b(null);

    /* compiled from: RegisterFragmentDirections.kt */
    private static final class a implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6743a;

        /* renamed from: b  reason: collision with root package name */
        public final long f6744b;

        /* renamed from: c  reason: collision with root package name */
        public final int f6745c;

        public a(String str, long j2, int i2) {
            j.b(str, "phoneNumber");
            this.f6743a = str;
            this.f6744b = j2;
            this.f6745c = i2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("phoneNumber", this.f6743a);
            bundle.putLong("waitingTime", this.f6744b);
            bundle.putInt("loginType", this.f6745c);
            return bundle;
        }

        public int b() {
            return R.id.action_registerFragment_to_verifyOtpFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    if (j.a((Object) this.f6743a, (Object) aVar.f6743a)) {
                        if (this.f6744b == aVar.f6744b) {
                            if (this.f6745c == aVar.f6745c) {
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
            String str = this.f6743a;
            return ((((str != null ? str.hashCode() : 0) * 31) + Long.valueOf(this.f6744b).hashCode()) * 31) + Integer.valueOf(this.f6745c).hashCode();
        }

        public String toString() {
            return "ActionRegisterFragmentToVerifyOtpFragment(phoneNumber=" + this.f6743a + ", waitingTime=" + this.f6744b + ", loginType=" + this.f6745c + ")";
        }
    }

    /* compiled from: RegisterFragmentDirections.kt */
    public static final class b {
        public b() {
        }

        public final p a(String str, long j2, int i2) {
            j.b(str, "phoneNumber");
            return new a(str, j2, i2);
        }

        public /* synthetic */ b(f fVar) {
            this();
        }

        public final p a() {
            return new C0304a(R.id.action_registerFragment_to_loginWithEmailFragment);
        }
    }
}
