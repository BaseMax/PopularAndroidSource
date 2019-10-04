package com.mapbox.android.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.mapbox.android.a.a;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public final class c implements SharedPreferences.OnSharedPreferenceChangeListener, Thread.UncaughtExceptionHandler {
    public static final String MAPBOX_CRASH_REPORTER_PREFERENCES = "MapboxCrashReporterPrefs";
    public static final String MAPBOX_PREF_ENABLE_CRASH_REPORTER = "mapbox.crash.enable";

    /* renamed from: a  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f4880a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f4881b;
    private final AtomicBoolean c = new AtomicBoolean(true);
    private final String d;
    private final String e;
    private int f;

    private c(Context context, SharedPreferences sharedPreferences, String str, String str2, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("Invalid package name: " + str + " or version: " + str2);
        }
        this.f4881b = context;
        this.d = str;
        this.e = str2;
        this.f = 2;
        this.f4880a = uncaughtExceptionHandler;
        try {
            this.c.set(sharedPreferences.getBoolean(MAPBOX_PREF_ENABLE_CRASH_REPORTER, true));
        } catch (Exception unused) {
        }
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
    }

    public static void install(Context context, String str, String str2) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        Context context2 = context;
        c cVar = new c(context2, context2.getSharedPreferences(MAPBOX_CRASH_REPORTER_PREFERENCES, 0), str, str2, Thread.getDefaultUncaughtExceptionHandler());
        Thread.setDefaultUncaughtExceptionHandler(cVar);
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        if (this.c.get()) {
            ArrayList arrayList = new ArrayList(4);
            Throwable th2 = th;
            int i = 0;
            while (true) {
                boolean z = true;
                if (th2 == null) {
                    break;
                }
                i++;
                if (i < this.f) {
                    z = false;
                }
                if (z) {
                    arrayList.add(th2);
                }
                th2 = th2.getCause();
            }
            List unmodifiableList = Collections.unmodifiableList(arrayList);
            if (a(unmodifiableList)) {
                try {
                    b bVar = new b(this.f4881b, this.d, this.e);
                    bVar.e = thread;
                    bVar.d.addAll(unmodifiableList);
                    a aVar = new a((Calendar) new GregorianCalendar());
                    aVar.put("sdkIdentifier", bVar.f4879b);
                    aVar.put("sdkVersion", bVar.c);
                    aVar.put("osVersion", String.format("Android-%s", new Object[]{Build.VERSION.RELEASE}));
                    aVar.put("model", Build.MODEL);
                    aVar.put("device", Build.DEVICE);
                    aVar.put("isSilent", Boolean.toString(bVar.f));
                    aVar.put("stackTraceHash", b.b(bVar.d));
                    aVar.put("stackTrace", bVar.a(bVar.d));
                    if (bVar.e != null) {
                        aVar.put("threadDetails", String.format("tid:%s|name:%s|priority:%s", new Object[]{Long.valueOf(bVar.e.getId()), bVar.e.getName(), Integer.valueOf(bVar.e.getPriority())}));
                    }
                    aVar.put("appId", bVar.f4878a.getPackageName());
                    aVar.put("appVersion", b.a(bVar.f4878a));
                    File file = a.getFile(this.f4881b, this.d);
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    File[] listAllFiles = a.listAllFiles(file);
                    if (listAllFiles.length >= 10) {
                        a.deleteFirst(listAllFiles, new a.C0092a(), 9);
                    }
                    a.writeToFile(a.getFile(this.f4881b, String.format("%s/%s.crash", new Object[]{this.d, aVar.getDateString()})), aVar.toJson());
                } catch (Exception unused) {
                }
            }
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f4880a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (MAPBOX_PREF_ENABLE_CRASH_REPORTER.equals(str)) {
            try {
                this.c.set(sharedPreferences.getBoolean(MAPBOX_PREF_ENABLE_CRASH_REPORTER, false));
            } catch (Exception unused) {
            }
        }
    }

    private boolean a(List<Throwable> list) {
        Iterator<Throwable> it = list.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                return false;
            }
            StackTraceElement[] stackTrace = it.next().getStackTrace();
            int length = stackTrace.length;
            while (true) {
                if (i < length) {
                    if (stackTrace[i].getClassName().startsWith(this.d)) {
                        return true;
                    }
                    i++;
                }
            }
        }
    }
}
