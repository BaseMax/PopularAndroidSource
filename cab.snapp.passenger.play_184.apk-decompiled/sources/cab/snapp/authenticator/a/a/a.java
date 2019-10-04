package cab.snapp.authenticator.a.a;

import android.accounts.AccountManager;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {cab.snapp.authenticator.a.b.a.class})
public interface a {
    AccountManager provideAccountManager();
}
