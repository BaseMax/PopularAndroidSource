package cab.snapp.authenticator.a.b;

import android.accounts.AccountManager;
import dagger.a.d;

public final class b implements dagger.a.b<AccountManager> {

    /* renamed from: a  reason: collision with root package name */
    private final a f177a;

    public b(a aVar) {
        this.f177a = aVar;
    }

    public final AccountManager get() {
        return (AccountManager) d.checkNotNull(this.f177a.provideAccountManager(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static dagger.a.b<AccountManager> create(a aVar) {
        return new b(aVar);
    }
}
