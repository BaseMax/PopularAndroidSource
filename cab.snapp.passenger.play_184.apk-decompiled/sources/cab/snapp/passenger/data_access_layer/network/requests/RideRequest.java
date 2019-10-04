package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class RideRequest extends d {
    @c("destination_details")
    private String destinationDetails;
    @c("destination_lat")
    private double destinationLatitude;
    @c("destination_lng")
    private double destinationLongitude;
    @c("destination_place_id")
    private int destinationPlaceId;
    @c("extra_destination_lat")
    private Double extraDestinationLatitude;
    @c("extra_destination_lng")
    private Double extraDestinationLongitude;
    @c("extra_info")
    private String extraInfo;
    @c("services")
    private boolean isPackageDelivery;
    @c("is_paid_by_recipient")
    private boolean isPaidByRecipient;
    @c("round_trip")
    private boolean isRoundTrip;
    @c("origin_details")
    private String originDetails;
    @c("origin_lat")
    private double originLatitude;
    @c("origin_lng")
    private double originLongitude;
    @c("package_info")
    private String packageInfo;
    @c("package_value")
    private String packageValue;
    @c("recipient_cellphone")
    private String recipientCellphone;
    @c("recipient_name")
    private String recipientName;
    @c("service_type")
    private int serviceType;
    @c("voucher")
    private String voucher;
    @c("voucher_code")
    private String voucherCode;
    @c("waiting")
    private String waitingKey;

    public double getOriginLatitude() {
        return this.originLatitude;
    }

    public void setOriginLatitude(double d) {
        this.originLatitude = d;
    }

    public double getOriginLongitude() {
        return this.originLongitude;
    }

    public void setOriginLongitude(double d) {
        this.originLongitude = d;
    }

    public String getOriginDetails() {
        return this.originDetails;
    }

    public void setOriginDetails(String str) {
        this.originDetails = str;
    }

    public double getDestinationLatitude() {
        return this.destinationLatitude;
    }

    public void setDestinationLatitude(double d) {
        this.destinationLatitude = d;
    }

    public double getDestinationLongitude() {
        return this.destinationLongitude;
    }

    public void setDestinationLongitude(double d) {
        this.destinationLongitude = d;
    }

    public String getDestinationDetails() {
        return this.destinationDetails;
    }

    public void setDestinationDetails(String str) {
        this.destinationDetails = str;
    }

    public int getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(int i) {
        this.serviceType = i;
    }

    public String getVoucher() {
        return this.voucher;
    }

    public void setVoucher(String str) {
        this.voucher = str;
    }

    public String getVoucherCode() {
        return this.voucherCode;
    }

    public void setVoucherCode(String str) {
        this.voucherCode = str;
    }

    public int getDestinationPlaceId() {
        return this.destinationPlaceId;
    }

    public void setDestinationPlaceId(int i) {
        this.destinationPlaceId = i;
    }

    public Double getExtraDestinationLatitude() {
        return this.extraDestinationLatitude;
    }

    public void setExtraDestinationLatitude(Double d) {
        this.extraDestinationLatitude = d;
    }

    public Double getExtraDestinationLongitude() {
        return this.extraDestinationLongitude;
    }

    public void setExtraDestinationLongitude(Double d) {
        this.extraDestinationLongitude = d;
    }

    public boolean isRoundTrip() {
        return this.isRoundTrip;
    }

    public void setRoundTrip(boolean z) {
        this.isRoundTrip = z;
    }

    public String getWaitingKey() {
        return this.waitingKey;
    }

    public void setWaitingKey(String str) {
        this.waitingKey = str;
    }

    public boolean isPackageDelivery() {
        return this.isPackageDelivery;
    }

    public void setPackageDelivery(boolean z) {
        this.isPackageDelivery = z;
    }

    public String getPackageValue() {
        return this.packageValue;
    }

    public void setPackageValue(String str) {
        this.packageValue = str;
    }

    public String getPackageInfo() {
        return this.packageInfo;
    }

    public void setPackageInfo(String str) {
        this.packageInfo = str;
    }

    public String getExtraInfo() {
        return this.extraInfo;
    }

    public void setExtraInfo(String str) {
        this.extraInfo = str;
    }

    public String getRecipientName() {
        return this.recipientName;
    }

    public void setRecipientName(String str) {
        this.recipientName = str;
    }

    public String getRecipientCellphone() {
        return this.recipientCellphone;
    }

    public void setRecipientCellphone(String str) {
        this.recipientCellphone = str;
    }

    public boolean isPaidByRecipient() {
        return this.isPaidByRecipient;
    }

    public void setPaidByRecipient(boolean z) {
        this.isPaidByRecipient = z;
    }
}
