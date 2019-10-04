package com.yandex.metrica.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.yandex.metrica.impl.ob.lu;
import com.yandex.metrica.impl.ob.ma;
import com.yandex.metrica.impl.ob.ne;
import com.yandex.metrica.impl.ob.no;
import com.yandex.metrica.impl.ob.nr;
import java.util.Map;

public class k extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    private a f5837a;

    interface a {
        void a(int i, Bundle bundle);
    }

    public k(Handler handler) {
        super(handler);
    }

    /* access modifiers changed from: package-private */
    public void a(a aVar) {
        this.f5837a = aVar;
    }

    /* access modifiers changed from: protected */
    public void onReceiveResult(int i, Bundle bundle) {
        a aVar = this.f5837a;
        if (aVar != null) {
            aVar.a(i, bundle);
        }
    }

    public static void a(ResultReceiver resultReceiver, ma maVar) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putString("Uuid", maVar.f6416a);
            bundle.putString("DeviceId", maVar.f6417b);
            bundle.putString("DeviceIdHash", maVar.c);
            bundle.putString("AdUrlGet", maVar.e);
            bundle.putString("AdUrlReport", maVar.f);
            bundle.putLong("ServerTimeOffset", nr.a());
            bundle.putString("Clids", ne.a((Map) no.a(maVar.k)));
            resultReceiver.send(1, bundle);
        }
    }

    public static void a(ResultReceiver resultReceiver, lu luVar) {
        if (resultReceiver != null) {
            resultReceiver.send(2, luVar.a(new Bundle()));
        }
    }
}
