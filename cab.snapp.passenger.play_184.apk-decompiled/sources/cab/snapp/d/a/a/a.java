package cab.snapp.d.a.a;

import android.content.Context;
import cab.snapp.d.a.b;
import cab.snapp.d.a.b.d;
import org.eclipse.paho.a.a.c;
import org.eclipse.paho.a.a.f;
import org.eclipse.paho.a.a.j;
import org.eclipse.paho.a.a.l;
import org.eclipse.paho.a.a.n;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;
import org.eclipse.paho.android.service.MqttAndroidClient;
import org.eclipse.paho.android.service.h;

public final class a implements b, c, j {

    /* renamed from: a  reason: collision with root package name */
    private Context f207a;

    /* renamed from: b  reason: collision with root package name */
    private final cab.snapp.d.a.b.a f208b;
    private cab.snapp.d.a.a c;
    private MqttAndroidClient d;
    private n e;

    public a(Context context, cab.snapp.d.a.a aVar, cab.snapp.d.a.b.a aVar2) {
        this.f207a = context;
        this.f208b = aVar2;
        this.c = aVar;
    }

    public final void setupMQTTConnection() {
        cab.snapp.d.a.a aVar = this.c;
        if (aVar != null) {
            if (aVar == null || aVar.getChannels() == null || this.c.getChannels().getEvents() == null || this.c.getChannels().getEvents().isEmpty()) {
                cab.snapp.d.a.b.a aVar2 = this.f208b;
                if (aVar2 != null) {
                    aVar2.onError(1);
                }
                return;
            }
            String protocol = this.c.getProtocol();
            Context applicationContext = this.f207a.getApplicationContext();
            this.d = new MqttAndroidClient(applicationContext, protocol + "://" + this.c.getHost(), l.generateClientId().replace("paho", "Android_"));
            this.d.setCallback(this);
            this.d.setTraceEnabled(true);
            this.d.setTraceCallback(new h() {
                public final void traceDebug(String str, String str2) {
                    cab.snapp.b.log(cab.snapp.d.a.c.TAG, "traceDebug: tag: " + str + " message: " + str2);
                }

                public final void traceError(String str, String str2) {
                    cab.snapp.b.log(cab.snapp.d.a.c.TAG, "traceError: tag: " + str + " message: " + str2);
                }

                public final void traceException(String str, String str2, Exception exc) {
                    cab.snapp.b.log(cab.snapp.d.a.c.TAG, "traceException: tag: " + str + " message: " + str2);
                    exc.printStackTrace();
                }
            });
            this.e = new n();
            this.e.setAutomaticReconnect(true);
            this.e.setCleanSession(this.c.shouldCleanSession());
            this.e.setKeepAliveInterval(this.c.getPingInterval());
            this.e.setConnectionTimeout(this.c.getTimeout());
            this.e.setUserName(this.c.getJwtToken());
            this.e.setPassword("12345678".toCharArray());
        }
    }

    public final void destroy() {
        if (this.d != null) {
            disconnect();
            this.d = null;
            this.f207a = null;
        }
    }

    private int a() {
        cab.snapp.d.a.a aVar = this.c;
        if (aVar != null) {
            return aVar.getQos();
        }
        return 0;
    }

    public final void connectionLost(Throwable th) {
        if (th != null) {
            cab.snapp.b.log(cab.snapp.d.a.c.TAG, th.getMessage());
        }
    }

    public final void messageArrived(String str, q qVar) throws Exception {
        if (qVar != null) {
            cab.snapp.b.log(cab.snapp.d.a.c.TAG, "Message: " + str + " : " + new String(qVar.getPayload()));
        }
        cab.snapp.d.a.b.a aVar = this.f208b;
        if (aVar != null && qVar != null) {
            aVar.onMQTTData(str, new String(qVar.getPayload()));
        }
    }

    public final void deliveryComplete(f fVar) {
        if (fVar != null) {
            cab.snapp.b.log(cab.snapp.d.a.c.TAG, "deliveryComplete: " + fVar.toString());
        }
    }

    public final void connect() {
        MqttAndroidClient mqttAndroidClient = this.d;
        if (mqttAndroidClient == null) {
            cab.snapp.d.a.b.a aVar = this.f208b;
            if (aVar != null) {
                aVar.onError(1);
            }
            return;
        }
        try {
            if (mqttAndroidClient.isConnected()) {
                this.d.disconnect();
            }
            this.d.connect(this.e, "Connect", this);
        } catch (p e2) {
            cab.snapp.b.log(cab.snapp.d.a.c.TAG, "connect: FAILED");
            e2.printStackTrace();
            cab.snapp.d.a.b.a aVar2 = this.f208b;
            if (aVar2 != null) {
                aVar2.onError(1);
            }
        }
    }

    public final void onSuccess(org.eclipse.paho.a.a.h hVar) {
        cab.snapp.b.log(cab.snapp.d.a.c.TAG, "Successfully connected to MQTT server");
        cab.snapp.d.a.b.a aVar = this.f208b;
        if (aVar != null) {
            aVar.onConnected();
        }
        cab.snapp.d.a.a aVar2 = this.c;
        if (aVar2 != null && aVar2.getChannels() != null && this.c.getChannels().getEvents() != null) {
            subscribe(this.c.getChannels().getEvents(), new cab.snapp.d.a.b.c() {
                public final void onSubscribeSucceed() {
                    cab.snapp.b.log(cab.snapp.d.a.c.TAG, "USER EVENT Subscribed!");
                }

                public final void onSubscribeFailed() {
                    cab.snapp.b.log(cab.snapp.d.a.c.TAG, "USER EVENT Subscribe Failed!");
                }
            });
        }
    }

    public final void onFailure(org.eclipse.paho.a.a.h hVar, Throwable th) {
        if (th != null) {
            cab.snapp.b.log(cab.snapp.d.a.c.TAG, th.getMessage());
            th.printStackTrace();
        }
    }

    public final boolean isConnected() {
        boolean z = false;
        try {
            if (this.d != null && this.d.isConnected()) {
                z = true;
            }
            return z;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final void reConnect() {
        disconnect();
        if (!isConnected()) {
            connect();
        }
    }

    public final void disconnect() {
        try {
            if (this.d != null && this.d.isConnected()) {
                this.d.disconnect();
            }
        } catch (p e2) {
            e2.printStackTrace();
            cab.snapp.b.log(cab.snapp.d.a.c.TAG, e2.getMessage());
        }
    }

    public final void subscribe(String str, final cab.snapp.d.a.b.c cVar) {
        cab.snapp.b.log("PahoMQTTClientInterface", "try to subscribe to: ".concat(String.valueOf(str)));
        if (!str.isEmpty()) {
            MqttAndroidClient mqttAndroidClient = this.d;
            if (mqttAndroidClient != null && mqttAndroidClient.isConnected()) {
                try {
                    this.d.subscribe(str, a(), (Object) "Subscribe", (c) new c() {
                        public final void onSuccess(org.eclipse.paho.a.a.h hVar) {
                            cab.snapp.d.a.b.c cVar = cVar;
                            if (cVar != null) {
                                cVar.onSubscribeSucceed();
                            }
                        }

                        public final void onFailure(org.eclipse.paho.a.a.h hVar, Throwable th) {
                            cab.snapp.d.a.b.c cVar = cVar;
                            if (cVar != null) {
                                cVar.onSubscribeFailed();
                            }
                        }
                    });
                    return;
                } catch (p e2) {
                    e2.printStackTrace();
                    if (cVar != null) {
                        cVar.onSubscribeFailed();
                    }
                    return;
                }
            }
        }
        if (cVar != null) {
            cVar.onSubscribeFailed();
        }
    }

    public final void unsubscribe(String str, final d dVar) {
        if (!str.isEmpty()) {
            MqttAndroidClient mqttAndroidClient = this.d;
            if (mqttAndroidClient != null && mqttAndroidClient.isConnected()) {
                try {
                    this.d.unsubscribe(str, (Object) "Unsubscribe", (c) new c() {
                        public final void onSuccess(org.eclipse.paho.a.a.h hVar) {
                            d dVar = dVar;
                            if (dVar != null) {
                                dVar.onUnsubscribeSucceed();
                            }
                        }

                        public final void onFailure(org.eclipse.paho.a.a.h hVar, Throwable th) {
                            d dVar = dVar;
                            if (dVar != null) {
                                dVar.onUnsubscribeFailed();
                            }
                        }
                    });
                    return;
                } catch (p e2) {
                    e2.printStackTrace();
                    if (dVar != null) {
                        dVar.onUnsubscribeFailed();
                    }
                    return;
                }
            }
        }
        if (dVar != null) {
            dVar.onUnsubscribeFailed();
        }
    }

    public final void publish(String str, String str2, final cab.snapp.d.a.b.b bVar) {
        MqttAndroidClient mqttAndroidClient = this.d;
        if (mqttAndroidClient == null || !mqttAndroidClient.isConnected()) {
            if (bVar != null) {
                bVar.onPublishFailed();
            }
            return;
        }
        try {
            MqttAndroidClient mqttAndroidClient2 = this.d;
            q qVar = new q();
            qVar.setPayload(str2.getBytes());
            qVar.setQos(a());
            qVar.setRetained(false);
            mqttAndroidClient2.publish(str, qVar, (Object) "Publish", (c) new c() {
                public final void onSuccess(org.eclipse.paho.a.a.h hVar) {
                    cab.snapp.d.a.b.b bVar = bVar;
                    if (bVar != null) {
                        bVar.onPublishSucceed();
                    }
                }

                public final void onFailure(org.eclipse.paho.a.a.h hVar, Throwable th) {
                    th.printStackTrace();
                    cab.snapp.d.a.b.b bVar = bVar;
                    if (bVar != null) {
                        bVar.onPublishFailed();
                    }
                }
            });
        } catch (p e2) {
            e2.printStackTrace();
            if (bVar != null) {
                bVar.onPublishFailed();
            }
        }
    }

    public final void setConnectionData(cab.snapp.d.a.a aVar) {
        this.c = aVar;
    }
}
