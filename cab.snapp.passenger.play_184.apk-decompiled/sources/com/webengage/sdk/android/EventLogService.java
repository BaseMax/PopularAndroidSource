package com.webengage.sdk.android;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.webengage.sdk.android.actions.database.r;

public class EventLogService extends as {

    /* renamed from: com.webengage.sdk.android.EventLogService$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5315a = new int[af.values().length];

        static {
            try {
                f5315a[af.SYNC_TO_SERVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent) {
        if (intent != null) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    af afVar = (af) extras.get("topic");
                    if (afVar == null) {
                        return;
                    }
                    if (AnonymousClass1.f5315a[afVar.ordinal()] == 1) {
                        ad.a(getApplicationContext()).a(afVar, extras.get("data"));
                    }
                }
            } catch (Exception e) {
                try {
                    ad.a(getApplicationContext()).a(af.EXCEPTION, e);
                } catch (Exception unused) {
                }
            }
        }
    }

    public /* bridge */ /* synthetic */ IBinder onBind(Intent intent) {
        return super.onBind(intent);
    }

    public /* bridge */ /* synthetic */ void onCreate() {
        super.onCreate();
    }

    public void onDestroy() {
        r.b(true);
        super.onDestroy();
    }

    public /* bridge */ /* synthetic */ void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    public /* bridge */ /* synthetic */ int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }

    public /* bridge */ /* synthetic */ boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
