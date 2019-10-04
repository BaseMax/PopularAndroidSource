package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import h.f.b.j;

/* compiled from: RequestPropertiesEntity.kt */
public final class DeviceInfo {
    public final String adId;
    public final boolean adOptOut;
    public final String androidId;
    public String city;
    public String country;
    public String cpu;
    public String device;
    public int dpi;
    public String hardware;
    public final int height;
    public String locale;
    public String manufacturer;
    public int mcc;
    public int mnc;
    public String model;
    public String osBuild;
    public String product;
    public String province;
    public int sdkVersion;
    public final int width;

    public DeviceInfo(int i2, String str, String str2, String str3, String str4, String str5, int i3, int i4, String str6, String str7, String str8, String str9, String str10, int i5, int i6, int i7, String str11, String str12, boolean z, String str13) {
        String str14 = str;
        String str15 = str2;
        String str16 = str3;
        String str17 = str4;
        String str18 = str5;
        String str19 = str6;
        String str20 = str7;
        String str21 = str8;
        String str22 = str9;
        String str23 = str10;
        String str24 = str11;
        String str25 = str12;
        String str26 = str13;
        j.b(str14, "model");
        j.b(str15, "product");
        j.b(str16, "osBuild");
        j.b(str17, "hardware");
        j.b(str18, "device");
        j.b(str19, "locale");
        j.b(str20, "city");
        j.b(str21, "province");
        j.b(str22, "country");
        j.b(str23, "cpu");
        j.b(str24, "manufacturer");
        j.b(str25, "adId");
        j.b(str26, "androidId");
        this.sdkVersion = i2;
        this.model = str14;
        this.product = str15;
        this.osBuild = str16;
        this.hardware = str17;
        this.device = str18;
        this.mnc = i3;
        this.mcc = i4;
        this.locale = str19;
        this.city = str20;
        this.province = str21;
        this.country = str22;
        this.cpu = str23;
        this.dpi = i5;
        this.width = i6;
        this.height = i7;
        this.manufacturer = str24;
        this.adId = str25;
        this.adOptOut = z;
        this.androidId = str26;
    }

    public static /* synthetic */ DeviceInfo copy$default(DeviceInfo deviceInfo, int i2, String str, String str2, String str3, String str4, String str5, int i3, int i4, String str6, String str7, String str8, String str9, String str10, int i5, int i6, int i7, String str11, String str12, boolean z, String str13, int i8, Object obj) {
        int i9;
        int i10;
        int i11;
        String str14;
        String str15;
        String str16;
        String str17;
        boolean z2;
        DeviceInfo deviceInfo2 = deviceInfo;
        int i12 = i8;
        int i13 = (i12 & 1) != 0 ? deviceInfo2.sdkVersion : i2;
        String str18 = (i12 & 2) != 0 ? deviceInfo2.model : str;
        String str19 = (i12 & 4) != 0 ? deviceInfo2.product : str2;
        String str20 = (i12 & 8) != 0 ? deviceInfo2.osBuild : str3;
        String str21 = (i12 & 16) != 0 ? deviceInfo2.hardware : str4;
        String str22 = (i12 & 32) != 0 ? deviceInfo2.device : str5;
        int i14 = (i12 & 64) != 0 ? deviceInfo2.mnc : i3;
        int i15 = (i12 & 128) != 0 ? deviceInfo2.mcc : i4;
        String str23 = (i12 & 256) != 0 ? deviceInfo2.locale : str6;
        String str24 = (i12 & 512) != 0 ? deviceInfo2.city : str7;
        String str25 = (i12 & 1024) != 0 ? deviceInfo2.province : str8;
        String str26 = (i12 & 2048) != 0 ? deviceInfo2.country : str9;
        String str27 = (i12 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? deviceInfo2.cpu : str10;
        int i16 = (i12 & 8192) != 0 ? deviceInfo2.dpi : i5;
        int i17 = (i12 & 16384) != 0 ? deviceInfo2.width : i6;
        if ((i12 & 32768) != 0) {
            i9 = i17;
            i10 = deviceInfo2.height;
        } else {
            i9 = i17;
            i10 = i7;
        }
        if ((i12 & LogFileManager.MAX_LOG_SIZE) != 0) {
            i11 = i10;
            str14 = deviceInfo2.manufacturer;
        } else {
            i11 = i10;
            str14 = str11;
        }
        if ((i12 & 131072) != 0) {
            str15 = str14;
            str16 = deviceInfo2.adId;
        } else {
            str15 = str14;
            str16 = str12;
        }
        if ((i12 & 262144) != 0) {
            str17 = str16;
            z2 = deviceInfo2.adOptOut;
        } else {
            str17 = str16;
            z2 = z;
        }
        return deviceInfo.copy(i13, str18, str19, str20, str21, str22, i14, i15, str23, str24, str25, str26, str27, i16, i9, i11, str15, str17, z2, (i12 & 524288) != 0 ? deviceInfo2.androidId : str13);
    }

    public final int component1() {
        return this.sdkVersion;
    }

    public final String component10() {
        return this.city;
    }

    public final String component11() {
        return this.province;
    }

    public final String component12() {
        return this.country;
    }

    public final String component13() {
        return this.cpu;
    }

    public final int component14() {
        return this.dpi;
    }

    public final int component15() {
        return this.width;
    }

    public final int component16() {
        return this.height;
    }

    public final String component17() {
        return this.manufacturer;
    }

    public final String component18() {
        return this.adId;
    }

    public final boolean component19() {
        return this.adOptOut;
    }

    public final String component2() {
        return this.model;
    }

    public final String component20() {
        return this.androidId;
    }

    public final String component3() {
        return this.product;
    }

    public final String component4() {
        return this.osBuild;
    }

    public final String component5() {
        return this.hardware;
    }

    public final String component6() {
        return this.device;
    }

    public final int component7() {
        return this.mnc;
    }

    public final int component8() {
        return this.mcc;
    }

    public final String component9() {
        return this.locale;
    }

    public final DeviceInfo copy(int i2, String str, String str2, String str3, String str4, String str5, int i3, int i4, String str6, String str7, String str8, String str9, String str10, int i5, int i6, int i7, String str11, String str12, boolean z, String str13) {
        int i8 = i2;
        j.b(str, "model");
        j.b(str2, "product");
        j.b(str3, "osBuild");
        j.b(str4, "hardware");
        j.b(str5, "device");
        j.b(str6, "locale");
        j.b(str7, "city");
        j.b(str8, "province");
        j.b(str9, "country");
        j.b(str10, "cpu");
        j.b(str11, "manufacturer");
        j.b(str12, "adId");
        j.b(str13, "androidId");
        DeviceInfo deviceInfo = new DeviceInfo(i2, str, str2, str3, str4, str5, i3, i4, str6, str7, str8, str9, str10, i5, i6, i7, str11, str12, z, str13);
        return deviceInfo;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeviceInfo) {
                DeviceInfo deviceInfo = (DeviceInfo) obj;
                if ((this.sdkVersion == deviceInfo.sdkVersion) && j.a((Object) this.model, (Object) deviceInfo.model) && j.a((Object) this.product, (Object) deviceInfo.product) && j.a((Object) this.osBuild, (Object) deviceInfo.osBuild) && j.a((Object) this.hardware, (Object) deviceInfo.hardware) && j.a((Object) this.device, (Object) deviceInfo.device)) {
                    if (this.mnc == deviceInfo.mnc) {
                        if ((this.mcc == deviceInfo.mcc) && j.a((Object) this.locale, (Object) deviceInfo.locale) && j.a((Object) this.city, (Object) deviceInfo.city) && j.a((Object) this.province, (Object) deviceInfo.province) && j.a((Object) this.country, (Object) deviceInfo.country) && j.a((Object) this.cpu, (Object) deviceInfo.cpu)) {
                            if (this.dpi == deviceInfo.dpi) {
                                if (this.width == deviceInfo.width) {
                                    if ((this.height == deviceInfo.height) && j.a((Object) this.manufacturer, (Object) deviceInfo.manufacturer) && j.a((Object) this.adId, (Object) deviceInfo.adId)) {
                                        if (!(this.adOptOut == deviceInfo.adOptOut) || !j.a((Object) this.androidId, (Object) deviceInfo.androidId)) {
                                            return false;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getAdId() {
        return this.adId;
    }

    public final boolean getAdOptOut() {
        return this.adOptOut;
    }

    public final String getAndroidId() {
        return this.androidId;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getCpu() {
        return this.cpu;
    }

    public final String getDevice() {
        return this.device;
    }

    public final int getDpi() {
        return this.dpi;
    }

    public final String getHardware() {
        return this.hardware;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getLocale() {
        return this.locale;
    }

    public final String getManufacturer() {
        return this.manufacturer;
    }

    public final int getMcc() {
        return this.mcc;
    }

    public final int getMnc() {
        return this.mnc;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getOsBuild() {
        return this.osBuild;
    }

    public final String getProduct() {
        return this.product;
    }

    public final String getProvince() {
        return this.province;
    }

    public final int getSdkVersion() {
        return this.sdkVersion;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i2 = this.sdkVersion * 31;
        String str = this.model;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.product;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.osBuild;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.hardware;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.device;
        int hashCode5 = (((((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.mnc) * 31) + this.mcc) * 31;
        String str6 = this.locale;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.city;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.province;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.country;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.cpu;
        int hashCode10 = (((((((hashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31) + this.dpi) * 31) + this.width) * 31) + this.height) * 31;
        String str11 = this.manufacturer;
        int hashCode11 = (hashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.adId;
        int hashCode12 = (hashCode11 + (str12 != null ? str12.hashCode() : 0)) * 31;
        boolean z = this.adOptOut;
        if (z) {
            z = true;
        }
        int i4 = (hashCode12 + (z ? 1 : 0)) * 31;
        String str13 = this.androidId;
        if (str13 != null) {
            i3 = str13.hashCode();
        }
        return i4 + i3;
    }

    public final void setCity(String str) {
        j.b(str, "<set-?>");
        this.city = str;
    }

    public final void setCountry(String str) {
        j.b(str, "<set-?>");
        this.country = str;
    }

    public final void setCpu(String str) {
        j.b(str, "<set-?>");
        this.cpu = str;
    }

    public final void setDevice(String str) {
        j.b(str, "<set-?>");
        this.device = str;
    }

    public final void setDpi(int i2) {
        this.dpi = i2;
    }

    public final void setHardware(String str) {
        j.b(str, "<set-?>");
        this.hardware = str;
    }

    public final void setLocale(String str) {
        j.b(str, "<set-?>");
        this.locale = str;
    }

    public final void setManufacturer(String str) {
        j.b(str, "<set-?>");
        this.manufacturer = str;
    }

    public final void setMcc(int i2) {
        this.mcc = i2;
    }

    public final void setMnc(int i2) {
        this.mnc = i2;
    }

    public final void setModel(String str) {
        j.b(str, "<set-?>");
        this.model = str;
    }

    public final void setOsBuild(String str) {
        j.b(str, "<set-?>");
        this.osBuild = str;
    }

    public final void setProduct(String str) {
        j.b(str, "<set-?>");
        this.product = str;
    }

    public final void setProvince(String str) {
        j.b(str, "<set-?>");
        this.province = str;
    }

    public final void setSdkVersion(int i2) {
        this.sdkVersion = i2;
    }

    public String toString() {
        return "DeviceInfo(sdkVersion=" + this.sdkVersion + ", model=" + this.model + ", product=" + this.product + ", osBuild=" + this.osBuild + ", hardware=" + this.hardware + ", device=" + this.device + ", mnc=" + this.mnc + ", mcc=" + this.mcc + ", locale=" + this.locale + ", city=" + this.city + ", province=" + this.province + ", country=" + this.country + ", cpu=" + this.cpu + ", dpi=" + this.dpi + ", width=" + this.width + ", height=" + this.height + ", manufacturer=" + this.manufacturer + ", adId=" + this.adId + ", adOptOut=" + this.adOptOut + ", androidId=" + this.androidId + ")";
    }
}
