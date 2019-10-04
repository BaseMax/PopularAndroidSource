package cab.snapp.passenger.f;

import cab.snapp.passenger.c;

public final class a {
    public static boolean isDevCloudQAEnabled() {
        return false;
    }

    public static boolean isEndpointSwitchEnabled() {
        return !c.SEND_ANALYTICS_DATA.booleanValue() && c.SEND_STAGING_ANALYTICS_DATA.booleanValue();
    }
}
