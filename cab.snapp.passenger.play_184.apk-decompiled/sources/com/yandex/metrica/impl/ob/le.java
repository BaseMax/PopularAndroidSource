package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.lc;
import java.util.Collection;
import java.util.List;

public class le extends lc {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6365a;

    /* renamed from: b  reason: collision with root package name */
    private Location f6366b;
    private boolean c;
    private boolean d;
    private CounterConfiguration.a e;
    private int f;
    private int g;
    private boolean h;
    private int i;
    private boolean j;
    /* access modifiers changed from: private */
    public String k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private String p;
    private List<String> q;
    /* access modifiers changed from: private */
    public boolean r;
    private int s;

    public static final class a extends kz.a {

        /* renamed from: a  reason: collision with root package name */
        public final String f6367a;
        public final Boolean e;
        public final Location f;
        public final Boolean g;
        public final Boolean h;
        public final Integer i;
        public final Integer j;
        public final Integer k;
        public final Boolean l;
        public final Boolean m;
        public final CounterConfiguration.a n;

        public a(String str, String str2, String str3, String str4, Boolean bool, Location location, Boolean bool2, Boolean bool3, CounterConfiguration.a aVar, Integer num, Integer num2, Integer num3, Boolean bool4, Boolean bool5) {
            super(str, str2, str3);
            this.f6367a = str4;
            this.e = bool;
            this.f = location;
            this.g = bool2;
            this.h = bool3;
            this.n = aVar;
            this.i = num;
            this.j = num2;
            this.k = num3;
            this.l = bool4;
            this.m = bool5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
                return false;
            }
            a aVar = (a) obj;
            String str = this.f6367a;
            if (str == null ? aVar.f6367a != null : !str.equals(aVar.f6367a)) {
                return false;
            }
            Boolean bool = this.e;
            if (bool == null ? aVar.e != null : !bool.equals(aVar.e)) {
                return false;
            }
            Boolean bool2 = this.g;
            if (bool2 == null ? aVar.g != null : !bool2.equals(aVar.g)) {
                return false;
            }
            Boolean bool3 = this.h;
            if (bool3 == null ? aVar.h != null : !bool3.equals(aVar.h)) {
                return false;
            }
            if (this.n != aVar.n) {
                return false;
            }
            Integer num = this.i;
            if (num == null ? aVar.i != null : !num.equals(aVar.i)) {
                return false;
            }
            Integer num2 = this.j;
            if (num2 == null ? aVar.j != null : !num2.equals(aVar.j)) {
                return false;
            }
            Integer num3 = this.k;
            if (num3 == null ? aVar.k != null : !num3.equals(aVar.k)) {
                return false;
            }
            Boolean bool4 = this.l;
            if (bool4 == null ? aVar.l != null : !bool4.equals(aVar.l)) {
                return false;
            }
            Boolean bool5 = this.m;
            if (bool5 == null ? aVar.m != null : !bool5.equals(aVar.m)) {
                return false;
            }
            Location location = this.f;
            Location location2 = aVar.f;
            if (location == location2) {
                return true;
            }
            if (location == null || location2 == null || location.getTime() != location2.getTime()) {
                return false;
            }
            if ((bv.a(17) && location.getElapsedRealtimeNanos() != location2.getElapsedRealtimeNanos()) || Double.compare(location2.getLatitude(), location.getLatitude()) != 0 || Double.compare(location2.getLongitude(), location.getLongitude()) != 0 || Double.compare(location2.getAltitude(), location.getAltitude()) != 0 || Float.compare(location2.getSpeed(), location.getSpeed()) != 0 || Float.compare(location2.getBearing(), location.getBearing()) != 0 || Float.compare(location2.getAccuracy(), location.getAccuracy()) != 0) {
                return false;
            }
            if (bv.a(26) && (Float.compare(location2.getVerticalAccuracyMeters(), location.getVerticalAccuracyMeters()) != 0 || Float.compare(location2.getSpeedAccuracyMetersPerSecond(), location.getSpeedAccuracyMetersPerSecond()) != 0 || Float.compare(location2.getBearingAccuracyDegrees(), location.getBearingAccuracyDegrees()) != 0)) {
                return false;
            }
            if (location.getProvider() == null ? location2.getProvider() != null : !location.getProvider().equals(location2.getProvider())) {
                return false;
            }
            if (location.getExtras() != null) {
                return location.getExtras().equals(location2.getExtras());
            }
            return location2.getExtras() == null;
        }

        public final int hashCode() {
            int i2;
            int hashCode = super.hashCode() * 31;
            String str = this.f6367a;
            int i3 = 0;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            Boolean bool = this.e;
            int hashCode3 = (hashCode2 + (bool != null ? bool.hashCode() : 0)) * 31;
            Location location = this.f;
            if (location != null) {
                int hashCode4 = ((location.getProvider() != null ? location.getProvider().hashCode() : 0) * 31) + ((int) (location.getTime() ^ (location.getTime() >>> 32)));
                if (bv.a(17)) {
                    hashCode4 = (hashCode4 * 31) + ((int) (location.getElapsedRealtimeNanos() ^ (location.getElapsedRealtimeNanos() >>> 32)));
                }
                long doubleToLongBits = Double.doubleToLongBits(location.getLatitude());
                long doubleToLongBits2 = Double.doubleToLongBits(location.getLongitude());
                long doubleToLongBits3 = Double.doubleToLongBits(location.getAltitude());
                int floatToIntBits = (((((((((((hashCode4 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)))) * 31) + (location.getSpeed() != 0.0f ? Float.floatToIntBits(location.getSpeed()) : 0)) * 31) + (location.getBearing() != 0.0f ? Float.floatToIntBits(location.getBearing()) : 0)) * 31) + (location.getAccuracy() != 0.0f ? Float.floatToIntBits(location.getAccuracy()) : 0);
                if (bv.a(26)) {
                    floatToIntBits = (((((floatToIntBits * 31) + (location.getVerticalAccuracyMeters() != 0.0f ? Float.floatToIntBits(location.getVerticalAccuracyMeters()) : 0)) * 31) + (location.getSpeedAccuracyMetersPerSecond() != 0.0f ? Float.floatToIntBits(location.getSpeedAccuracyMetersPerSecond()) : 0)) * 31) + (location.getBearingAccuracyDegrees() != 0.0f ? Float.floatToIntBits(location.getBearingAccuracyDegrees()) : 0);
                }
                i2 = (location.getExtras() != null ? location.getExtras().hashCode() : 0) + (floatToIntBits * 31);
            } else {
                i2 = 0;
            }
            int i4 = (hashCode3 + i2) * 31;
            Boolean bool2 = this.g;
            int hashCode5 = (i4 + (bool2 != null ? bool2.hashCode() : 0)) * 31;
            Boolean bool3 = this.h;
            int hashCode6 = (((hashCode5 + (bool3 != null ? bool3.hashCode() : 0)) * 31) + this.n.hashCode()) * 31;
            Integer num = this.i;
            int hashCode7 = (hashCode6 + (num != null ? num.hashCode() : 0)) * 31;
            Integer num2 = this.j;
            int hashCode8 = (hashCode7 + (num2 != null ? num2.hashCode() : 0)) * 31;
            Integer num3 = this.k;
            int hashCode9 = (hashCode8 + (num3 != null ? num3.hashCode() : 0)) * 31;
            Boolean bool4 = this.l;
            int hashCode10 = (hashCode9 + (bool4 != null ? bool4.hashCode() : 0)) * 31;
            Boolean bool5 = this.m;
            if (bool5 != null) {
                i3 = bool5.hashCode();
            }
            return hashCode10 + i3;
        }
    }

    public static class b extends lc.a<le, a> {
        private final ac c;

        public b(ac acVar) {
            super(acVar.c(), acVar.b().b());
            this.c = acVar;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public le b() {
            return new le((byte) 0);
        }

        /* renamed from: a */
        public le c(kz.c<a> cVar) {
            le leVar = (le) super.c(cVar);
            leVar.k = ((a) cVar.f6353b).f6367a;
            leVar.r = this.c.E();
            leVar.d(this.c.t());
            leVar.e(nt.a(((a) cVar.f6353b).e, true));
            leVar.a(((a) cVar.f6353b).f);
            leVar.f(nt.a(((a) cVar.f6353b).g, false));
            leVar.g(nt.a(((a) cVar.f6353b).h, false));
            leVar.a(Math.max(10, nt.a(((a) cVar.f6353b).i, 10)));
            leVar.c(nt.a(((a) cVar.f6353b).j, 7));
            leVar.b(nt.a(((a) cVar.f6353b).k, 90));
            leVar.h(nt.a(((a) cVar.f6353b).l, false));
            leVar.a(((a) cVar.f6353b).n);
            leVar.i(nt.a(((a) cVar.f6353b).m, true));
            a(leVar, cVar.f6352a);
            return leVar;
        }

        /* access modifiers changed from: package-private */
        public void a(le leVar, ma maVar) {
            b(leVar, maVar);
            c(leVar, maVar);
            leVar.a(maVar.k);
        }

        /* access modifiers changed from: package-private */
        public void b(le leVar, ma maVar) {
            leVar.a(maVar.d);
        }

        /* access modifiers changed from: package-private */
        public void c(le leVar, ma maVar) {
            leVar.a(maVar.m.f6395a);
            leVar.b(maVar.m.f6396b);
            leVar.c(maVar.m.c);
            leVar.d(maVar.m.d);
        }
    }

    /* synthetic */ le(byte b2) {
        this();
    }

    private le() {
    }

    public String a() {
        return nt.b(this.p, "");
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        this.p = str;
    }

    public void a(List<String> list) {
        this.q = list;
    }

    public List<String> b() {
        return this.q;
    }

    public String D() {
        return this.k;
    }

    public boolean E() {
        return this.l;
    }

    public void a(boolean z) {
        this.l = z;
    }

    public boolean F() {
        return this.m;
    }

    public boolean G() {
        return this.n;
    }

    public boolean H() {
        return this.o;
    }

    public void b(boolean z) {
        this.m = z;
    }

    public void c(boolean z) {
        this.n = z;
    }

    public void d(boolean z) {
        this.o = z;
    }

    public boolean e() {
        return super.e() && !bv.a((Collection) b());
    }

    public boolean I() {
        return this.r;
    }

    public boolean J() {
        return this.f6365a;
    }

    public void e(boolean z) {
        this.f6365a = z;
    }

    public Location K() {
        return this.f6366b;
    }

    public void a(Location location) {
        this.f6366b = location;
    }

    public boolean L() {
        return this.c;
    }

    public void f(boolean z) {
        this.c = z;
    }

    public boolean M() {
        return this.d;
    }

    public void g(boolean z) {
        this.d = z;
    }

    public CounterConfiguration.a N() {
        return this.e;
    }

    public void a(CounterConfiguration.a aVar) {
        this.e = aVar;
    }

    public int O() {
        return this.f;
    }

    public void a(int i2) {
        this.f = i2;
    }

    public int P() {
        return this.g;
    }

    public void b(int i2) {
        this.g = i2;
    }

    public boolean Q() {
        return this.h;
    }

    public void h(boolean z) {
        this.h = z;
    }

    public int R() {
        return this.i;
    }

    public void c(int i2) {
        this.i = i2;
    }

    public int S() {
        return this.s;
    }

    public void d(int i2) {
        this.s = i2;
    }

    public boolean T() {
        return this.j;
    }

    public void i(boolean z) {
        this.j = z;
    }
}
