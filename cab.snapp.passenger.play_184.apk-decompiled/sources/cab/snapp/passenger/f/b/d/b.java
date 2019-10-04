package cab.snapp.passenger.f.b.d;

import android.app.Application;
import cab.snapp.passenger.f.b.c.a;
import cab.snapp.passenger.f.b.c.b;
import cab.snapp.passenger.f.b.c.c;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.profile.Attribute;
import com.yandex.metrica.profile.UserProfile;

public final class b implements a<cab.snapp.passenger.f.b.c.b> {

    /* renamed from: a  reason: collision with root package name */
    private Application f562a;

    public final b init(Application application, String str) {
        this.f562a = application;
        YandexMetrica.activate(application.getApplicationContext(), YandexMetricaConfig.newConfigBuilder(str).build());
        YandexMetrica.enableActivityAutoTracking(application);
        return this;
    }

    public final c getHandlerForEvent(cab.snapp.passenger.f.b.c.b bVar) {
        if (!(this.f562a == null || bVar == null)) {
            if (bVar instanceof cab.snapp.passenger.f.b.a.b) {
                if (((cab.snapp.passenger.f.b.a.b) bVar).getProperties() == null) {
                    return null;
                }
                return new c() {
                    public final void sendEvent() {
                        YandexMetrica.reportEvent(b.this.getName(), ((cab.snapp.passenger.f.b.a.b) b.this).getProperties());
                    }
                };
            } else if (!(bVar instanceof cab.snapp.passenger.f.b.a.c) || ((cab.snapp.passenger.f.b.a.c) bVar).getProperties() == null) {
                return null;
            } else {
                return new c() {
                    public final void sendEvent() {
                        YandexMetrica.reportEvent(b.this.getName(), ((cab.snapp.passenger.f.b.a.c) b.this).getProperties().toString());
                    }
                };
            }
        }
        return null;
    }

    public final void sendUserProfile(String str, String str2, String str3) {
        UserProfile build = UserProfile.newBuilder().apply(Attribute.name().withValue(str)).apply(Attribute.customString("PhoneNumber").withValue(str3)).build();
        YandexMetrica.setUserProfileID(str2);
        YandexMetrica.reportUserProfile(build);
    }
}
