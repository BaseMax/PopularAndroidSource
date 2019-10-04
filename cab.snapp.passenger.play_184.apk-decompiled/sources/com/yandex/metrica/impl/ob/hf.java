package com.yandex.metrica.impl.ob;

import java.util.Calendar;
import java.util.GregorianCalendar;
import org.a.b;
import org.a.c;

public class hf {

    /* renamed from: a  reason: collision with root package name */
    private final hb f6094a;

    /* renamed from: b  reason: collision with root package name */
    private final hh f6095b;
    private final long c;
    private final boolean d;
    private final long e;

    public hf(c cVar, long j) throws b {
        this.f6094a = new hb(cVar.optString("device_id", null), cVar.optString("device_id_hash", null));
        if (cVar.has("device_snapshot_key")) {
            this.f6095b = new hh(cVar.optString("device_snapshot_key", null));
        } else {
            this.f6095b = null;
        }
        this.c = cVar.optLong("last_elections_time", -1);
        this.d = f();
        this.e = j;
    }

    public hf(hb hbVar, hh hhVar, long j) {
        this.f6094a = hbVar;
        this.f6095b = hhVar;
        this.c = j;
        this.d = f();
        this.e = -1;
    }

    public String a() throws b {
        c cVar = new c();
        cVar.put("device_id", (Object) this.f6094a.f6085a);
        cVar.put("device_id_hash", (Object) this.f6094a.f6086b);
        hh hhVar = this.f6095b;
        if (hhVar != null) {
            cVar.put("device_snapshot_key", (Object) hhVar.a());
        }
        cVar.put("last_elections_time", this.c);
        return cVar.toString();
    }

    public boolean b() {
        if (this.e > -1) {
            Calendar instance = GregorianCalendar.getInstance();
            instance.setTimeInMillis(this.e);
            if (instance.get(1) == 1970) {
                return true;
            }
        }
        return false;
    }

    public hb c() {
        return this.f6094a;
    }

    public hh d() {
        return this.f6095b;
    }

    public boolean e() {
        return this.d;
    }

    private boolean f() {
        if (this.c <= -1 || System.currentTimeMillis() - this.c >= 604800000) {
            return false;
        }
        return true;
    }

    public boolean a(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            hf hfVar = (hf) obj;
            if (this.d != hfVar.d || !this.f6094a.equals(hfVar.f6094a)) {
                return false;
            }
            hh hhVar = this.f6095b;
            hh hhVar2 = hfVar.f6095b;
            if (hhVar != null) {
                return hhVar.equals(hhVar2);
            }
            if (hhVar2 == null) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "Credentials{mIdentifiers=" + this.f6094a + ", mDeviceSnapshot=" + this.f6095b + ", mLastElectionsTime=" + this.c + ", mFresh=" + this.d + ", mLastModified=" + this.e + '}';
    }
}
