package com.yandex.metrica.impl;

import android.text.TextUtils;
import com.yandex.metrica.PreloadInfo;
import com.yandex.metrica.impl.ob.nk;
import java.util.Map;
import org.a.b;
import org.a.c;

public class aw {

    /* renamed from: a  reason: collision with root package name */
    private PreloadInfo f5727a;

    public aw(PreloadInfo preloadInfo) {
        if (preloadInfo != null) {
            if (!TextUtils.isEmpty(preloadInfo.getTrackingId())) {
                this.f5727a = preloadInfo;
            } else if (nk.f().b()) {
                nk.f().c("Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped.");
            }
        }
    }

    /* access modifiers changed from: package-private */
    public String a() {
        if (this.f5727a == null) {
            return "";
        }
        c cVar = new c();
        try {
            cVar.put("preloadInfo", (Object) b());
        } catch (b unused) {
        }
        return cVar.toString();
    }

    public c b() {
        if (this.f5727a == null) {
            return null;
        }
        c cVar = new c();
        try {
            cVar.put("trackingId", (Object) this.f5727a.getTrackingId());
            if (!this.f5727a.getAdditionalParams().isEmpty()) {
                cVar.put("additionalParams", (Object) new c((Map<?, ?>) this.f5727a.getAdditionalParams()));
            }
        } catch (b unused) {
        }
        return cVar;
    }
}
