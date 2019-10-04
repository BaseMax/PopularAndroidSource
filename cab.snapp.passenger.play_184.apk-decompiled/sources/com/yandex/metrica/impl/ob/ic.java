package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.hq;

class ic {

    /* renamed from: a  reason: collision with root package name */
    public hq.a f6149a;

    /* renamed from: b  reason: collision with root package name */
    private Long f6150b;
    private long c;
    private Location d;

    public ic(hq.a aVar, long j, Location location) {
        this(aVar, j, location, null);
    }

    public ic(hq.a aVar, long j, Location location, Long l) {
        this.f6149a = aVar;
        this.f6150b = l;
        this.c = j;
        this.d = location;
    }

    public String toString() {
        return "LocationWrapper{collectionMode=" + this.f6149a + ", mIncrementalId=" + this.f6150b + ", mReceiveTimestamp=" + this.c + ", mLocation=" + this.d + '}';
    }

    public Long a() {
        return this.f6150b;
    }

    public long b() {
        return this.c;
    }

    public Location c() {
        return this.d;
    }
}
