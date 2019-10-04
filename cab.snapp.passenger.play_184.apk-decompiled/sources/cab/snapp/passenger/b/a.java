package cab.snapp.passenger.b;

import cab.snapp.c;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.data.models.SnappPusher;
import cab.snapp.passenger.data_access_layer.network.b;
import cab.snapp.snappnetwork.d;
import cab.snapp.snappnetwork.e;
import cab.snapp.snappnetwork.model.f;
import java.util.HashMap;
import javax.inject.Inject;
import org.eclipse.paho.a.a.w;

public final class a implements c {
    public static final String DRIVER_ACCEPTED_RIDE_EVENT = "driver_accepted_ride";
    public static final int DRIVER_ACCEPTED_RIDE_EVENT_CODE = 3;
    public static final String DRIVER_ARRIVED_EVENT = "driver_arrived";
    public static final int DRIVER_ARRIVED_EVENT_CODE = 4;
    public static final String MQTT_TOKEN = "mqttToken";
    public static final String NO_DRIVER_ACCEPTED_EVENT = "no_driver_accepted_request";
    public static final int NO_DRIVER_ACCEPTED_EVENT_CODE = 1;
    public static final String OFFERING_RESTARTED_EVENT = "offering_restarted";
    public static final int OFFERING_RESTARTED_EVENT_CODE = 9;
    public static final String ONLINE_PAYMENT_FINISHES_EVENT = "online_payment_finishes";
    public static final int ONLINE_PAYMENT_FINISHES_EVENT_CODE = 7;
    public static final String PASSENGER_BOARDED_EVENT = "passenger_boarded";
    public static final int PASSENGER_BOARDED_EVENT_CODE = 5;
    public static final String REALLOTMENT_EVENT = "ride_reallotted";
    public static final int REALLOTMENT_EVENT_CODE = 10;
    public static final String RECEIPT_CHANGE_EVENT = "receipt_change";
    public static final int RECEIPT_CHANGE_EVENT_CODE = 8;
    public static final String RIDE_CANCELLED_EVENT = "ride_cancelled";
    public static final int RIDE_CANCELLED_EVENT_CODE = 2;
    public static final String RIDE_FINISHED_EVENT = "ride_finished";
    public static final int RIDE_FINISHED_EVENT_CODE = 6;

    /* renamed from: a  reason: collision with root package name */
    private b f446a;

    /* renamed from: b  reason: collision with root package name */
    private String f447b;
    private cab.snapp.passenger.data_access_layer.network.b c;
    private final cab.snapp.snappnetwork.c d;

    @Inject
    public a(b bVar, cab.snapp.passenger.data_access_layer.network.b bVar2, cab.snapp.snappnetwork.c cVar) {
        this.f446a = bVar;
        this.c = bVar2;
        this.d = cVar;
    }

    public final void setRideId(String str) {
        this.f447b = str;
    }

    public final e<cab.snapp.a.b> getPollingRequest() {
        return this.c.getBaseInstance().GET(b.a.getEventPull(), cab.snapp.a.b.class).build();
    }

    public final e<f> getPollingSideRequest() {
        String str = this.f447b;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return this.c.getBaseInstance().GET(b.a.getRideVehicleLocation(this.f447b), f.class).build();
    }

    public final int getIntervalPeriod() {
        cab.snapp.passenger.c.b bVar = this.f446a;
        if (bVar == null || bVar.getConfig() == null) {
            return 15;
        }
        return this.f446a.getConfig().getEventInterval();
    }

    public final int getSideRequestIntervalPeriod() {
        cab.snapp.passenger.c.b bVar = this.f446a;
        if (bVar == null || bVar.getConfig() == null) {
            return 15;
        }
        return this.f446a.getConfig().getLocationInterval();
    }

    public final e<f> getAckRequest(cab.snapp.a.a aVar) {
        d baseInstance = this.c.getBaseInstance();
        return baseInstance.PATCH(b.a.getEventPull() + w.TOPIC_LEVEL_SEPARATOR + aVar.getEventId() + w.TOPIC_LEVEL_SEPARATOR + aVar.getAckId(), f.class).build();
    }

    public final cab.snapp.d.c.b getPusherConfig() {
        cab.snapp.passenger.c.b bVar = this.f446a;
        if (!(bVar == null || bVar.getConfig() == null)) {
            SnappPusher snappPusher = this.f446a.getConfig().getSnappPusher();
            if (snappPusher != null) {
                cab.snapp.d.c.b bVar2 = new cab.snapp.d.c.b();
                bVar2.setAppCluster(snappPusher.getCluster());
                bVar2.setAppKey(snappPusher.getAppKey());
                bVar2.setAuthUrl(snappPusher.getAuthUrl() + w.TOPIC_LEVEL_SEPARATOR);
                StringBuilder sb = new StringBuilder("private-");
                sb.append(snappPusher.getChannel());
                bVar2.setChannel(sb.toString());
                bVar2.setEvent("");
                return bVar2;
            }
        }
        return null;
    }

    public final e<f> getPusherAutorizeRequest(String str, String str2) {
        return this.d.buildModule(getPusherConfig().getAuthUrl(), getPusherAuthorizeHeader()).POST(f.class).addBodyParameter("channel_name", str).addBodyParameter("socket_id", str2).build();
    }

    public final cab.snapp.d.a.a getEmqConnectionData() {
        cab.snapp.passenger.c.b bVar = this.f446a;
        if (bVar == null || bVar.getConfig() == null || this.f446a.getConfig().getRealtime() == null || this.f446a.getConfig().getRealtime().getEmq() == null) {
            return null;
        }
        return this.f446a.getConfig().getRealtime().getEmq();
    }

    public final HashMap<String, Integer> getEvents() {
        HashMap<String, Integer> hashMap = new HashMap<>();
        hashMap.put(NO_DRIVER_ACCEPTED_EVENT, 1);
        hashMap.put(RIDE_CANCELLED_EVENT, 2);
        hashMap.put(DRIVER_ACCEPTED_RIDE_EVENT, 3);
        hashMap.put(DRIVER_ARRIVED_EVENT, 4);
        hashMap.put(PASSENGER_BOARDED_EVENT, 5);
        hashMap.put(RIDE_FINISHED_EVENT, 6);
        hashMap.put(ONLINE_PAYMENT_FINISHES_EVENT, 7);
        hashMap.put(RECEIPT_CHANGE_EVENT, 8);
        hashMap.put(OFFERING_RESTARTED_EVENT, 9);
        return hashMap;
    }

    public final HashMap<String, String> getPusherAuthorizeHeader() {
        return cab.snapp.passenger.data_access_layer.network.a.getPusherHeader();
    }
}
