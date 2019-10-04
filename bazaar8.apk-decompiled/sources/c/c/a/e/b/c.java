package c.c.a.e.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import c.c.a.c.b.b;
import com.farsitel.bazaar.common.util.Base64;
import com.farsitel.bazaar.data.entity.Language;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: DeviceInfoDataSource.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4877a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f4878b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final h.c f4879c = d.a(DeviceInfoDataSource$width$2.f12202a);

    /* renamed from: d  reason: collision with root package name */
    public final h.c f4880d = d.a(DeviceInfoDataSource$height$2.f12201a);

    /* renamed from: e  reason: collision with root package name */
    public final String f4881e = "8.3.7";

    /* renamed from: f  reason: collision with root package name */
    public final long f4882f = ((long) 800307);

    /* renamed from: g  reason: collision with root package name */
    public final Language f4883g = Language.Companion.fromLocale(this.r.n());

    /* renamed from: h  reason: collision with root package name */
    public final int f4884h = Build.VERSION.SDK_INT;

    /* renamed from: i  reason: collision with root package name */
    public final String f4885i;

    /* renamed from: j  reason: collision with root package name */
    public final String f4886j;

    /* renamed from: k  reason: collision with root package name */
    public final String f4887k;

    /* renamed from: l  reason: collision with root package name */
    public final h.c f4888l;
    public final h.c m;
    public final h.c n;
    public final h.c o;
    public final h.c p;
    public final Context q;
    public final c.c.a.e.d.u.a r;

    /* compiled from: DeviceInfoDataSource.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(c.class), "width", "getWidth()I");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(c.class), "height", "getHeight()I");
        k.a((PropertyReference1) propertyReference1Impl2);
        PropertyReference1Impl propertyReference1Impl3 = new PropertyReference1Impl(k.a(c.class), "simNetworkDetails", "getSimNetworkDetails()[I");
        k.a((PropertyReference1) propertyReference1Impl3);
        PropertyReference1Impl propertyReference1Impl4 = new PropertyReference1Impl(k.a(c.class), "simCardMcc", "getSimCardMcc()I");
        k.a((PropertyReference1) propertyReference1Impl4);
        PropertyReference1Impl propertyReference1Impl5 = new PropertyReference1Impl(k.a(c.class), "simCardMnc", "getSimCardMnc()I");
        k.a((PropertyReference1) propertyReference1Impl5);
        PropertyReference1Impl propertyReference1Impl6 = new PropertyReference1Impl(k.a(c.class), "cpu", "getCpu()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl6);
        PropertyReference1Impl propertyReference1Impl7 = new PropertyReference1Impl(k.a(c.class), "dpi", "getDpi()I");
        k.a((PropertyReference1) propertyReference1Impl7);
        f4877a = new i[]{propertyReference1Impl, propertyReference1Impl2, propertyReference1Impl3, propertyReference1Impl4, propertyReference1Impl5, propertyReference1Impl6, propertyReference1Impl7};
    }

    public c(Context context, c.c.a.e.d.u.a aVar) {
        j.b(context, "context");
        j.b(aVar, "settingsRepository");
        this.q = context;
        this.r = aVar;
        this.f4885i = Build.MODEL == null ? "UNKNOWN" : Build.MODEL;
        this.f4886j = Build.PRODUCT == null ? "UNKNOWN" : Build.PRODUCT;
        this.f4887k = Build.MANUFACTURER == null ? "UNKNOWN" : Build.MANUFACTURER;
        this.f4888l = d.a(new DeviceInfoDataSource$simNetworkDetails$2(this));
        this.m = d.a(new DeviceInfoDataSource$simCardMcc$2(this));
        this.n = d.a(new DeviceInfoDataSource$simCardMnc$2(this));
        this.o = d.a(DeviceInfoDataSource$cpu$2.f12199a);
        this.p = d.a(new DeviceInfoDataSource$dpi$2(this));
    }

    public final long c() {
        return this.f4882f;
    }

    public final int d() {
        Object systemService = this.q.getSystemService("phone");
        if (systemService != null) {
            try {
                CellLocation cellLocation = ((TelephonyManager) systemService).getCellLocation();
                if (!(cellLocation instanceof GsmCellLocation)) {
                    cellLocation = null;
                }
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                if (gsmCellLocation != null) {
                    return gsmCellLocation.getCid();
                }
                return 0;
            } catch (SecurityException e2) {
                SecurityException securityException = e2;
                c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
                c.c.a.c.c.a.c(aVar, "cannot get cid " + securityException, securityException, null, 4, null);
                return 0;
            } catch (TypeCastException e3) {
                c.c.a.c.c.a.f4699b.a((Throwable) e3);
                return 0;
            }
        } else {
            throw new TypeCastException("null cannot be cast to non-null type android.telephony.TelephonyManager");
        }
    }

    public final String e() {
        h.c cVar = this.o;
        i iVar = f4877a[5];
        return (String) cVar.getValue();
    }

    public final int f() {
        h.c cVar = this.p;
        i iVar = f4877a[6];
        return ((Number) cVar.getValue()).intValue();
    }

    public final int g() {
        h.c cVar = this.f4880d;
        i iVar = f4877a[1];
        return ((Number) cVar.getValue()).intValue();
    }

    public final int h() {
        Object systemService = this.q.getSystemService("phone");
        if (systemService != null) {
            try {
                CellLocation cellLocation = ((TelephonyManager) systemService).getCellLocation();
                if (!(cellLocation instanceof GsmCellLocation)) {
                    cellLocation = null;
                }
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                if (gsmCellLocation != null) {
                    return gsmCellLocation.getLac();
                }
                return 0;
            } catch (SecurityException e2) {
                SecurityException securityException = e2;
                c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
                c.c.a.c.c.a.c(aVar, "cannot get lac " + securityException, securityException, null, 4, null);
                return 0;
            } catch (TypeCastException e3) {
                c.c.a.c.c.a.f4699b.a((Throwable) e3);
                return 0;
            }
        } else {
            throw new TypeCastException("null cannot be cast to non-null type android.telephony.TelephonyManager");
        }
    }

    public final Language i() {
        return this.f4883g;
    }

    public final String j() {
        return this.f4887k;
    }

    public final String k() {
        return this.f4885i;
    }

    public final String l() {
        return b.a(this.q);
    }

    public final String m() {
        return b.b(this.q);
    }

    public final String n() {
        return this.f4886j;
    }

    public final int o() {
        return this.f4884h;
    }

    public final int p() {
        h.c cVar = this.m;
        i iVar = f4877a[3];
        return ((Number) cVar.getValue()).intValue();
    }

    public final int q() {
        h.c cVar = this.n;
        i iVar = f4877a[4];
        return ((Number) cVar.getValue()).intValue();
    }

    public final int[] r() {
        h.c cVar = this.f4888l;
        i iVar = f4877a[2];
        return (int[]) cVar.getValue();
    }

    public final int s() {
        h.c cVar = this.f4879c;
        i iVar = f4877a[0];
        return ((Number) cVar.getValue()).intValue();
    }

    public static /* synthetic */ String a(c cVar, h.f.a.a aVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            aVar = DeviceInfoDataSource$getClientId$1.f12200c;
        }
        return cVar.a((h.f.a.a<UUID>) aVar);
    }

    public final String b() {
        return this.f4881e;
    }

    public final String a(h.f.a.a<UUID> aVar) {
        j.b(aVar, "randomUuidGenerator");
        String i2 = this.r.i();
        if (!(i2.length() == 0)) {
            return i2;
        }
        String a2 = Base64.a(c.c.a.c.h.i.a(aVar.invoke()), false);
        j.a((Object) a2, "Base64.encodeWebSafe(uuidArr, false)");
        if (a2.length() > 31) {
            if (a2 != null) {
                a2 = a2.substring(0, 31);
                j.a((Object) a2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            } else {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
        }
        String str = a2;
        this.r.d(str);
        return str;
    }

    @SuppressLint({"HardwareIds"})
    public final String a() {
        String string = Settings.Secure.getString(this.q.getContentResolver(), "android_id");
        j.a((Object) string, "Settings.Secure.getStrin…ttings.Secure.ANDROID_ID)");
        return string;
    }
}
