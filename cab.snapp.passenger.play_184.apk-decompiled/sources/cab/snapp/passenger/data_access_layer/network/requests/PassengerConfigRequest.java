package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class PassengerConfigRequest extends d {
    @c("android_secure_id")
    private String androidSecureId;
    @c("os_version")
    private String androidVersionName;
    @c("carrier_name")
    private String carrierName;
    @c("device_name")
    private String deviceName;
    @c("device_type")
    private int deviceType = 1;
    @c("imei")
    private String imei;
    @c("locale")
    private String locale;
    @c("mac_address")
    private String macAddress;
    @c("version_code")
    private int versionCode;

    public int getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(int i) {
        this.deviceType = i;
    }

    public String getMacAddress() {
        return this.macAddress;
    }

    public void setMacAddress(String str) {
        this.macAddress = str;
    }

    public String getCarrierName() {
        return this.carrierName;
    }

    public void setCarrierName(String str) {
        this.carrierName = str;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public String getAndroidSecureId() {
        return this.androidSecureId;
    }

    public void setAndroidSecureId(String str) {
        this.androidSecureId = str;
    }

    public String getAndroidVersionName() {
        return this.androidVersionName;
    }

    public void setAndroidVersionName(String str) {
        this.androidVersionName = str;
    }

    public String getDeviceName() {
        return this.deviceName;
    }

    public void setDeviceName(String str) {
        this.deviceName = str;
    }

    public String getImei() {
        return this.imei;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public String toString() {
        return "PassengerConfigRequest{deviceType=" + this.deviceType + ", macAddress='" + this.macAddress + '\'' + ", carrierName='" + this.carrierName + '\'' + ", versionCode=" + this.versionCode + ", androidSecureId='" + this.androidSecureId + '\'' + ", androidVersionName='" + this.androidVersionName + '\'' + ", deviceName='" + this.deviceName + '\'' + ", imei='" + this.imei + '\'' + ", locale='" + this.locale + '\'' + '}';
    }
}
