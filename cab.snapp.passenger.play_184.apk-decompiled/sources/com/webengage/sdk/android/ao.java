package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import com.webengage.sdk.android.WebEngageConfig;
import com.webengage.sdk.android.actions.database.ReportingStrategy;
import com.webengage.sdk.android.actions.rules.RuleExecutor;
import com.webengage.sdk.android.actions.rules.h;
import com.webengage.sdk.android.q;
import java.util.Map;

class ao extends AbstractWebEngage {

    /* renamed from: a  reason: collision with root package name */
    WebEngageConfig f5508a;

    ao() {
        this.f5508a = new WebEngageConfig.Builder().build();
    }

    ao(WebEngageConfig webEngageConfig) {
        this.f5508a = webEngageConfig;
    }

    /* access modifiers changed from: protected */
    public void a(BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent) {
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent, BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void a(Location location, BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void a(q.a aVar, BroadcastReceiver broadcastReceiver) {
    }

    public Analytics analytics() {
        return c.a();
    }

    /* access modifiers changed from: protected */
    public void b(BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void b(Intent intent) {
    }

    /* access modifiers changed from: protected */
    public void b(Intent intent, BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void c(BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void c(Intent intent) {
    }

    /* access modifiers changed from: protected */
    public void c(Intent intent, BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void d(BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void e(BroadcastReceiver broadcastReceiver) {
    }

    /* access modifiers changed from: protected */
    public void f(BroadcastReceiver broadcastReceiver) {
    }

    public void filterCustomEvents(boolean z) {
    }

    public WebEngageConfig getWebEngageConfig() {
        return this.f5508a;
    }

    public void receive(Intent intent) {
    }

    public void receive(Bundle bundle) {
    }

    public void receive(Map<String, String> map) {
    }

    public RuleExecutor ruleExecutor() {
        return h.b();
    }

    public void setEventReportingStrategy(ReportingStrategy reportingStrategy) {
    }

    public void setEveryActivityIsScreen(boolean z) {
    }

    public void setLocationTracking(boolean z) {
    }

    public void setLocationTrackingStrategy(LocationTrackingStrategy locationTrackingStrategy) {
    }

    public void setLogLevel(int i) {
    }

    public void setRegistrationID(String str) {
    }

    public void setRegistrationID(String str, String str2) {
    }

    public User user() {
        return aj.a();
    }
}
