package c.e.a.b.g.f;

import android.os.Bundle;
import android.os.IInterface;
import c.e.a.b.e.a;
import com.google.android.gms.internal.measurement.zzy;
import java.util.Map;

public interface cd extends IInterface {
    void beginAdUnitExposure(String str, long j2);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void endAdUnitExposure(String str, long j2);

    void generateEventId(fd fdVar);

    void getAppInstanceId(fd fdVar);

    void getCachedAppInstanceId(fd fdVar);

    void getConditionalUserProperties(String str, String str2, fd fdVar);

    void getCurrentScreenClass(fd fdVar);

    void getCurrentScreenName(fd fdVar);

    void getGmpAppId(fd fdVar);

    void getMaxUserProperties(String str, fd fdVar);

    void getTestFlag(fd fdVar, int i2);

    void getUserProperties(String str, String str2, boolean z, fd fdVar);

    void initForTests(Map map);

    void initialize(a aVar, zzy zzy, long j2);

    void isDataCollectionEnabled(fd fdVar);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2);

    void logEventAndBundle(String str, String str2, Bundle bundle, fd fdVar, long j2);

    void logHealthData(int i2, String str, a aVar, a aVar2, a aVar3);

    void onActivityCreated(a aVar, Bundle bundle, long j2);

    void onActivityDestroyed(a aVar, long j2);

    void onActivityPaused(a aVar, long j2);

    void onActivityResumed(a aVar, long j2);

    void onActivitySaveInstanceState(a aVar, fd fdVar, long j2);

    void onActivityStarted(a aVar, long j2);

    void onActivityStopped(a aVar, long j2);

    void performAction(Bundle bundle, fd fdVar, long j2);

    void registerOnMeasurementEventListener(id idVar);

    void resetAnalyticsData(long j2);

    void setConditionalUserProperty(Bundle bundle, long j2);

    void setCurrentScreen(a aVar, String str, String str2, long j2);

    void setDataCollectionEnabled(boolean z);

    void setEventInterceptor(id idVar);

    void setInstanceIdProvider(ld ldVar);

    void setMeasurementEnabled(boolean z, long j2);

    void setMinimumSessionDuration(long j2);

    void setSessionTimeoutDuration(long j2);

    void setUserId(String str, long j2);

    void setUserProperty(String str, String str2, a aVar, boolean z, long j2);

    void unregisterOnMeasurementEventListener(id idVar);
}
