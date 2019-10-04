package com.yandex.metrica;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.adjust.sdk.Constants;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.by;
import com.yandex.metrica.impl.ob.nk;
import java.util.HashSet;
import java.util.Set;

public final class MetricaEventHandler extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<BroadcastReceiver> f5620a = new HashSet();

    static void a(BroadcastReceiver... broadcastReceiverArr) {
        for (BroadcastReceiver add : broadcastReceiverArr) {
            f5620a.add(add);
        }
    }

    public final void onReceive(Context context, Intent intent) {
        if ("com.android.vending.INSTALL_REFERRER".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra(Constants.REFERRER);
            if (!bt.a(stringExtra)) {
                by.b(context).a(stringExtra);
            }
        }
        for (BroadcastReceiver next : f5620a) {
            String format = String.format("Sending referrer to %s", new Object[]{next.getClass().getName()});
            if (nk.f().b()) {
                nk.f().a(format);
            }
            next.onReceive(context, intent);
        }
    }
}
