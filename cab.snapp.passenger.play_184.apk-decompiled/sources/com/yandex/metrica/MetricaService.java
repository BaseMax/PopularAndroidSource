package com.yandex.metrica;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.impl.ai;
import com.yandex.metrica.impl.aj;
import com.yandex.metrica.impl.ak;
import com.yandex.metrica.impl.av;
import com.yandex.metrica.impl.ob.h;
import com.yandex.metrica.impl.ob.j;
import com.yandex.metrica.impl.ob.nk;
import com.yandex.metrica.impl.ob.p;
import com.yandex.metrica.impl.v;
import java.util.Arrays;
import java.util.List;

public class MetricaService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private d f5621a = new d() {
        public void a(int i) {
            MetricaService.this.stopSelfResult(i);
        }
    };
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public ai f5622b;
    private final IMetricaService.Stub c = new IMetricaService.Stub() {
        @Deprecated
        public void reportEvent(String str, int i, String str2, Bundle bundle) throws RemoteException {
            MetricaService.this.f5622b.a(str, i, str2, bundle);
        }

        public void reportData(Bundle bundle) throws RemoteException {
            MetricaService.this.f5622b.a(bundle);
        }
    };

    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f5625a = Arrays.asList(new String[]{"com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER", "com.yandex.metrica.ACTION_C_BG_L"});
    }

    static class b extends Binder {
        b() {
        }
    }

    static class c extends Binder {
        c() {
        }
    }

    public interface d {
        void a(int i);
    }

    public void onCreate() {
        super.onCreate();
        v.a(getApplicationContext());
        a(getResources().getConfiguration());
        nk.a(getApplicationContext());
        this.f5622b = new aj(new ak(getApplicationContext(), this.f5621a));
        this.f5622b.a();
    }

    public void onStart(Intent intent, int i) {
        this.f5622b.a(intent, i);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        this.f5622b.a(intent, i, i2);
        return 2;
    }

    public IBinder onBind(Intent intent) {
        IBinder iBinder;
        String action = intent.getAction();
        if ("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER".equals(action)) {
            iBinder = new c();
        } else if ("com.yandex.metrica.ACTION_C_BG_L".equals(action)) {
            iBinder = new b();
        } else {
            iBinder = this.c;
        }
        this.f5622b.a(intent);
        return iBinder;
    }

    public void onRebind(Intent intent) {
        super.onRebind(intent);
        this.f5622b.b(intent);
    }

    public void onDestroy() {
        super.onDestroy();
        this.f5622b.b();
    }

    public boolean onUnbind(Intent intent) {
        this.f5622b.c(intent);
        String action = intent.getAction();
        if ("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER".equals(action)) {
            return false;
        }
        if ("com.yandex.metrica.ACTION_C_BG_L".equals(action)) {
            return true;
        }
        if (intent == null || intent.getData() == null) {
            return false;
        }
        return true;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(configuration);
    }

    private static void a(Configuration configuration) {
        h.a().b((j) new p(av.a(configuration.locale)));
    }
}
