package cab.snapp;

import cab.snapp.a.a;
import cab.snapp.a.b;
import cab.snapp.snappnetwork.e;
import cab.snapp.snappnetwork.model.f;
import java.util.HashMap;

public interface c {
    e<f> getAckRequest(a aVar);

    cab.snapp.d.a.a getEmqConnectionData();

    HashMap<String, Integer> getEvents();

    int getIntervalPeriod();

    e<b> getPollingRequest();

    e<f> getPollingSideRequest();

    e<f> getPusherAutorizeRequest(String str, String str2);

    cab.snapp.d.c.b getPusherConfig();

    int getSideRequestIntervalPeriod();
}
