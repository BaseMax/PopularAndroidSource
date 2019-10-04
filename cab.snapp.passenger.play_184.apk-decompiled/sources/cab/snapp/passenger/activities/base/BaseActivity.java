package cab.snapp.passenger.activities.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDelegate;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseArchActivity;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import javax.inject.Inject;

public abstract class BaseActivity extends BaseArchActivity {
    @Inject

    /* renamed from: b  reason: collision with root package name */
    e f434b;

    /* access modifiers changed from: protected */
    public abstract void onCreateFinished(Bundle bundle);

    protected static void a(Activity activity, int i) {
        if (!activity.isFinishing()) {
            AppCompatDelegate.setDefaultNightMode(i);
            activity.recreate();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BaseApplication.get(this).getDataManagerComponent().inject(this);
        AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.getDefaultNightMode());
        g.changeAppLocaleFromSharedPrefIfNeeded(this, true);
        g.setLayoutDirectionBasedOnLocale(getWindow().getDecorView());
        setContentView(R.layout.activity_root);
        ButterKnife.bind((Activity) this);
        onCreateFinished(bundle);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        g.setLocale(getApplication());
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(g.changeLocaleInContext(context));
    }

    public void onResume() {
        super.onResume();
        this.f434b.setCurrentActivity(this);
    }
}
