package com.yandex.metrica.impl.ob;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.yandex.metrica.ConfigurationService;

public class er implements ez {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5979a;

    /* renamed from: b  reason: collision with root package name */
    private final AlarmManager f5980b;
    private nq c;

    public er(Context context) {
        this(context, (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM), new np());
    }

    public void a(long j) {
        this.f5980b.setRepeating(3, this.c.c(), j, a(this.f5979a));
    }

    public void a() {
        this.f5980b.cancel(a(this.f5979a));
    }

    er(Context context, AlarmManager alarmManager, nq nqVar) {
        this.f5979a = context;
        this.f5980b = alarmManager;
        this.c = nqVar;
    }

    private static PendingIntent a(Context context) {
        return PendingIntent.getService(context, 7695435, new Intent(context, ConfigurationService.class).setAction("com.yandex.metrica.configuration.ACTION_SCHEDULED_START"), 134217728);
    }
}
