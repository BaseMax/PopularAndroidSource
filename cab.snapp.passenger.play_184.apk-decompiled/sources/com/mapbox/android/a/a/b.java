package com.mapbox.android.a.a;

import android.content.Context;
import androidx.core.os.EnvironmentCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    final Context f4878a;

    /* renamed from: b  reason: collision with root package name */
    final String f4879b;
    final String c;
    final List<Throwable> d = new ArrayList(4);
    Thread e;
    boolean f;

    b(Context context, String str, String str2) {
        this.f4878a = context;
        this.f4879b = str;
        this.c = str2;
    }

    public static a fromJson(String str) throws IllegalArgumentException {
        try {
            return new a(str);
        } catch (org.a.b e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    /* access modifiers changed from: package-private */
    public final String a(List<Throwable> list) {
        StringBuilder sb = new StringBuilder();
        for (Throwable stackTrace : list) {
            for (StackTraceElement stackTraceElement : stackTrace.getStackTrace()) {
                if (stackTraceElement.getClassName().startsWith(this.f4879b)) {
                    sb.append(String.format(Locale.US, "%s.%s(%s:%d)", new Object[]{stackTraceElement.getClassName(), stackTraceElement.getMethodName(), stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber())}));
                    sb.append(10);
                }
            }
        }
        return sb.toString();
    }

    static String b(List<Throwable> list) {
        StringBuilder sb = new StringBuilder();
        for (Throwable stackTrace : list) {
            for (StackTraceElement stackTraceElement : stackTrace.getStackTrace()) {
                sb.append(stackTraceElement.getClassName());
                sb.append(stackTraceElement.getMethodName());
            }
        }
        return Integer.toHexString(sb.toString().hashCode());
    }

    static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }
}
