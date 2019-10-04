package c.c.a.d.d;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import c.c.a.c.h.d;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: AppShortcutManager.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f4767a;

    public a(Context context) {
        j.b(context, "context");
        this.f4767a = context;
    }

    public final void a(String str, String str2, Bitmap bitmap, Intent intent) {
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(bitmap, "icon");
        j.b(intent, "appIntent");
        if (d.a(26)) {
            Object systemService = this.f4767a.getSystemService("shortcut");
            if (systemService != null) {
                ShortcutManager shortcutManager = (ShortcutManager) systemService;
                if (shortcutManager.isRequestPinShortcutSupported()) {
                    ShortcutInfo build = new ShortcutInfo.Builder(this.f4767a, str).setShortLabel(str2).setIcon(Icon.createWithBitmap(bitmap)).setIntent(intent).build();
                    PendingIntent broadcast = PendingIntent.getBroadcast(this.f4767a, 0, shortcutManager.createShortcutResultIntent(build), 0);
                    j.a((Object) broadcast, "successCallback");
                    shortcutManager.requestPinShortcut(build, broadcast.getIntentSender());
                    return;
                }
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.content.pm.ShortcutManager");
        }
        Intent intent2 = new Intent();
        intent2.putExtra("duplicate", false);
        intent2.putExtra("android.intent.extra.shortcut.NAME", str2);
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        intent2.putExtra("android.intent.extra.shortcut.ICON", bitmap);
        intent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        this.f4767a.sendBroadcast(intent2);
    }
}
