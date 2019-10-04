package cab.snapp.d.c;

import cab.snapp.a;
import cab.snapp.d;
import com.google.gson.e;
import com.pusher.client.channel.h;
import com.pusher.client.connection.ConnectionState;
import com.pusher.client.connection.b;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public final class c implements d, com.pusher.client.channel.d, b {
    public static final int ACK = 9;
    public static final String TAG = "PUSHER";

    /* renamed from: a  reason: collision with root package name */
    com.pusher.client.c f229a;

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f230b;
    private final cab.snapp.c c;
    private final b d;
    private final a e;
    private boolean f;

    public final boolean publish(String str) {
        return false;
    }

    public c(cab.snapp.c cVar, a aVar) {
        this.e = aVar;
        this.d = cVar.getPusherConfig();
        this.c = cVar;
        this.f230b = new ArrayList(cVar.getEvents().keySet());
        cab.snapp.b.log(TAG, "Init succeed");
    }

    public final void setup() {
        com.pusher.client.d dVar = new com.pusher.client.d();
        dVar.setAuthorizer(new a(this.c));
        b bVar = this.d;
        if (!(bVar == null || bVar.getAppCluster() == null || this.d.getAppCluster().isEmpty())) {
            dVar.setCluster(this.d.getAppCluster());
        }
        this.f229a = new com.pusher.client.c(this.d.getAppKey(), dVar);
        cab.snapp.b.log(TAG, "Setup succeed");
    }

    public final void start() {
        if (this.f229a == null) {
            setup();
        }
        this.f229a.connect(this, ConnectionState.ALL);
        cab.snapp.b.log(TAG, "Start succeed");
    }

    public final boolean isStarted() {
        return this.f;
    }

    public final void stop() {
        com.pusher.client.c cVar = this.f229a;
        if (cVar != null) {
            try {
                cVar.unsubscribe(this.d.getChannel());
                this.f229a.disconnect();
                cab.snapp.b.log(TAG, "Stop succeed");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void destroy() {
        stop();
        this.f229a = null;
        cab.snapp.b.log(TAG, "Destroy succeed");
    }

    public final void onEvent(cab.snapp.a.a aVar) {
        if (aVar != null) {
            aVar.setAckId(9);
            this.e.onEvent(aVar);
        }
    }

    public final void onEvent(String str, String str2, String str3) {
        cab.snapp.b.log(TAG, "onEvent:".concat(String.valueOf(str2)));
        if (str3 != null && !str3.isEmpty()) {
            onEvent((cab.snapp.a.a) new e().fromJson(str3, cab.snapp.a.a.class));
        }
    }

    public final void onConnectionStateChange(com.pusher.client.connection.c cVar) {
        cab.snapp.b.log(TAG, "onConnectionStateChange:" + cVar.getCurrentState());
        if (cVar.getCurrentState() == ConnectionState.CONNECTED) {
            try {
                if (!(this.f229a == null || this.d == null)) {
                    this.f229a.subscribePrivate(this.d.getChannel(), this, (String[]) this.f230b.toArray(new String[this.f230b.size()]));
                }
                this.f = true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            if (cVar.getCurrentState() == ConnectionState.DISCONNECTED) {
                com.pusher.client.c cVar2 = this.f229a;
                if (cVar2 != null) {
                    b bVar = this.d;
                    if (bVar != null) {
                        cVar2.unsubscribe(bVar.getChannel());
                    }
                }
                this.f = false;
            }
        }
    }

    public final void onError(String str, String str2, Exception exc) {
        String message = exc != null ? exc.getMessage() : "";
        cab.snapp.b.log(TAG, "message:" + str + "/code:" + str2 + "/Exception:" + message);
    }

    public final void onUsersInformationReceived(String str, Set<h> set) {
        cab.snapp.b.log(TAG, "onUsersInformationReceived:".concat(String.valueOf(str)));
    }

    public final void userSubscribed(String str, h hVar) {
        cab.snapp.b.log(TAG, "userSubscribed:".concat(String.valueOf(str)));
    }

    public final void userUnsubscribed(String str, h hVar) {
        cab.snapp.b.log(TAG, "userUnsubscribed:".concat(String.valueOf(str)));
    }

    public final void onAuthenticationFailure(String str, Exception exc) {
        cab.snapp.b.log(TAG, "onAuthenticationFailure:".concat(String.valueOf(str)));
    }

    public final void onSubscriptionSucceeded(String str) {
        cab.snapp.b.log(TAG, "onSubscriptionSucceeded:".concat(String.valueOf(str)));
    }
}
