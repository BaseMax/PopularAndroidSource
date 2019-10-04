package cab.snapp.passenger.data.models;

public class RideStatuses {
    public static final int SNAPP_RIDE_STATUS_ACCEPTED = 2;
    public static final int SNAPP_RIDE_STATUS_ARRIVED = 3;
    public static final int SNAPP_RIDE_STATUS_ARRIVED_TO_FIRST_DESTINATION = 16;
    public static final int SNAPP_RIDE_STATUS_ARRIVED_TO_SECOND_DESTINATION = 17;
    public static final int SNAPP_RIDE_STATUS_BOARDED = 4;
    public static final int SNAPP_RIDE_STATUS_CANCELED_BY_BACKOFFICE = 8;
    public static final int SNAPP_RIDE_STATUS_CANCELED_BY_CUSTOMER = 6;
    public static final int SNAPP_RIDE_STATUS_CANCELED_BY_DRIVER = 7;
    public static final int SNAPP_RIDE_STATUS_COULD_NOT_CALCULATE_PRICE = 10;
    public static final int SNAPP_RIDE_STATUS_FINISHED = 5;
    public static final int SNAPP_RIDE_STATUS_NOBODY_ACCEPTED = 9;
    public static final int SNAPP_RIDE_STATUS_STARTED = 1;
    public static final int SNAPP_RIDE_STATUS_UNKNOWN_STATE = -1;
}
