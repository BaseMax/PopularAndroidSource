package com.yandex.metrica.impl.ob;

import com.yandex.metrica.IReporter;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.profile.UserProfile;
import java.util.Map;

public class ks implements IReporter {

    /* renamed from: a  reason: collision with root package name */
    static final pa<String> f6333a = new ow(new ou("Event name"));

    /* renamed from: b  reason: collision with root package name */
    static final pa<String> f6334b = new ow(new ou("Error message"));
    static final pa<Throwable> c = new ow(new ov("Unhandled exception"));
    static final pa<UserProfile> d = new ow(new ov("User profile"));
    static final pa<Revenue> e = new ow(new ov("Revenue"));

    public void pauseSession() {
    }

    public void resumeSession() {
    }

    public void sendEventsBuffer() {
    }

    public void setStatisticsSending(boolean z) {
    }

    public void setUserProfileID(String str) {
    }

    public void reportEvent(String str) throws ox {
        f6333a.a(str);
    }

    public void reportEvent(String str, String str2) throws ox {
        f6333a.a(str);
    }

    public void reportEvent(String str, Map<String, Object> map) throws ox {
        f6333a.a(str);
    }

    public void reportError(String str, Throwable th) throws ox {
        f6334b.a(str);
    }

    public void reportUnhandledException(Throwable th) throws ox {
        c.a(th);
    }

    public void reportUserProfile(UserProfile userProfile) throws ox {
        d.a(userProfile);
    }

    public void reportRevenue(Revenue revenue) throws ox {
        e.a(revenue);
    }
}
