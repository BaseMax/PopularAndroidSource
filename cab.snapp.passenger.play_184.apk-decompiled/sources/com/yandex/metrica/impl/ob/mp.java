package com.yandex.metrica.impl.ob;

import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.os.EnvironmentCompat;
import com.yandex.metrica.impl.au;
import com.yandex.metrica.impl.bv;

public class mp implements mx<mn> {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<String> f6429a = new SparseArray<String>() {
        {
            put(0, null);
            put(7, "1xRTT");
            put(4, "CDMA");
            put(2, "EDGE");
            put(14, "eHRPD");
            put(5, "EVDO rev.0");
            put(6, "EVDO rev.A");
            put(12, "EVDO rev.B");
            put(1, "GPRS");
            put(8, "HSDPA");
            put(10, "HSPA");
            put(15, "HSPA+");
            put(9, "HSUPA");
            put(11, "iDen");
            put(3, "UMTS");
            put(12, "EVDO rev.B");
            if (bv.a(11)) {
                put(14, "eHRPD");
                put(13, "LTE");
                if (bv.a(13)) {
                    put(15, "HSPA+");
                }
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final mq f6430b;

    public mp(mq mqVar) {
        this.f6430b = mqVar;
    }

    /* renamed from: a */
    public mn d() {
        if (!this.f6430b.i()) {
            return null;
        }
        mn mnVar = new mn(e(), f(), c(), b(), h(), g(), null, true, 0, null);
        return mnVar;
    }

    private Integer e() {
        try {
            String substring = this.f6430b.c().getNetworkOperator().substring(0, 3);
            if (!TextUtils.isEmpty(substring)) {
                return Integer.valueOf(Integer.parseInt(substring));
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private Integer f() {
        try {
            String substring = this.f6430b.c().getNetworkOperator().substring(3);
            if (!TextUtils.isEmpty(substring)) {
                return Integer.valueOf(Integer.parseInt(substring));
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public Integer b() {
        try {
            if (!this.f6430b.j() || !au.a(this.f6430b.d())) {
                return null;
            }
            GsmCellLocation gsmCellLocation = (GsmCellLocation) this.f6430b.c().getCellLocation();
            int cid = gsmCellLocation != null ? gsmCellLocation.getCid() : 1;
            if (1 != cid) {
                return Integer.valueOf(cid);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public Integer c() {
        try {
            if (!this.f6430b.j() || !au.a(this.f6430b.d())) {
                return null;
            }
            int lac = ((GsmCellLocation) this.f6430b.c().getCellLocation()).getLac();
            if (1 != lac) {
                return Integer.valueOf(lac);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private String g() {
        try {
            return f6429a.get(this.f6430b.c().getNetworkType(), EnvironmentCompat.MEDIA_UNKNOWN);
        } catch (Exception unused) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    private String h() {
        try {
            return this.f6430b.c().getNetworkOperatorName();
        } catch (Exception unused) {
            return null;
        }
    }
}
