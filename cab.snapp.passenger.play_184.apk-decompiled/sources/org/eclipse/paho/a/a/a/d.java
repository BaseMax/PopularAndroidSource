package org.eclipse.paho.a.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import org.eclipse.paho.a.a.a.a.f;
import org.eclipse.paho.a.a.a.a.k;
import org.eclipse.paho.a.a.a.a.l;
import org.eclipse.paho.a.a.a.a.m;
import org.eclipse.paho.a.a.a.a.n;
import org.eclipse.paho.a.a.a.a.o;
import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.v;

public class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8751a = d.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private b f8752b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8751a);
    private a c = a.STOPPED;
    private a d = a.STOPPED;
    private Object e = new Object();
    private String f;
    private Future<?> g;
    private b h = null;
    private a i = null;
    private f j;
    private f k = null;
    private Thread l = null;

    enum a {
        STOPPED,
        RUNNING,
        STARTING,
        RECEIVING
    }

    public d(a aVar, b bVar, f fVar, InputStream inputStream) {
        this.j = new f(bVar, inputStream);
        this.i = aVar;
        this.h = bVar;
        this.k = fVar;
        this.f8752b.setResourceName(aVar.getClient().getClientId());
    }

    public void start(String str, ExecutorService executorService) {
        this.f = str;
        this.f8752b.fine(f8751a, "start", "855");
        synchronized (this.e) {
            if (this.c == a.STOPPED && this.d == a.STOPPED) {
                this.d = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.g = executorService.submit(this);
                }
            }
        }
        while (!isRunning()) {
            try {
                Thread.sleep(100);
            } catch (Exception unused) {
            }
        }
    }

    public void stop() {
        synchronized (this.e) {
            if (this.g != null) {
                this.g.cancel(true);
            }
            this.f8752b.fine(f8751a, "stop", "850");
            if (isRunning()) {
                this.d = a.STOPPED;
            }
        }
        while (isRunning()) {
            try {
                Thread.sleep(100);
            } catch (Exception unused) {
            }
        }
        this.f8752b.fine(f8751a, "stop", "851");
    }

    public void run() {
        a aVar;
        a aVar2;
        this.l = Thread.currentThread();
        this.l.setName(this.f);
        synchronized (this.e) {
            this.c = a.RUNNING;
        }
        synchronized (this.e) {
            aVar = this.d;
        }
        v vVar = null;
        while (aVar == a.RUNNING && this.j != null) {
            try {
                this.f8752b.fine(f8751a, "run", "852");
                if (this.j.available() > 0) {
                    synchronized (this.e) {
                        this.c = a.RECEIVING;
                    }
                }
                u readMqttWireMessage = this.j.readMqttWireMessage();
                synchronized (this.e) {
                    this.c = a.RUNNING;
                }
                if (readMqttWireMessage instanceof org.eclipse.paho.a.a.a.a.b) {
                    vVar = this.k.getToken(readMqttWireMessage);
                    if (vVar != null) {
                        synchronized (vVar) {
                            this.h.a((org.eclipse.paho.a.a.a.a.b) readMqttWireMessage);
                        }
                    } else {
                        if (!(readMqttWireMessage instanceof m) && !(readMqttWireMessage instanceof l)) {
                            if (!(readMqttWireMessage instanceof k)) {
                                throw new p(6);
                            }
                        }
                        this.f8752b.fine(f8751a, "run", "857");
                    }
                } else if (readMqttWireMessage != null) {
                    b bVar = this.h;
                    bVar.n = System.nanoTime();
                    bVar.f8747b.fine(b.f8746a, "notifyReceivedMsg", "651", new Object[]{Integer.valueOf(readMqttWireMessage.getMessageId()), readMqttWireMessage});
                    if (!bVar.m) {
                        if (readMqttWireMessage instanceof o) {
                            o oVar = (o) readMqttWireMessage;
                            int qos = oVar.getMessage().getQos();
                            if (qos == 0 || qos == 1) {
                                if (bVar.h != null) {
                                    bVar.h.messageArrived(oVar);
                                }
                            } else if (qos == 2) {
                                bVar.k.put(b.a(readMqttWireMessage), (o) readMqttWireMessage);
                                bVar.s.put(Integer.valueOf(oVar.getMessageId()), oVar);
                                bVar.send(new m(oVar), null);
                            }
                        } else if (readMqttWireMessage instanceof n) {
                            o oVar2 = (o) bVar.s.get(Integer.valueOf(readMqttWireMessage.getMessageId()));
                            if (oVar2 == null) {
                                bVar.send(new l(readMqttWireMessage.getMessageId()), null);
                            } else if (bVar.h != null) {
                                bVar.h.messageArrived(oVar2);
                            }
                        }
                    }
                }
                synchronized (this.e) {
                    this.c = a.RUNNING;
                }
            } catch (p e2) {
                this.f8752b.fine(f8751a, "run", "856", null, e2);
                synchronized (this.e) {
                    this.d = a.STOPPED;
                    this.i.shutdownConnection(vVar, e2);
                    synchronized (this.e) {
                        this.c = a.RUNNING;
                    }
                }
            } catch (IOException e3) {
                try {
                    this.f8752b.fine(f8751a, "run", "853");
                    synchronized (this.e) {
                        this.d = a.STOPPED;
                        if (!this.i.isDisconnecting()) {
                            this.i.shutdownConnection(vVar, new p(32109, e3));
                        }
                        synchronized (this.e) {
                            this.c = a.RUNNING;
                        }
                    }
                } catch (Throwable th) {
                    synchronized (this.e) {
                        this.c = a.STOPPED;
                        throw th;
                    }
                }
            }
            synchronized (this.e) {
                aVar2 = this.d;
            }
            aVar = aVar2;
        }
        synchronized (this.e) {
            this.c = a.STOPPED;
        }
        this.l = null;
        this.f8752b.fine(f8751a, "run", "854");
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this.e) {
            z = (this.c == a.RUNNING || this.c == a.RECEIVING) && this.d == a.RUNNING;
        }
        return z;
    }

    public boolean isReceiving() {
        boolean z;
        synchronized (this.e) {
            z = this.c == a.RECEIVING;
        }
        return z;
    }
}
