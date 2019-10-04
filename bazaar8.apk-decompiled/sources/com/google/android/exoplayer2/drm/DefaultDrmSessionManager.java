package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import c.e.a.a.C0744q;
import c.e.a.a.d.c;
import c.e.a.a.d.g;
import c.e.a.a.d.h;
import c.e.a.a.d.l;
import c.e.a.a.d.m;
import c.e.a.a.d.n;
import c.e.a.a.d.o;
import c.e.a.a.d.q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@TargetApi(18)
public class DefaultDrmSessionManager<T extends n> implements l<T>, g.c<T> {

    /* renamed from: a  reason: collision with root package name */
    public final UUID f12549a;

    /* renamed from: b  reason: collision with root package name */
    public final o<T> f12550b;

    /* renamed from: c  reason: collision with root package name */
    public final q f12551c;

    /* renamed from: d  reason: collision with root package name */
    public final HashMap<String, String> f12552d;

    /* renamed from: e  reason: collision with root package name */
    public final c.e.a.a.o.l<h> f12553e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f12554f;

    /* renamed from: g  reason: collision with root package name */
    public final int f12555g;

    /* renamed from: h  reason: collision with root package name */
    public final List<g<T>> f12556h;

    /* renamed from: i  reason: collision with root package name */
    public final List<g<T>> f12557i;

    /* renamed from: j  reason: collision with root package name */
    public Looper f12558j;

    /* renamed from: k  reason: collision with root package name */
    public int f12559k;

    /* renamed from: l  reason: collision with root package name */
    public byte[] f12560l;
    public volatile DefaultDrmSessionManager<T>.defpackage.a m;

    public static final class MissingSchemeDataException extends Exception {
        public MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr != null) {
                Iterator it = DefaultDrmSessionManager.this.f12556h.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    g gVar = (g) it.next();
                    if (gVar.a(bArr)) {
                        gVar.a(message.what);
                        break;
                    }
                }
            }
        }
    }

    public final void a(Handler handler, h hVar) {
        this.f12553e.a(handler, hVar);
    }

    public boolean a(DrmInitData drmInitData) {
        boolean z = true;
        if (this.f12560l != null) {
            return true;
        }
        if (a(drmInitData, this.f12549a, true).isEmpty()) {
            if (drmInitData.f12565d != 1 || !drmInitData.a(0).a(C0744q.f9729b)) {
                return false;
            }
            p.d("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f12549a);
        }
        String str = drmInitData.f12564c;
        if (str != null && !"cenc".equals(str)) {
            if (!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) {
                return true;
            }
            if (I.f9565a < 25) {
                z = false;
            }
        }
        return z;
    }

    public DrmSession<T> a(Looper looper, DrmInitData drmInitData) {
        List<DrmInitData.SchemeData> list;
        g gVar;
        Looper looper2 = this.f12558j;
        C0737e.b(looper2 == null || looper2 == looper);
        if (this.f12556h.isEmpty()) {
            this.f12558j = looper;
            if (this.m == null) {
                this.m = new a(looper);
            }
        }
        g gVar2 = null;
        if (this.f12560l == null) {
            List<DrmInitData.SchemeData> a2 = a(drmInitData, this.f12549a, false);
            if (a2.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f12549a);
                this.f12553e.a(new c(missingSchemeDataException));
                return new m(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
            list = a2;
        } else {
            list = null;
        }
        if (this.f12554f) {
            Iterator<g<T>> it = this.f12556h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                g next = it.next();
                if (I.a((Object) next.f7570a, (Object) list)) {
                    gVar2 = next;
                    break;
                }
            }
        } else if (!this.f12556h.isEmpty()) {
            gVar2 = this.f12556h.get(0);
        }
        if (gVar2 == null) {
            gVar = new g(this.f12549a, this.f12550b, this, list, this.f12559k, this.f12560l, this.f12552d, this.f12551c, looper, this.f12553e, this.f12555g);
            this.f12556h.add(gVar);
        } else {
            gVar = gVar2;
        }
        gVar.d();
        return gVar;
    }

    public void a(DrmSession<T> drmSession) {
        if (!(drmSession instanceof m)) {
            g<T> gVar = (g) drmSession;
            if (gVar.j()) {
                this.f12556h.remove(gVar);
                if (this.f12557i.size() > 1 && this.f12557i.get(0) == gVar) {
                    this.f12557i.get(1).i();
                }
                this.f12557i.remove(gVar);
            }
        }
    }

    public void a(g<T> gVar) {
        if (!this.f12557i.contains(gVar)) {
            this.f12557i.add(gVar);
            if (this.f12557i.size() == 1) {
                gVar.i();
            }
        }
    }

    public void a() {
        for (g<T> h2 : this.f12557i) {
            h2.h();
        }
        this.f12557i.clear();
    }

    public void a(Exception exc) {
        for (g<T> c2 : this.f12557i) {
            c2.c(exc);
        }
        this.f12557i.clear();
    }

    public static List<DrmInitData.SchemeData> a(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.f12565d);
        for (int i2 = 0; i2 < drmInitData.f12565d; i2++) {
            DrmInitData.SchemeData a2 = drmInitData.a(i2);
            if ((a2.a(uuid) || (C0744q.f9730c.equals(uuid) && a2.a(C0744q.f9729b))) && (a2.f12570e != null || z)) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }
}
