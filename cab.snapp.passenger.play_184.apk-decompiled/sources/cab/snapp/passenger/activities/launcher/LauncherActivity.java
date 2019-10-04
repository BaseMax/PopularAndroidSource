package cab.snapp.passenger.activities.launcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import cab.snapp.deeplink.models.a;
import cab.snapp.deeplink.models.types.Host;
import cab.snapp.deeplink.models.types.Scheme;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import javax.inject.Inject;

public class LauncherActivity extends AppCompatActivity {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    g f436a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f437b;
    @Inject
    b c;

    private void a(a aVar) {
        this.f437b.sendAnalyticsEvent(c.C0021c.INTEGRATION, c.b.INTENT, "Deep Link");
        if (aVar.getScheme() == Scheme.Snapp && aVar.getHost() == Host.Ride) {
            this.f437b.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.DEEP_LINK, "[ride]");
        } else if (aVar.getScheme() == Scheme.Snapp && aVar.getHost() == Host.Shortcut) {
            this.f437b.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.DEEP_LINK, "[shortcut]");
        } else if (aVar.getScheme() == Scheme.Snapp && aVar.getHost() == Host.Open) {
            this.f437b.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.DEEP_LINK, "[open]");
        } else {
            if (aVar.getScheme() == Scheme.Geo) {
                this.f437b.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.DEEP_LINK, "[geo]");
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BaseApplication.get(this).getDataManagerComponent().inject(this);
        setContentView((int) R.layout.view_over_the_map_empty);
        this.f437b.reportEvent(c.e.OPEN_APP);
        if (getIntent() != null) {
            Uri data = getIntent().getData();
            if (data != null) {
                try {
                    a parse = new cab.snapp.deeplink.a(data).parse();
                    if (parse != null) {
                        if (b(parse)) {
                            this.f436a.setDeepLink(parse);
                        } else {
                            this.c.setDeepLink(parse);
                        }
                        a(parse);
                    }
                } catch (Exception e) {
                    e.getMessage();
                    com.a.a.a.logException(e);
                }
            }
        }
        startActivity(new Intent(this, RootActivity.class));
        overridePendingTransition(0, 0);
        finish();
    }

    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (getIntent() != null) {
            Uri data = getIntent().getData();
            if (data != null) {
                try {
                    a parse = new cab.snapp.deeplink.a(data).parse();
                    if (parse != null) {
                        if (b(parse)) {
                            this.f436a.setDeepLink(parse);
                        } else {
                            this.c.setDeepLink(parse);
                        }
                        a(parse);
                    }
                } catch (Exception e) {
                    e.getMessage();
                    com.a.a.a.logException(e);
                }
            }
        }
    }

    private static boolean b(a aVar) {
        if (aVar != null) {
            if ((aVar.getHost() == null || (aVar.getHost() != Host.Ride && aVar.getHost() != Host.Shortcut)) && aVar.getScheme() != Scheme.Geo) {
                return aVar.getHost() != null && a(aVar.getHost());
            }
            return true;
        }
    }

    private static boolean a(Host host) {
        return host == Host.Eco || host == Host.Rose || host == Host.Box || host == Host.Bike;
    }
}
