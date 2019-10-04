package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import org.a.b;
import org.a.c;

public class fe extends fi {

    /* renamed from: a  reason: collision with root package name */
    public final Long f6004a;

    /* renamed from: b  reason: collision with root package name */
    public final Long f6005b;

    public fe(Bundle bundle) {
        super(bundle);
        this.f6004a = fj.a(bundle, "cd");
        this.f6005b = fj.a(bundle, "ci");
    }

    public fe(c cVar) {
        super(cVar);
        this.f6004a = fj.a(cVar, "cd");
        this.f6005b = fj.a(cVar, "ci");
    }

    public c a() throws b {
        c a2 = super.a();
        a2.putOpt("cd", this.f6004a);
        a2.putOpt("ci", this.f6005b);
        return a2;
    }

    public String toString() {
        return "BackgroundLocationConfig{collectionDuration=" + this.f6004a + ", collectionInterval=" + this.f6005b + ", updateTimeInterval=" + this.c + ", updateDistanceInterval=" + this.d + ", sendBatchSize=" + this.e + ", maxBatchSize=" + this.f + ", maxAgeToForceFlush=" + this.g + ", maxRecordsToStoreLocally=" + this.h + ", collectionEnabled=" + this.i + '}';
    }
}
