package cab.snapp.passenger.activities.root;

import android.accounts.AccountAuthenticatorActivity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import cab.snapp.authenticator.c;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.splash.a;
import cab.snapp.snappuikit.b;
import javax.inject.Inject;

public class AuthenticatorActivity extends AccountAuthenticatorActivity {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    c f440a;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BaseApplication.get(this).getDataManagerComponent().inject(this);
        if (this.f440a.isUserAuthorized()) {
            b.makeText((Context) this, getString(R.string.just_one_account_is_supported)).textColor(getResources().getColor(R.color.cherry)).show();
            finish();
            return;
        }
        Intent intent = new Intent(this, RootActivity.class);
        intent.putExtra(a.SNAPP_ADD_ACCOUNT_FROM_SETTINGS, true);
        intent.setFlags(67108864);
        startActivity(intent);
        finish();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        g.setLocale(getApplication());
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(g.changeLocaleInContext(context));
    }
}
