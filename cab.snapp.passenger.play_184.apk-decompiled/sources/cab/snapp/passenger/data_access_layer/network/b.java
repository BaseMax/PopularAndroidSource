package cab.snapp.passenger.data_access_layer.network;

import android.location.Location;
import androidx.core.app.NotificationCompat;
import cab.snapp.snappnetwork.c;
import cab.snapp.snappnetwork.d;
import org.eclipse.paho.a.a.w;

public final class b {
    public static String BASE_URL = "https://api.snapp.site/v2/passenger/";
    public static String DEV_1 = "Dev_1";
    public static String DEV_2 = "Dev_2";
    public static String DEV_3 = "Dev_3";
    public static String DEV_CLOUD_1 = "Dev_Cloud_1";
    public static String DEV_CLOUD_2 = "Dev_Cloud_2";
    public static String DEV_CLOUD_3 = "Dev_Cloud_3";
    public static String DEV_CLOUD_5 = "Dev_Cloud_5";
    public static String MASTER_REP = "Master_Replica";
    public static String SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY = "switch_passenger_dynamic_endpoint_pref_key";
    public static String SWITCH_PASSENGER_ENDPOINT_PREF_KEY = "switch_passenger_endpoint_pref_key";

    /* renamed from: a  reason: collision with root package name */
    private static String f481a = "https://oauth-passenger.snapp.site/v1/auth/";

    /* renamed from: b  reason: collision with root package name */
    private static String f482b = "https://locations.snapp.site/v1/passenger/";
    private static String c = "https://gmaps.snapp.site/maps/api/place/";
    private static String d = "https://super-finance.snapp.site/api/v1/charge/";
    private d e;
    private d f;
    private d g;
    private d h;
    private d i;
    private final c j;
    private final cab.snapp.b.a k;

    public static class a {
        public static String getAbout() {
            return "about";
        }

        public static String getChargeOperators() {
            return "operators/payment";
        }

        public static String getConfig() {
            return "config";
        }

        public static String getCredit() {
            return "balance";
        }

        public static String getEmail() {
            return NotificationCompat.CATEGORY_EMAIL;
        }

        public static String getEmqToken() {
            return "emq/token";
        }

        public static String getEventPull() {
            return NotificationCompat.CATEGORY_EVENT;
        }

        public static String getFavorite() {
            return "place";
        }

        public static String getFinance() {
            return "finance";
        }

        public static String getFollowedApp() {
            return "followed-apps/report";
        }

        public static String getGeocode() {
            return "geocode";
        }

        public static String getGooglePlacesCache() {
            return "places/search";
        }

        public static String getInbox() {
            return "inbox";
        }

        public static String getJek() {
            return "jek";
        }

        public static String getLoginByPhoneNumber() {
            return "otp";
        }

        public static String getMessages() {
            return "inbox";
        }

        public static String getOptionalConfig() {
            return "optional-config?device_type=1";
        }

        public static String getOtp() {
            return "otp";
        }

        public static String getPin() {
            return "pin";
        }

        public static String getPrice() {
            return "price";
        }

        public static String getProfile() {
            return "profile";
        }

        public static String getRecentlyMobileNumber() {
            return "histories/recent/numbers";
        }

        public static String getRegisterPhone() {
            return "phone";
        }

        public static String getRegisterPhoneByCall() {
            return "phoneCall";
        }

        public static String getRegisterPush() {
            return "push-token";
        }

        public static String getRide() {
            return "ride";
        }

        public static String getRideRatingReasons() {
            return "rating-reasons";
        }

        public static String getSettings() {
            return "settings";
        }

        public static String getSignup() {
            return "user";
        }

        public static String getSmappLog() {
            return "log";
        }

        public static String getSnappCharge() {
            return "submit";
        }

        public static String getTermsAndConditionLink() {
            return "http://snapp.ir/terms";
        }

        public static String getTicket() {
            return "ticket";
        }

        public static String getTicketTree() {
            return "ticket-tree";
        }

        public static String getTransactionTicketTree() {
            return "ticket-tree/transactions";
        }

        public static String postRegisterEmail() {
            return "change/email";
        }

        public static String getChangeLogSeen(int i) {
            return "update/" + String.valueOf(i) + "/seen";
        }

        public static String getStPin() {
            return getPin() + "/service";
        }

        public static String getStPrice(String str) {
            return getPrice() + "/s/1/" + str;
        }

        public static String getJekContent() {
            return getJek() + "/content";
        }

        public static String getStPriceNew() {
            return getPrice() + "/box";
        }

        public static String getVerifyPhone() {
            return getRegisterPhone() + "/verify";
        }

        public static String getRate(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/rate";
        }

        public static String getRedeemVoucher() {
            return getFinance() + "/voucher";
        }

        public static String getOnlinePayment() {
            return getFinance() + "/online-payment";
        }

        public static String getAsanPardakhtPayment() {
            return getFinance() + "/online-ap-wallet-payment";
        }

        public static String getJiringPayment() {
            return getFinance() + "/jiring-payment";
        }

        public static String getInRidePayment() {
            return getFinance() + "/inride/payment";
        }

        public static String getRideMessageList() {
            return getRide() + "/message";
        }

        public static String getRideHistoryPage(int i) {
            return getRide() + "/history?page=" + i;
        }

        public static String getCreditHistory() {
            return getFinance() + "/history";
        }

        public static String getRideReceipt(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/receipt";
        }

        public static String getCancelRide(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/cancel/inride";
        }

        public static String getCancelRideRequest(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/cancel/waiting";
        }

        public static String getVoucherValidation(String str) {
            return getRedeemVoucher() + w.TOPIC_LEVEL_SEPARATOR + str;
        }

        public static String getRideVehicleLocation(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/driver-location";
        }

        public static String getForgotPassword(String str) {
            return getEmail() + "/forget-password/" + str;
        }

        public static String patchChangeSettings(String str, String str2) {
            return getSettings() + w.TOPIC_LEVEL_SEPARATOR + str + w.TOPIC_LEVEL_SEPARATOR + str2;
        }

        public static String getFingerPrint(String str) {
            return "fingerprint/".concat(String.valueOf(str));
        }

        public static String getFavoritePlace(int i) {
            return "place/".concat(String.valueOf(i));
        }

        public static String getDeleteFavorite(int i) {
            return getFavorite() + w.TOPIC_LEVEL_SEPARATOR + i;
        }

        public static String getUpdateOptions(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/price/update/service";
        }

        public static String getEditOptions(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/price/service";
        }

        public static String getUpdateVoucher(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/voucher";
        }

        public static String sendCallAnalytics(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/stat/call";
        }

        public static String sendRideEta(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/stat/eta";
        }

        public static String getCachedPlaces(String str) {
            return "places/get?place_id=".concat(String.valueOf(str));
        }

        public static String getInitSnappCall(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/call/new";
        }

        public static String getCallRespond(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/call/respond";
        }

        public static String getCallFeedback(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/call/feedback";
        }

        public static String getEmailVerfication(String str) {
            return "email_verifications/".concat(String.valueOf(str));
        }

        public static String getSmappAutoComplete(String str, String str2, Location location, String str3) {
            String str4 = "autocomplete/json?input=" + str + "&language=" + str2;
            if (location != null) {
                str4 = str4 + "&location=" + location.getLatitude() + "," + location.getLongitude();
            }
            return str4 + "&radius=60000&token=" + str3;
        }

        public static String getSmappPlaceDetail(String str, String str2, String str3) {
            return "details/json?placeid=" + str + "&language=" + str2 + "&region=IR&token=" + str3;
        }

        public static String getMessageToDriver(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/message-by-id";
        }

        public static String getRidePaymentStatus(String str) {
            return getRide() + w.TOPIC_LEVEL_SEPARATOR + str + "/payment-status";
        }

        public static String getApWalletRegistration() {
            return getFinance() + "/ap-wallet/auth";
        }

        public static String getTransferSnappCreditToAp() {
            return getFinance() + "/transfer-ap-credit";
        }

        public static String getChargeHistoryPage(int i, int i2) {
            return "histories?page=" + i + "&size=" + i2 + "&sort=id,desc";
        }

        public static String getOperatorChargeConfig(long j) {
            return "packages/operators/".concat(String.valueOf(j));
        }
    }

    public b(c cVar, cab.snapp.b.a aVar) {
        this.j = cVar;
        this.k = aVar;
        initialize(aVar);
    }

    public final void initialize(cab.snapp.b.a aVar) {
        if (aVar != null && cab.snapp.passenger.f.a.isEndpointSwitchEnabled()) {
            if (cab.snapp.passenger.f.a.isDevCloudQAEnabled()) {
                String str = this.k.containsKey(SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY) ? (String) this.k.get(SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY) : "";
                BASE_URL = String.format(cab.snapp.passenger.c.baseApiCloudQA, new Object[]{str});
                f481a = String.format(cab.snapp.passenger.c.OAuthCloudQA, new Object[]{str});
                f482b = String.format(cab.snapp.passenger.c.locationsBaseCloudQA, new Object[]{str});
                c = cab.snapp.passenger.c.smappBaseApi;
                reset();
                this.e = this.j.buildModule(f481a, a.getOauthHeaders());
                this.f = this.j.buildModule(BASE_URL, a.getPublicHeaders());
                this.g = this.j.buildModule(f482b, a.getPublicHeaders());
                this.h = this.j.buildModule(c, a.getPublicHeaders());
                this.i = this.j.buildModule(d, a.getPublicHeaders());
            } else if (aVar.containsKey(SWITCH_PASSENGER_ENDPOINT_PREF_KEY)) {
                String str2 = (String) aVar.get(SWITCH_PASSENGER_ENDPOINT_PREF_KEY);
                if (str2 == null) {
                    a();
                } else if (str2.equals(DEV_1)) {
                    BASE_URL = "https://api.snapp.site/v2/passenger/";
                    f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                    f482b = "https://locations.snapp.site/v1/passenger/";
                    c = cab.snapp.passenger.c.smappBaseApi;
                } else if (str2.equals(DEV_2)) {
                    BASE_URL = "https://api.snapp.site/v2/passenger/";
                    f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                    f482b = "https://locations.snapp.site/v1/passenger/";
                    c = cab.snapp.passenger.c.smappBaseApi;
                } else if (str2.equals(DEV_3)) {
                    BASE_URL = "https://api.snapp.site/v2/passenger/";
                    f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                    f482b = "https://locations.snapp.site/v1/passenger/";
                    c = cab.snapp.passenger.c.smappBaseApi;
                } else if (str2.equals(DEV_CLOUD_1)) {
                    BASE_URL = "https://api.snapp.site/v2/passenger/";
                    f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                    f482b = "https://locations.snapp.site/v1/passenger/";
                    c = cab.snapp.passenger.c.smappBaseApi;
                } else if (str2.equals(DEV_CLOUD_2)) {
                    BASE_URL = "https://api.snapp.site/v2/passenger/";
                    f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                    f482b = "https://locations.snapp.site/v1/passenger/";
                    c = cab.snapp.passenger.c.smappBaseApi;
                } else if (str2.equals(DEV_CLOUD_3)) {
                    BASE_URL = "https://api.snapp.site/v2/passenger/";
                    f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                    f482b = "https://locations.snapp.site/v1/passenger/";
                    c = cab.snapp.passenger.c.smappBaseApi;
                } else if (str2.equals(DEV_CLOUD_5)) {
                    BASE_URL = "https://api.snapp.site/v2/passenger/";
                    f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                    f482b = "https://locations.snapp.site/v1/passenger/";
                    c = cab.snapp.passenger.c.smappBaseApi;
                } else {
                    if (str2.equals(MASTER_REP)) {
                        BASE_URL = "https://api.snapp.site/v2/passenger/";
                        f481a = "https://oauth-passenger.snapp.site/v1/auth/";
                        f482b = "https://locations.snapp.site/v1/passenger/";
                        c = cab.snapp.passenger.c.smappBaseApi;
                    }
                }
            } else {
                a();
            }
        }
    }

    private static void a() {
        BASE_URL = "https://api.snapp.site/v2/passenger/";
        f481a = "https://oauth-passenger.snapp.site/v1/auth/";
        f482b = "https://locations.snapp.site/v1/passenger/";
        c = cab.snapp.passenger.c.smappBaseApi;
    }

    public final d getAuthInstance() {
        if (this.e == null) {
            this.e = this.j.buildModule(f481a, a.getOauthHeaders());
        }
        return this.e;
    }

    public final d getBaseInstance() {
        if (this.f == null) {
            this.f = this.j.buildModule(BASE_URL, a.getPublicHeaders());
        }
        return this.f;
    }

    public final d getLocationInstance() {
        if (this.g == null) {
            this.g = this.j.buildModule(f482b, a.getPublicHeaders());
        }
        return this.g;
    }

    public final d getSmappInstance() {
        if (this.h == null) {
            this.h = this.j.buildModule(c, a.getPublicHeaders());
        }
        return this.h;
    }

    public final d getChargeInstance() {
        if (this.i == null) {
            this.i = this.j.buildModule(d, a.getPublicHeaders());
        }
        return this.i;
    }

    public final void reset() {
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
    }
}
