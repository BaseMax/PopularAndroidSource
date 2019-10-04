package org.eclipse.paho.a.a.a;

import java.util.ArrayList;
import org.eclipse.paho.a.a.a;
import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.v;

public final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final String f8761a = "DisconnectedMessageBuffer";

    /* renamed from: b  reason: collision with root package name */
    private b f8762b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, "DisconnectedMessageBuffer");
    private org.eclipse.paho.a.a.b c;
    private ArrayList<a> d;
    private Object e = new Object();
    private k f;
    private int g = 0;

    public h(org.eclipse.paho.a.a.b bVar) {
        this.c = bVar;
        this.d = new ArrayList<>();
    }

    public final void putMessage(u uVar, v vVar) throws p {
        a aVar = new a(uVar, vVar);
        synchronized (this.e) {
            if (this.d.size() < this.c.getBufferSize()) {
                this.d.add(aVar);
            } else if (this.c.isDeleteOldestMessages()) {
                this.d.remove(0);
                this.d.add(aVar);
            } else {
                throw new p(32203);
            }
        }
    }

    public final a getMessage(int i) {
        a aVar;
        synchronized (this.e) {
            aVar = this.d.get(i);
        }
        return aVar;
    }

    public final void deleteMessage(int i) {
        synchronized (this.e) {
            this.d.remove(i);
        }
    }

    public final int getMessageCount() {
        int size;
        synchronized (this.e) {
            size = this.d.size();
        }
        return size;
    }

    public final void run() {
        this.f8762b.fine("DisconnectedMessageBuffer", "run", "516");
        while (getMessageCount() > 0) {
            try {
                this.f.publishBufferedMessage(getMessage(0));
                deleteMessage(0);
            } catch (p e2) {
                if (e2.getReasonCode() == 32202) {
                    try {
                        Thread.sleep(100);
                    } catch (Exception unused) {
                    }
                } else {
                    this.f8762b.severe("DisconnectedMessageBuffer", "run", "519", new Object[]{Integer.valueOf(e2.getReasonCode()), e2.getMessage()});
                    return;
                }
            }
        }
    }

    public final void setPublishCallback(k kVar) {
        this.f = kVar;
    }

    public final boolean isPersistBuffer() {
        return this.c.isPersistBuffer();
    }
}
