package com.yandex.metrica;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.er;
import com.yandex.metrica.impl.ob.es;
import com.yandex.metrica.impl.ob.et;
import com.yandex.metrica.impl.ob.ew;
import com.yandex.metrica.impl.ob.ey;
import com.yandex.metrica.impl.ob.ez;
import com.yandex.metrica.impl.ob.fb;
import com.yandex.metrica.impl.ob.fc;
import com.yandex.metrica.impl.ob.fd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

public class ConfigurationService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, fb> f5613a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private es f5614b;
    private ew c;

    static class a extends Binder {
        a() {
        }
    }

    public void onCreate() {
        ez ezVar;
        super.onCreate();
        String.format("[ConfigurationService:%s]", new Object[]{getPackageName()});
        this.f5614b = new es();
        Context applicationContext = getApplicationContext();
        ScheduledExecutorService a2 = this.f5614b.a();
        if (bv.a(26)) {
            ezVar = new et(applicationContext);
        } else {
            ezVar = new er(applicationContext);
        }
        ey eyVar = new ey(applicationContext, a2, ezVar);
        this.c = ew.a(getApplicationContext());
        this.c.a();
        this.f5613a.put("com.yandex.metrica.configuration.ACTION_START", new fd(getApplicationContext(), eyVar));
        Map<String, fb> map = this.f5613a;
        getApplicationContext();
        map.put("com.yandex.metrica.configuration.ACTION_SCHEDULED_START", new fc(eyVar));
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        Bundle bundle = null;
        fb fbVar = this.f5613a.get(intent == null ? null : intent.getAction());
        if (fbVar != null) {
            es esVar = this.f5614b;
            if (intent != null) {
                bundle = intent.getExtras();
            }
            esVar.a(fbVar, bundle);
        }
        return 2;
    }

    public IBinder onBind(Intent intent) {
        return new a();
    }

    public void onDestroy() {
        super.onDestroy();
        ew.a(this).b();
    }
}
