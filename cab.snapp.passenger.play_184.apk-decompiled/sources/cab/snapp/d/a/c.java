package cab.snapp.d.a;

import android.content.Context;
import cab.snapp.a;
import cab.snapp.b;
import cab.snapp.d;
import com.google.gson.e;

public final class c implements d {
    public static final int ACK = 12;
    public static final String TAG = "MQTT";

    /* renamed from: a  reason: collision with root package name */
    private final a f217a;

    /* renamed from: b  reason: collision with root package name */
    private b f218b;
    private final a c;

    public c(Context context, a aVar, a aVar2) {
        this.c = aVar2;
        this.f217a = aVar;
        this.f218b = new cab.snapp.d.a.a.a(context, aVar, new cab.snapp.d.a.b.a() {
            public final void onError(int i) {
            }

            public final void onMQTTData(String str, String str2) {
                cab.snapp.a.a aVar;
                try {
                    aVar = (cab.snapp.a.a) new e().fromJson(str2, cab.snapp.a.a.class);
                } catch (Exception e) {
                    b.log(c.TAG, "onMQTTData: can't make data model");
                    e.printStackTrace();
                    aVar = null;
                }
                c.this.onEvent(aVar);
            }

            public final void onConnected() {
                b.log(c.TAG, "MQTT Connected.");
            }
        });
    }

    public final void setup() {
        this.f218b.setupMQTTConnection();
    }

    public final void start() {
        if (this.f218b.isConnected()) {
            this.f218b.disconnect();
        }
        this.f218b.connect();
    }

    public final boolean isStarted() {
        return this.f218b.isConnected();
    }

    public final void stop() {
        b bVar = this.f218b;
        if (bVar != null) {
            bVar.disconnect();
        }
    }

    public final void destroy() {
        this.f218b.destroy();
    }

    public final boolean publish(String str) {
        b bVar = this.f218b;
        if (bVar != null) {
            bVar.publish(this.f217a.getChannels().getEvents(), str, null);
        }
        return true;
    }

    public final void onEvent(cab.snapp.a.a aVar) {
        if (this.c != null) {
            aVar.setAckId(12);
            this.c.onEvent(aVar);
        }
    }
}
