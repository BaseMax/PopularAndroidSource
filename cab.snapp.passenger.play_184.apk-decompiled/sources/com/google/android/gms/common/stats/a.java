package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.google.android.gms.common.util.c;
import java.util.Collections;
import java.util.List;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2998a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f2999b;
    private static boolean c = false;
    private final List<String> d = Collections.EMPTY_LIST;
    private final List<String> e = Collections.EMPTY_LIST;
    private final List<String> f = Collections.EMPTY_LIST;
    private final List<String> g = Collections.EMPTY_LIST;

    private a() {
    }

    public static a zzamc() {
        if (f2999b == null) {
            synchronized (f2998a) {
                if (f2999b == null) {
                    f2999b = new a();
                }
            }
        }
        return f2999b;
    }

    public final boolean zza(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zza(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    public final boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        ComponentName component = intent.getComponent();
        if (component == null ? false : c.zzz(context, component.getPackageName())) {
            return false;
        }
        return context.bindService(intent, serviceConnection, i);
    }
}
