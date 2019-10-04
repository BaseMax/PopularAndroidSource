package com.mapbox.android.telemetry.crash;

import android.content.SharedPreferences;
import com.google.gson.f;
import com.google.gson.p;
import com.mapbox.android.a.a.c;
import com.mapbox.android.telemetry.CrashEvent;
import com.mapbox.android.telemetry.aj;
import com.mapbox.android.telemetry.x;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

final class a {

    /* renamed from: a  reason: collision with root package name */
    final x f4966a;

    /* renamed from: b  reason: collision with root package name */
    final HashSet<String> f4967b = new HashSet<>();
    File[] c;
    int d;
    boolean e;
    private final SharedPreferences f;
    private final HashMap<CrashEvent, File> g = new HashMap<>();

    a(SharedPreferences sharedPreferences, x xVar, File[] fileArr) {
        this.f = sharedPreferences;
        this.f4966a = xVar;
        this.c = fileArr;
        this.d = 0;
        this.e = false;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        try {
            return this.f.getBoolean(c.MAPBOX_PREF_ENABLE_CRASH_REPORTER, true);
        } catch (Exception unused) {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        return this.d < this.c.length;
    }

    /* access modifiers changed from: package-private */
    public final CrashEvent c() {
        if (b()) {
            try {
                File file = this.c[this.d];
                CrashEvent a2 = a(com.mapbox.android.a.a.readFromFile(file));
                if (a2.isValid()) {
                    this.g.put(a2, file);
                }
                this.d++;
                return a2;
            } catch (FileNotFoundException e2) {
                throw new IllegalStateException("File cannot be read: " + e2.toString());
            } catch (Throwable th) {
                this.d++;
                throw th;
            }
        } else {
            throw new IllegalStateException("No more events can be read");
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean a(CrashEvent crashEvent) {
        File file = this.g.get(crashEvent);
        return file != null && file.delete();
    }

    private static CrashEvent a(String str) {
        try {
            return (CrashEvent) new f().create().fromJson(str, CrashEvent.class);
        } catch (p unused) {
            return new CrashEvent(null, null);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean a(CrashEvent crashEvent, final AtomicBoolean atomicBoolean, final CountDownLatch countDownLatch) {
        this.f4966a.addTelemetryListener(new aj() {
            public final void onHttpResponse(boolean z, int i) {
                atomicBoolean.set(z);
                countDownLatch.countDown();
                a.this.f4966a.removeTelemetryListener(this);
            }

            public final void onHttpFailure(String str) {
                countDownLatch.countDown();
                a.this.f4966a.removeTelemetryListener(this);
            }
        });
        this.f4966a.push(crashEvent);
        try {
            countDownLatch.await(10, TimeUnit.SECONDS);
            if (atomicBoolean.get()) {
                this.f4967b.add(crashEvent.getHash());
            }
            return atomicBoolean.get();
        } catch (InterruptedException unused) {
            if (atomicBoolean.get()) {
                this.f4967b.add(crashEvent.getHash());
            }
            return false;
        } catch (Throwable th) {
            if (atomicBoolean.get()) {
                this.f4967b.add(crashEvent.getHash());
            }
            throw th;
        }
    }
}
