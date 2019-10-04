package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import com.webengage.sdk.android.actions.database.ReportingStrategy;
import com.webengage.sdk.android.actions.rules.RuleExecutor;
import com.webengage.sdk.android.q;
import java.util.Map;

public abstract class AbstractWebEngage {
    /* access modifiers changed from: protected */
    public abstract void a(BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void a(Intent intent);

    /* access modifiers changed from: protected */
    public abstract void a(Intent intent, BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void a(Location location, BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void a(q.a aVar, BroadcastReceiver broadcastReceiver);

    public abstract Analytics analytics();

    /* access modifiers changed from: protected */
    public abstract void b(BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void b(Intent intent);

    /* access modifiers changed from: protected */
    public abstract void b(Intent intent, BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void c(BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void c(Intent intent);

    /* access modifiers changed from: protected */
    public abstract void c(Intent intent, BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void d(BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void e(BroadcastReceiver broadcastReceiver);

    /* access modifiers changed from: protected */
    public abstract void f(BroadcastReceiver broadcastReceiver);

    public abstract void filterCustomEvents(boolean z);

    public abstract WebEngageConfig getWebEngageConfig();

    public abstract void receive(Intent intent);

    public abstract void receive(Bundle bundle);

    public abstract void receive(Map<String, String> map);

    public abstract RuleExecutor ruleExecutor();

    public abstract void setEventReportingStrategy(ReportingStrategy reportingStrategy);

    public abstract void setEveryActivityIsScreen(boolean z);

    @Deprecated
    public abstract void setLocationTracking(boolean z);

    public abstract void setLocationTrackingStrategy(LocationTrackingStrategy locationTrackingStrategy);

    public abstract void setLogLevel(int i);

    public abstract void setRegistrationID(String str);

    @Deprecated
    public abstract void setRegistrationID(String str, String str2);

    public abstract User user();
}
