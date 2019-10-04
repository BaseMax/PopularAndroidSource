package cab.snapp.authenticator.a.b;

import android.accounts.AccountManager;
import android.content.Context;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f176a;

    public a(Context context) {
        this.f176a = context;
    }

    @Singleton
    @Provides
    public AccountManager provideAccountManager() {
        return AccountManager.get(this.f176a);
    }
}
