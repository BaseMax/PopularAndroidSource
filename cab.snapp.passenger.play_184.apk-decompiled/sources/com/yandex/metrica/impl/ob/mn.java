package com.yandex.metrica.impl.ob;

import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrength;
import androidx.appcompat.widget.ActivityChooserView;

public final class mn {

    /* renamed from: a  reason: collision with root package name */
    private Integer f6425a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f6426b;
    private final Integer c;
    private final Integer d;
    private final Integer e;
    private final String f;
    private final String g;
    private final boolean h;
    private final int i;
    private final Integer j;

    static class a extends b {
        a() {
        }

        /* access modifiers changed from: package-private */
        public mn a(CellInfo cellInfo) {
            CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
            return a(null, null, cellInfoCdma.getCellSignalStrength(), null, null, cellInfoCdma.isRegistered(), 2, null);
        }
    }

    static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        static final Integer f6427a;

        /* renamed from: b  reason: collision with root package name */
        static final Integer f6428b;
        static final Integer c;
        static final Integer d;
        static final Integer e;

        /* access modifiers changed from: package-private */
        public abstract mn a(CellInfo cellInfo);

        b() {
        }

        static {
            Integer valueOf = Integer.valueOf(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            f6427a = valueOf;
            f6428b = valueOf;
            c = valueOf;
            d = valueOf;
            e = valueOf;
        }

        /* access modifiers changed from: protected */
        public mn a(Integer num, Integer num2, CellSignalStrength cellSignalStrength, Integer num3, Integer num4, boolean z, int i, Integer num5) {
            Integer num6;
            Integer num7;
            Integer num8;
            Integer num9;
            Integer num10 = num;
            Integer num11 = num2;
            Integer num12 = num3;
            Integer num13 = num4;
            Integer num14 = num5;
            if (num10 != null) {
                if (num10 == f6427a) {
                    num10 = null;
                }
                num6 = num10;
            } else {
                num6 = null;
            }
            if (num11 != null) {
                if (num11 == f6428b) {
                    num11 = null;
                }
                num7 = num11;
            } else {
                num7 = null;
            }
            Integer valueOf = cellSignalStrength != null ? Integer.valueOf(cellSignalStrength.getDbm()) : null;
            if (num13 != null) {
                if (num13 == c) {
                    num13 = null;
                }
                num8 = num13;
            } else {
                num8 = null;
            }
            if (num12 != null) {
                if (num12 == d) {
                    num12 = null;
                }
                num9 = num12;
            } else {
                num9 = null;
            }
            mn mnVar = new mn(num8, num9, num7, num6, null, null, valueOf, z, i, (num14 == null || num14 == e) ? null : num14);
            return mnVar;
        }
    }

    static class c extends b {
        c() {
        }

        /* access modifiers changed from: package-private */
        public mn a(CellInfo cellInfo) {
            CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
            CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
            return a(Integer.valueOf(cellIdentity.getCid()), Integer.valueOf(cellIdentity.getLac()), cellInfoGsm.getCellSignalStrength(), Integer.valueOf(cellIdentity.getMnc()), Integer.valueOf(cellIdentity.getMcc()), cellInfoGsm.isRegistered(), 1, null);
        }
    }

    static class d extends b {
        d() {
        }

        /* access modifiers changed from: package-private */
        public mn a(CellInfo cellInfo) {
            CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
            CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
            return a(Integer.valueOf(cellIdentity.getCi()), Integer.valueOf(cellIdentity.getTac()), cellInfoLte.getCellSignalStrength(), Integer.valueOf(cellIdentity.getMnc()), Integer.valueOf(cellIdentity.getMcc()), cellInfoLte.isRegistered(), 4, Integer.valueOf(cellIdentity.getPci()));
        }
    }

    static class e extends b {
        e() {
        }

        /* access modifiers changed from: package-private */
        public mn a(CellInfo cellInfo) {
            CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
            CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
            return a(Integer.valueOf(cellIdentity.getCid()), Integer.valueOf(cellIdentity.getLac()), cellInfoWcdma.getCellSignalStrength(), Integer.valueOf(cellIdentity.getMnc()), Integer.valueOf(cellIdentity.getMcc()), cellInfoWcdma.isRegistered(), 3, Integer.valueOf(cellIdentity.getPsc()));
        }
    }

    public mn(Integer num, Integer num2, Integer num3, Integer num4, String str, String str2, Integer num5, boolean z, int i2, Integer num6) {
        this.f6426b = num;
        this.c = num2;
        this.d = num3;
        this.e = num4;
        this.f = str;
        this.g = str2;
        this.f6425a = num5;
        this.h = z;
        this.i = i2;
        this.j = num6;
    }

    public final Integer a() {
        return this.f6425a;
    }

    public final Integer b() {
        return this.f6426b;
    }

    public final Integer c() {
        return this.c;
    }

    public final Integer d() {
        return this.d;
    }

    public final Integer e() {
        return this.e;
    }

    public final String f() {
        return this.f;
    }

    public final String g() {
        return this.g;
    }

    public final boolean h() {
        return this.h;
    }

    public final void a(Integer num) {
        this.f6425a = num;
    }

    public final int i() {
        return this.i;
    }

    public final Integer j() {
        return this.j;
    }

    public final String toString() {
        return "CellDescription{mSignalStrength=" + this.f6425a + ", mMobileCountryCode=" + this.f6426b + ", mMobileNetworkCode=" + this.c + ", mLocationAreaCode=" + this.d + ", mCellId=" + this.e + ", mOperatorName='" + this.f + '\'' + ", mNetworkType='" + this.g + '\'' + ", mConnected=" + this.h + ", mCellType=" + this.i + ", mPci=" + this.j + '}';
    }
}
