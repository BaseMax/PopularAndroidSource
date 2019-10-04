package cab.snapp.passenger.f.b.d;

import android.app.Application;
import cab.snapp.passenger.f.b.a.e;
import cab.snapp.passenger.f.b.c.a;
import cab.snapp.passenger.f.b.c.c;
import com.webengage.sdk.android.LocationTrackingStrategy;
import com.webengage.sdk.android.User;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.WebEngageActivityLifeCycleCallbacks;
import com.webengage.sdk.android.WebEngageConfig;
import java.util.Iterator;
import java.util.Map;

public final class d implements a<e> {

    /* renamed from: a  reason: collision with root package name */
    private WebEngageConfig f567a;

    public final d init(Application application, String str, boolean z) {
        if (this.f567a == null) {
            this.f567a = new WebEngageConfig.Builder().setLocationTrackingStrategy(LocationTrackingStrategy.ACCURACY_BEST).setWebEngageKey(str).setDebugMode(z).build();
            application.registerActivityLifecycleCallbacks(new WebEngageActivityLifeCycleCallbacks(application, this.f567a));
        }
        return this;
    }

    public final void changeUser(String str) {
        try {
            WebEngage.get().user().login(str);
        } catch (Exception e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
        }
    }

    public final void logOutUser() {
        try {
            WebEngage.get().user().logout();
        } catch (Exception e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
        }
    }

    public final c getHandlerForEvent(final e eVar) {
        return new c() {
            public final void sendEvent() {
                e eVar = eVar;
                if (eVar != null) {
                    if (eVar.getProperties() != null) {
                        Iterator<Object> it = eVar.getProperties().values().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next() == null) {
                                    WebEngage.get().analytics().track(eVar.getName());
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        WebEngage.get().analytics().track(eVar.getName(), (Map<String, ? extends Object>) eVar.getProperties());
                        return;
                    }
                    WebEngage.get().analytics().track(eVar.getName());
                }
            }
        };
    }

    public final void setUserCustomAttribute(String str, String str2) {
        WebEngage.get().user().setAttribute(str, str2);
    }

    public final void setUserCommonAttributes(String str, String str2, String str3, String str4) {
        User user = WebEngage.get().user();
        if (str != null) {
            user.setFirstName(str);
        }
        if (str2 != null) {
            user.setEmail(str2);
        }
        if (str3 != null) {
            user.setPhoneNumber(str3);
        }
        if (str4 != null) {
            user.setBirthDate(str4);
        }
    }
}
