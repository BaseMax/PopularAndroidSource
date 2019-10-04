package com.yandex.metrica.impl.interact;

import android.content.Context;
import com.yandex.metrica.impl.av;
import com.yandex.metrica.impl.h;
import com.yandex.metrica.impl.ob.k;
import com.yandex.metrica.impl.ob.l;
import com.yandex.metrica.impl.ob.p;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public class DeviceInfo {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f5833a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static volatile DeviceInfo f5834b;
    public final String appPlatform;
    public final String deviceRootStatus;
    public final List<String> deviceRootStatusMarkers;
    public final String deviceType;
    public String locale;
    public final String manufacturer;
    public final String model;
    public final String osVersion;
    public final String platform;
    public final String platformDeviceId;
    public final float scaleFactor;
    public final int screenDpi;
    public final int screenHeight;
    public final int screenWidth;

    public static DeviceInfo getInstance(Context context) {
        if (f5834b == null) {
            synchronized (f5833a) {
                if (f5834b == null) {
                    f5834b = new DeviceInfo(context, h.a(context));
                }
            }
        }
        return f5834b;
    }

    DeviceInfo(Context context, h hVar) {
        this.platform = hVar.f5822a;
        this.appPlatform = hVar.f5822a;
        this.platformDeviceId = hVar.b(context);
        this.manufacturer = hVar.f5823b;
        this.model = hVar.c;
        this.osVersion = hVar.d;
        this.screenWidth = hVar.f.f5825a;
        this.screenHeight = hVar.f.f5826b;
        this.screenDpi = hVar.f.c;
        this.scaleFactor = hVar.f.d;
        this.deviceType = hVar.g;
        this.deviceRootStatus = hVar.h;
        this.deviceRootStatusMarkers = new ArrayList(hVar.i);
        this.locale = av.a(context.getResources().getConfiguration().locale);
        com.yandex.metrica.impl.ob.h.a().a(this, p.class, l.a(new k<p>() {
            public void a(p pVar) {
                DeviceInfo.this.locale = pVar.f6494a;
            }
        }).a());
    }
}
