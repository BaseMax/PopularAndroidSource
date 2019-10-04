package cab.snapp.passenger.data.models;

import dagger.a.b;

public final class RideInformation_Factory implements b<RideInformation> {
    private static final RideInformation_Factory INSTANCE = new RideInformation_Factory();

    public final RideInformation get() {
        return new RideInformation();
    }

    public static b<RideInformation> create() {
        return INSTANCE;
    }
}
