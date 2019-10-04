package com.bumptech.glide.f;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.bumptech.glide.load.d;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentMap<String, d> f2054a = new ConcurrentHashMap();

    public static d obtain(Context context) {
        String str;
        String packageName = context.getPackageName();
        d dVar = (d) f2054a.get(packageName);
        if (dVar != null) {
            return dVar;
        }
        PackageInfo a2 = a(context);
        if (a2 != null) {
            str = String.valueOf(a2.versionCode);
        } else {
            str = UUID.randomUUID().toString();
        }
        c cVar = new c(str);
        d putIfAbsent = f2054a.putIfAbsent(packageName, cVar);
        return putIfAbsent == null ? cVar : putIfAbsent;
    }

    private static PackageInfo a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            new StringBuilder("Cannot resolve info for").append(context.getPackageName());
            return null;
        }
    }

    private a() {
    }
}
