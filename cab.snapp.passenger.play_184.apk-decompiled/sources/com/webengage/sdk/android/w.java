package com.webengage.sdk.android;

import android.app.Activity;
import android.content.Intent;
import com.webengage.sdk.android.Analytics;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Queue;

class w extends Analytics {

    /* renamed from: a  reason: collision with root package name */
    Queue<ae> f5604a;

    w(Queue<ae> queue) {
        this.f5604a = queue;
    }

    /* access modifiers changed from: protected */
    public aa a() {
        return null;
    }

    /* access modifiers changed from: protected */
    public void a(Object obj) {
    }

    /* access modifiers changed from: protected */
    public z b() {
        return null;
    }

    /* access modifiers changed from: protected */
    public void b(Object obj) {
    }

    /* access modifiers changed from: protected */
    public f c() {
        return null;
    }

    public WeakReference<Activity> getActivity() {
        return null;
    }

    public void installed(Intent intent) {
        this.f5604a.add(new g(5, intent));
    }

    public void screenNavigated(String str) {
        screenNavigated(str, null);
    }

    public void screenNavigated(String str, Map<String, ? extends Object> map) {
        this.f5604a.add(new g(3, str, map));
    }

    public void setScreenData(Map<String, ? extends Object> map) {
        this.f5604a.add(new g(4, map));
    }

    public void start(Activity activity) {
        this.f5604a.add(new g(1, new WeakReference(activity)));
    }

    public void stop(Activity activity) {
        this.f5604a.add(new g(2, new WeakReference(activity)));
    }

    public void track(String str) {
        track(str, null, null);
    }

    public void track(String str, Analytics.Options options) {
        track(str, null, options);
    }

    public void track(String str, Map<String, ? extends Object> map) {
        track(str, map, null);
    }

    public void track(String str, Map<String, ?> map, Analytics.Options options) {
        this.f5604a.add(new g(0, str, map, options));
    }
}
