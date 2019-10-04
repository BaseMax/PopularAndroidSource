package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class ex {

    /* renamed from: a  reason: collision with root package name */
    private Context f5995a;

    /* renamed from: b  reason: collision with root package name */
    private ServiceConnection f5996b;

    public ex(Context context) {
        this(context, new ServiceConnection() {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            }

            public void onServiceDisconnected(ComponentName componentName) {
            }
        });
    }

    public List<ResolveInfo> a(Context context) {
        try {
            return context.getPackageManager().queryIntentServices(b(context), 128);
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Intent a2 = a(this.f5995a, str);
            if (a2 != null) {
                this.f5995a.bindService(a2, this.f5996b, 1);
            }
        }
    }

    public void a() {
        this.f5995a.unbindService(this.f5996b);
    }

    private static Intent a(Context context, String str) {
        try {
            ResolveInfo resolveService = context.getPackageManager().resolveService(b(context).setPackage(str), 0);
            if (resolveService != null) {
                return new Intent().setClassName(resolveService.serviceInfo.packageName, resolveService.serviceInfo.name).setAction("com.yandex.metrica.ACTION_C_BG_L");
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Intent b(Context context) {
        Intent intent = new Intent("com.yandex.metrica.IMetricaService", Uri.parse("metrica://" + context.getPackageName()));
        if (Build.VERSION.SDK_INT >= 12) {
            intent.addFlags(32);
        }
        return intent;
    }

    ex(Context context, ServiceConnection serviceConnection) {
        this.f5995a = context;
        this.f5996b = serviceConnection;
    }
}
