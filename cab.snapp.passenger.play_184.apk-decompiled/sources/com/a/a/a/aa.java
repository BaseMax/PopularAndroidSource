package com.a.a.a;

import com.a.a.a.ag;
import java.util.HashSet;
import java.util.Set;

final class aa implements p {

    /* renamed from: b  reason: collision with root package name */
    static final Set<ag.b> f1654b = new HashSet<ag.b>() {
        {
            add(ag.b.START);
            add(ag.b.RESUME);
            add(ag.b.PAUSE);
            add(ag.b.STOP);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int f1655a;

    public aa(int i) {
        this.f1655a = i;
    }

    public final boolean skipEvent(ag agVar) {
        return (f1654b.contains(agVar.type) && agVar.sessionEventMetadata.betaDeviceToken == null) && (Math.abs(agVar.sessionEventMetadata.installationId.hashCode() % this.f1655a) != 0);
    }
}
