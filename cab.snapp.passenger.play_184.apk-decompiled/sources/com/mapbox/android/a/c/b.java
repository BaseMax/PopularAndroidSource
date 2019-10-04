package com.mapbox.android.a.c;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f4897a = 0;

    /* renamed from: b  reason: collision with root package name */
    private a f4898b;

    public b(a aVar) {
        this.f4898b = aVar;
    }

    public final a getListener() {
        return this.f4898b;
    }

    public final void setListener(a aVar) {
        this.f4898b = aVar;
    }

    private static boolean a(Context context, String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }

    public static boolean areRuntimePermissionsRequired() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 0 && this.f4898b != null) {
            boolean z = false;
            if (iArr.length > 0 && iArr[0] == 0) {
                z = true;
            }
            this.f4898b.onPermissionResult(z);
        }
    }

    public static boolean areLocationPermissionsGranted(Context context) {
        return a(context, "android.permission.ACCESS_COARSE_LOCATION") || a(context, "android.permission.ACCESS_FINE_LOCATION");
    }

    public final void requestLocationPermissions(Activity activity) {
        String[] strArr = {"android.permission.ACCESS_FINE_LOCATION"};
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i <= 0; i++) {
            String str = strArr[0];
            if (ActivityCompat.shouldShowRequestPermissionRationale(activity, str)) {
                arrayList.add(str);
            }
        }
        if (this.f4898b != null && arrayList.size() > 0) {
            this.f4898b.onExplanationNeeded(arrayList);
        }
        ActivityCompat.requestPermissions(activity, strArr, 0);
    }
}
