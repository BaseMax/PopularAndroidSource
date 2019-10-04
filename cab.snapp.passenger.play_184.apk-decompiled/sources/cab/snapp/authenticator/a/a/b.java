package cab.snapp.authenticator.a.a;

import android.accounts.AccountManager;
import dagger.a.d;
import javax.inject.Provider;

public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private Provider<AccountManager> f174a;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        cab.snapp.authenticator.a.b.a f175a;

        /* synthetic */ a(byte b2) {
            this();
        }

        private a() {
        }

        public final a build() {
            if (this.f175a != null) {
                return new b(this, (byte) 0);
            }
            throw new IllegalStateException(cab.snapp.authenticator.a.b.a.class.getCanonicalName() + " must be set");
        }

        public final a accountModule(cab.snapp.authenticator.a.b.a aVar) {
            this.f175a = (cab.snapp.authenticator.a.b.a) d.checkNotNull(aVar);
            return this;
        }
    }

    /* synthetic */ b(a aVar, byte b2) {
        this(aVar);
    }

    private b(a aVar) {
        this.f174a = dagger.a.a.provider(cab.snapp.authenticator.a.b.b.create(aVar.f175a));
    }

    public static a builder() {
        return new a((byte) 0);
    }

    public final AccountManager provideAccountManager() {
        return this.f174a.get();
    }
}
