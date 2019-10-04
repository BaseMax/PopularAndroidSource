package c.e.a.b.d.a.a;

import c.e.a.b.j.h;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: c.e.a.b.d.a.a.m  reason: case insensitive filesystem */
public final class C0765m {

    /* renamed from: a  reason: collision with root package name */
    public final Map<BasePendingResult<?>, Boolean> f9898a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    public final Map<h<?>, Boolean> f9899b = Collections.synchronizedMap(new WeakHashMap());

    public final <TResult> void a(h<TResult> hVar, boolean z) {
        this.f9899b.put(hVar, Boolean.valueOf(z));
        hVar.a().a(new C0766n(this, hVar));
    }

    public final void b() {
        a(false, C0755c.f9855a);
    }

    public final void c() {
        a(true, I.f9814a);
    }

    public final boolean a() {
        return !this.f9898a.isEmpty() || !this.f9899b.isEmpty();
    }

    public final void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f9898a) {
            hashMap = new HashMap(this.f9898a);
        }
        synchronized (this.f9899b) {
            hashMap2 = new HashMap(this.f9899b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).b(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((h) entry2.getKey()).b((Exception) new ApiException(status));
            }
        }
    }
}
