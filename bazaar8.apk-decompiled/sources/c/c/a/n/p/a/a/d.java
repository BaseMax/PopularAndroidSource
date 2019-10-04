package c.c.a.n.p.a.a;

import android.os.Bundle;
import b.w.p;
import com.farsitel.bazaar.R;
import h.f.b.f;
import h.f.b.j;

/* compiled from: LoginWithEmailFragmentDirections.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final b f6707a = new b(null);

    /* compiled from: LoginWithEmailFragmentDirections.kt */
    private static final class a implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6708a;

        /* renamed from: b  reason: collision with root package name */
        public final long f6709b;

        public a(String str, long j2) {
            j.b(str, "email");
            this.f6708a = str;
            this.f6709b = j2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("email", this.f6708a);
            bundle.putLong("waitingTime", this.f6709b);
            return bundle;
        }

        public int b() {
            return R.id.action_loginWithEmailFragment_to_verifyEmailOtpFragment;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    if (j.a((Object) this.f6708a, (Object) aVar.f6708a)) {
                        if (this.f6709b == aVar.f6709b) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6708a;
            return ((str != null ? str.hashCode() : 0) * 31) + Long.valueOf(this.f6709b).hashCode();
        }

        public String toString() {
            return "ActionLoginWithEmailFragmentToVerifyEmailOtpFragment(email=" + this.f6708a + ", waitingTime=" + this.f6709b + ")";
        }
    }

    /* compiled from: LoginWithEmailFragmentDirections.kt */
    public static final class b {
        public b() {
        }

        public final p a(String str, long j2) {
            j.b(str, "email");
            return new a(str, j2);
        }

        public /* synthetic */ b(f fVar) {
            this();
        }
    }
}
