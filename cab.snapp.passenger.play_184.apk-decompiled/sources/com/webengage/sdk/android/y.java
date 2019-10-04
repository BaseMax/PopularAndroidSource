package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import com.webengage.sdk.android.actions.database.ReportingStrategy;
import com.webengage.sdk.android.actions.rules.RuleExecutor;
import com.webengage.sdk.android.actions.rules.h;
import com.webengage.sdk.android.q;
import com.webengage.sdk.android.utils.k;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

class y extends AbstractWebEngage {

    /* renamed from: a  reason: collision with root package name */
    private WebEngageConfig f5606a = null;

    /* renamed from: b  reason: collision with root package name */
    private Queue<ae> f5607b = null;

    y(WebEngageConfig webEngageConfig) {
        this.f5606a = webEngageConfig;
        this.f5607b = new LinkedList();
    }

    /* access modifiers changed from: protected */
    public Queue<ae> a() {
        return this.f5607b;
    }

    /* access modifiers changed from: protected */
    public void a(BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(9, null));
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent) {
        this.f5607b.add(new ap(6, intent));
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent, BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(7, intent, null));
    }

    /* access modifiers changed from: protected */
    public void a(Location location, BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(8, location, null));
    }

    /* access modifiers changed from: protected */
    public void a(q.a aVar, BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(15, aVar, null));
    }

    public Analytics analytics() {
        return c.a(this.f5607b);
    }

    /* access modifiers changed from: protected */
    public void b(BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(10, null));
    }

    /* access modifiers changed from: protected */
    public void b(Intent intent) {
        this.f5607b.add(new ap(17, intent, null));
    }

    /* access modifiers changed from: protected */
    public void b(Intent intent, BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(12, intent, null));
    }

    /* access modifiers changed from: protected */
    public void c(BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(11, null));
    }

    /* access modifiers changed from: protected */
    public void c(Intent intent) {
        this.f5607b.add(new ap(14, intent));
    }

    /* access modifiers changed from: protected */
    public void c(Intent intent, BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(13, intent, null));
    }

    /* access modifiers changed from: protected */
    public void d(BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(16, null));
    }

    /* access modifiers changed from: protected */
    public void e(BroadcastReceiver broadcastReceiver) {
        this.f5607b.add(new ap(20, null));
    }

    /* access modifiers changed from: protected */
    public void f(BroadcastReceiver broadcastReceiver) {
    }

    public void filterCustomEvents(boolean z) {
        this.f5607b.add(new ap(3, Boolean.valueOf(z)));
    }

    public WebEngageConfig getWebEngageConfig() {
        return this.f5606a;
    }

    public void receive(Intent intent) {
        if (intent == null) {
            Logger.e("WebEngage", "Intent is null");
        } else {
            a(intent);
        }
    }

    public void receive(Bundle bundle) {
        if (bundle == null) {
            Logger.e("WebEngage", "Push bundle is null");
            return;
        }
        Intent intent = new Intent();
        intent.putExtras(bundle);
        receive(intent);
    }

    public void receive(Map<String, String> map) {
        if (map == null) {
            Logger.e("WebEngage", "Push data is null");
            return;
        }
        Bundle b2 = k.b(map);
        if (b2 != null) {
            receive(b2);
        }
    }

    public RuleExecutor ruleExecutor() {
        return h.a();
    }

    public void setEventReportingStrategy(ReportingStrategy reportingStrategy) {
        this.f5607b.add(new ap(2, reportingStrategy));
    }

    public void setEveryActivityIsScreen(boolean z) {
        this.f5607b.add(new ap(4, Boolean.valueOf(z)));
    }

    public void setLocationTracking(boolean z) {
        this.f5607b.add(new ap(0, Boolean.valueOf(z)));
    }

    public void setLocationTrackingStrategy(LocationTrackingStrategy locationTrackingStrategy) {
        this.f5607b.add(new ap(19, locationTrackingStrategy));
    }

    public void setLogLevel(int i) {
        this.f5607b.add(new ap(1, Integer.valueOf(i)));
    }

    public void setRegistrationID(String str) {
        setRegistrationID(str, null);
    }

    public void setRegistrationID(String str, String str2) {
        this.f5607b.add(new ap(5, str, str2));
    }

    public User user() {
        return aj.a(this.f5607b);
    }
}
