package com.yandex.metrica;

import com.yandex.metrica.profile.UserProfile;
import java.util.Map;

public interface IReporter {
    void pauseSession();

    void reportError(String str, Throwable th);

    void reportEvent(String str);

    void reportEvent(String str, String str2);

    void reportEvent(String str, Map<String, Object> map);

    void reportRevenue(Revenue revenue);

    void reportUnhandledException(Throwable th);

    void reportUserProfile(UserProfile userProfile);

    void resumeSession();

    void sendEventsBuffer();

    void setStatisticsSending(boolean z);

    void setUserProfileID(String str);
}
