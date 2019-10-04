package androidx.work;

import android.net.Network;
import android.net.Uri;
import b.H.d;
import b.H.q;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

public final class WorkerParameters {

    /* renamed from: a  reason: collision with root package name */
    public UUID f1013a;

    /* renamed from: b  reason: collision with root package name */
    public d f1014b;

    /* renamed from: c  reason: collision with root package name */
    public Set<String> f1015c;

    /* renamed from: d  reason: collision with root package name */
    public a f1016d;

    /* renamed from: e  reason: collision with root package name */
    public int f1017e;

    /* renamed from: f  reason: collision with root package name */
    public Executor f1018f;

    /* renamed from: g  reason: collision with root package name */
    public b.H.a.d.b.a f1019g;

    /* renamed from: h  reason: collision with root package name */
    public q f1020h;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public List<String> f1021a = Collections.emptyList();

        /* renamed from: b  reason: collision with root package name */
        public List<Uri> f1022b = Collections.emptyList();

        /* renamed from: c  reason: collision with root package name */
        public Network f1023c;
    }

    public WorkerParameters(UUID uuid, d dVar, Collection<String> collection, a aVar, int i2, Executor executor, b.H.a.d.b.a aVar2, q qVar) {
        this.f1013a = uuid;
        this.f1014b = dVar;
        this.f1015c = new HashSet(collection);
        this.f1016d = aVar;
        this.f1017e = i2;
        this.f1018f = executor;
        this.f1019g = aVar2;
        this.f1020h = qVar;
    }

    public Executor a() {
        return this.f1018f;
    }

    public UUID b() {
        return this.f1013a;
    }

    public d c() {
        return this.f1014b;
    }

    public q d() {
        return this.f1020h;
    }
}
