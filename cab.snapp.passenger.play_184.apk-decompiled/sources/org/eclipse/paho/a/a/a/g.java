package org.eclipse.paho.a.a.a;

import org.eclipse.paho.a.a.c;
import org.eclipse.paho.a.a.h;
import org.eclipse.paho.a.a.i;
import org.eclipse.paho.a.a.k;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.n;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.s;
import org.eclipse.paho.a.a.v;

public final class g implements c {

    /* renamed from: a  reason: collision with root package name */
    private m f8759a;

    /* renamed from: b  reason: collision with root package name */
    private i f8760b;
    private a c;
    private n d;
    private v e;
    private Object f;
    private c g;
    private int h;
    private k i;
    private boolean j;

    public g(i iVar, m mVar, a aVar, n nVar, v vVar, Object obj, c cVar, boolean z) {
        this.f8759a = mVar;
        this.f8760b = iVar;
        this.c = aVar;
        this.d = nVar;
        this.e = vVar;
        this.f = obj;
        this.g = cVar;
        this.h = nVar.getMqttVersion();
        this.j = z;
    }

    public final void onSuccess(h hVar) {
        if (this.h == 0) {
            this.d.setMqttVersion(0);
        }
        this.e.internalTok.a(hVar.getResponse(), null);
        this.e.internalTok.a();
        this.e.internalTok.j = this.f8760b;
        this.c.notifyConnect();
        if (this.g != null) {
            this.e.setUserContext(this.f);
            this.g.onSuccess(this.e);
        }
        if (this.i != null) {
            this.i.connectComplete(this.j, this.c.getNetworkModules()[this.c.getNetworkModuleIndex()].getServerURI());
        }
    }

    public final void onFailure(h hVar, Throwable e2) {
        p pVar;
        while (true) {
            int length = this.c.getNetworkModules().length;
            int networkModuleIndex = this.c.getNetworkModuleIndex() + 1;
            if (networkModuleIndex < length || (this.h == 0 && this.d.getMqttVersion() == 4)) {
                if (this.h != 0) {
                    this.c.setNetworkModuleIndex(networkModuleIndex);
                } else if (this.d.getMqttVersion() == 4) {
                    this.d.setMqttVersion(3);
                } else {
                    this.d.setMqttVersion(4);
                    this.c.setNetworkModuleIndex(networkModuleIndex);
                }
                try {
                    continue;
                    connect();
                    return;
                } catch (s e3) {
                    e2 = e3;
                }
            }
        }
        if (this.h == 0) {
            this.d.setMqttVersion(0);
        }
        if (e2 instanceof p) {
            pVar = (p) e2;
        } else {
            pVar = new p(e2);
        }
        this.e.internalTok.a(null, pVar);
        this.e.internalTok.a();
        this.e.internalTok.j = this.f8760b;
        if (this.g != null) {
            this.e.setUserContext(this.f);
            this.g.onFailure(this.e, e2);
        }
    }

    public final void connect() throws s {
        v vVar = new v(this.f8760b.getClientId());
        vVar.setActionCallback(this);
        vVar.setUserContext(this);
        this.f8759a.open(this.f8760b.getClientId(), this.f8760b.getServerURI());
        if (this.d.isCleanSession()) {
            this.f8759a.clear();
        }
        if (this.d.getMqttVersion() == 0) {
            this.d.setMqttVersion(4);
        }
        try {
            this.c.connect(this.d, vVar);
        } catch (p e2) {
            onFailure(vVar, e2);
        }
    }

    public final void setMqttCallbackExtended(k kVar) {
        this.i = kVar;
    }
}
