package com.webengage.sdk.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import java.util.ArrayList;
import java.util.HashMap;

public class ExecutorService extends as {
    private void a(Context context, Intent intent) {
        if (intent.getExtras().getInt("action_name") == 1) {
            Analytics a2 = c.a(context);
            a2.a().c();
            a2.a().b();
        }
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent) {
        Context applicationContext = getApplicationContext();
        if (intent != null) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    af afVar = (af) extras.get("topic");
                    if (afVar != null) {
                        switch (afVar) {
                            case BOOT_UP:
                                ad.a(applicationContext).a(afVar, null);
                                break;
                            case INTERNAL_EVENT:
                            case EVENT:
                                ad.a(applicationContext).a(afVar, (l) extras.getSerializable("data"));
                                return;
                            case DATA:
                                ad.a(applicationContext).a(afVar, (HashMap) extras.getSerializable("data"));
                                return;
                            case GCM_MESSAGE:
                                ad.a(applicationContext).a(afVar, extras.getBundle("data"));
                                return;
                            case DEEPLINK:
                                ad.a(applicationContext).a(afVar, (Intent) extras.getParcelable("data"));
                                return;
                            case EXCEPTION:
                                try {
                                    ad.a(applicationContext).a(afVar, (Exception) extras.getSerializable("data"));
                                } catch (Exception unused) {
                                }
                                return;
                            case RENDER:
                                ac acVar = (ac) extras.getSerializable("data");
                                if (c.a(getApplicationContext()).c().i().equals(acVar.a())) {
                                    ad.a(applicationContext).a(afVar, (ArrayList) acVar.b());
                                    return;
                                }
                                break;
                            case CONFIG_REFRESH:
                                ad.a(applicationContext).a(afVar, null);
                                return;
                            case RULE_EXECUTION:
                                ad.a(applicationContext).a(afVar, (ArrayList) extras.getSerializable("data"));
                                return;
                            case FETCH_PROFILE:
                            case JOURNEY_CONTEXT:
                            case AMPLIFY:
                                ad.a(applicationContext).a(afVar, null);
                                return;
                            case REPORT:
                                ad.a(applicationContext).a(afVar, extras.get("data"));
                                break;
                        }
                        return;
                    }
                    a(applicationContext, intent);
                }
            } catch (Exception e) {
                try {
                    ad.a(applicationContext).a(af.EXCEPTION, e);
                } catch (Exception unused2) {
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

    public /* bridge */ /* synthetic */ void onDestroy() {
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
