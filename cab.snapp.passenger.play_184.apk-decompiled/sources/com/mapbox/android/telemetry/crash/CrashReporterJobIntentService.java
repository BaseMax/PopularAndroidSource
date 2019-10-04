package com.mapbox.android.telemetry.crash;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.JobIntentService;
import com.mapbox.android.a.a;
import com.mapbox.android.a.a.c;
import com.mapbox.android.telemetry.CrashEvent;
import com.mapbox.android.telemetry.x;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public final class CrashReporterJobIntentService extends JobIntentService {
    static void a(Context context) {
        Class<CrashReporterJobIntentService> cls = CrashReporterJobIntentService.class;
        enqueueWork(context, (Class) cls, 666, new Intent(context, cls));
    }

    public final void onHandleWork(Intent intent) {
        boolean z;
        try {
            File file = a.getFile(getApplicationContext(), "com.mapbox.android.telemetry");
            if (file.exists()) {
                Context applicationContext = getApplicationContext();
                a aVar = new a(applicationContext.getSharedPreferences(c.MAPBOX_CRASH_REPORTER_PREFERENCES, 0), new x(applicationContext, "", String.format("%s/%s", new Object[]{"mapbox-android-crash", "4.5.1"})), new File[0]);
                aVar.d = 0;
                aVar.c = a.listAllFiles(file);
                Arrays.sort(aVar.c, new a.C0092a());
                if (aVar.a()) {
                    while (aVar.b()) {
                        CrashEvent c = aVar.c();
                        if (aVar.f4967b.contains(c.getHash())) {
                            new StringBuilder("Skip duplicate crash in this batch: ").append(c.getHash());
                            aVar.a(c);
                        } else {
                            if (!c.isValid()) {
                                z = false;
                            } else {
                                z = aVar.a(c, new AtomicBoolean(aVar.e), new CountDownLatch(1));
                            }
                            if (z) {
                                aVar.a(c);
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
