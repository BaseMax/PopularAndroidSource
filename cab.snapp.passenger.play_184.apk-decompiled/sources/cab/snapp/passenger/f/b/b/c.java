package cab.snapp.passenger.f.b.b;

import android.app.Application;
import androidx.core.app.NotificationCompat;
import androidx.core.os.EnvironmentCompat;
import cab.snapp.passenger.data.models.AppmetricaEventParamsModel;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.f.b.b;
import cab.snapp.passenger.play.R;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustConfig;
import com.google.android.gms.analytics.e;
import com.google.android.gms.analytics.h;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.iid.FirebaseInstanceId;
import com.webengage.sdk.android.WebEngage;
import java.util.HashMap;
import java.util.Map;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f558a;

    /* renamed from: b  reason: collision with root package name */
    private String f559b = "";
    private h c;
    private ProfileResponse d;
    private CreditResponse e;

    public static class a {
        public static String APP_OPEN = "abaah6";
        public static String APP_OPEN_JEK = "9sia0j";
        public static String APP_OPEN_NON_JEK = "a7m5xc";
        public static String BOX_SERVICE_TYPE_BOARDED = "7a0wfh";
        public static String BOX_SERVICE_TYPE_RIDE_REQUEST = "1gptzq";
        public static String ECO_RIDE_REQUEST_JEK = "vwouvm";
        public static String ECO_RIDE_REQUEST_NON_JEK = "82oqec";
        public static String ECO_SERVICE_TYPE_BOARDED = "p3ptoc";
        public static String ECO_SERVICE_TYPE_RIDE_REQUEST = "8kb0ye";
        public static String FINISH_RIDE = "p3ptoc";
        public static String FIRST_RIDE_GHOST = "c9uj5x";
        public static String FIRST_RIDE_REQUEST = "14m7a6";
        public static String FIRST_TIME_PASSENGER_BOARDED = "n2cr43";
        public static String FOOD_SERVICE_TYPE_BOARDED = "26sfui";
        public static String FOOD_SERVICE_TYPE_RIDE_REQUEST = "mir308";
        public static String HOMESCREEN_BANNER_1 = "r0l29h";
        public static String HOMESCREEN_BANNER_2 = "xe2f63";
        public static String HOMESCREEN_CAB_OPEN = "qb8odt";
        public static String HOMESCREEN_CHARGE_OPEN = "sywcqe";
        public static String HOMESCREEN_FLIGHT_OPEN = "p04iuk";
        public static String HOMESCREEN_FOOD_OPEN = "9x8r3q";
        public static String HOMESCREEN_HOTEL_OPEN = "7h1azz";
        public static String HOMESCREEN_MALL_OPEN = "8ha8nn";
        public static String HOMESCREEN_OPEN = "6qf9bi";
        public static String PLUS_SERVICE_TYPE_BOARDED = "p7x94e";
        public static String PLUS_SERVICE_TYPE_RIDE_REQUEST = "tuhb46";
        public static String REFERRAL_ITEM_CLICK = "6mvfqd";
        public static String ROSE_SERVICE_TYPE_BOARDED = "4zmte2";
        public static String ROSE_SERVICE_TYPE_RIDE_REQUEST = "hse1xo";
        public static String SIGN_UP_WITH_EMAIL = "usuua4";
        public static String SIGN_UP_WITH_EMAIL_GHOST = "oiwobo";
        public static String SIGN_UP_WITH_GOOGLE = "7totie";
        public static String SIGN_UP_WITH_GOOGLE_GHOST = "eum712";
    }

    public static class b {
        public static String ALERT_CONFIRMATION_FOR_CANCEL_RIDE = "[Alert][ConfirmationForCancelRide]";
        public static String ALERT_CONFIRM_BEFORE_RIDE = "[Alert][confirmBeforeRide]";
        public static String ALERT_COULD_NOT_CALCULATE_RIDE_PRICE_SHOW = "[Alert][CouldNotCalculateRidePrice][show]";
        public static String ALERT_GPS_ERROR = "[Alert][GPSError]";
        public static String ALERT_PRE_RIDE_DISCOUNT = "[Alert][preride][discount]";
        public static String ALERT_PRE_RIDE_SURGE = "[Alert][preride][surge]";
        public static String ALERT_RIDE_CANCEL_BY_SUPPORT = "[Alert][rideCancelBySupport]";
        public static String ALERT_RIDE_IS_NOT_ACCEPTED_YET = "[Alert][RideIsNotAcceptedYet]";
        public static String ALERT_USER_IS_BLOCK = "[Alert][userIsBlock]";
        public static String ALERT_WRONG_ORIGIN_HELALAHMAR = "[Alert][WrongOriginHelalahmar]";
        public static String ARRIVED = "Arrived";
        public static String Assigned = "Assigned";
        public static String BOARDED = "Boarded";
        public static String CANCEL = "Cancel";
        public static String CLICK = "Click";
        public static String DATABASE = "Database";
        public static String DEEP_LINK = "[DeepLink]";
        public static String Error = "Error";
        public static String FAVORITE = "Favorite";
        public static String HOMESCREEN = "[homeScreen]";
        public static String HOMESCREEN_BANNER = "[homeScreen][banner]";
        public static String HOMESCREEN_MOVE = "[homeScreen][move]";
        public static String HOMESCREEN_NEWS = "[homeScreen][news]";
        public static String HOMESCREEN_SNAPP_CAB = "[homeScreen][snappCab]";
        public static String HOMESCREEN_SNAPP_CHARGE = "[homeScreen][SnappCharge]";
        public static String HOMESCREEN_SNAPP_FLIGHT = "[homeScreen][snappFlight]";
        public static String HOMESCREEN_SNAPP_FOOD = "[homeScreen][SnappFood]";
        public static String HOMESCREEN_SNAPP_MALL = "[homeScreen][SnappMall]";
        public static String HOMESCREEN_TITLE = "[homeScreen][title]";
        public static String INTENT = "Intent";
        public static String MAIN_PAGE_ASSIGNED_CALL_TO_DRIVER = "[mainPage][assigned][callToDriver]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS = "[mainPage][assigned][options]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS_ROUND_OFF = "[mainPage][assigned][options][round][off]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS_ROUND_ON = "[mainPage][assigned][options][round][on]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS_SEARCH = "[mainPage][assigned][options][search]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_OFF = "[mainPage][assigned][options][setSecondDestination][off]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON = "[mainPage][assigned][options][setSecondDestination][on]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS_STOP_OFF = "[mainPage][assigned][options][stop][off]";
        public static String MAIN_PAGE_ASSIGNED_OPTIONS_STOP_ON = "[mainPage][assigned][options][stop][on]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT = "[mainPage][assigned][payment]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_CASH = "[mainPage][assigned][payment][cash]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_CASH_PAY_CASH = "[mainPage][assigned][payment][cash][payCash]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_DONATE_DESCRIPTION = "[mainPage][assigned][payment][donateDescription]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_JIRING = "[mainPage][assigned][payment][jiring]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_JIRING_PAY = "[mainPage][assigned][payment][jiring][buildSnappPayment]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION = "[mainPage][assigned][payment][onlineSection]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_MINUS_SIGN = "[mainPage][assigned][payment][onlineSection][minusSign]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE = "[mainPage][assigned][payment][onlineSection][onlineCharge]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_PLUS_SIGN = "[mainPage][assigned][payment][onlineSection][plusSign]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_USSD = "[mainPage][assigned][payment][ussd]";
        public static String MAIN_PAGE_ASSIGNED_PAYMENT_USSD_PAY = "[mainPage][assigned][payment][ussd][buildSnappPayment]";
        public static String MAIN_PAGE_ASSIGNED_VOUCHER = "[mainPage][assigned][voucher]";
        public static String MAIN_PAGE_BACK_TO_SET_DESTINATION = "[mainPage][backToSetDestination]";
        public static String MAIN_PAGE_BACK_TO_SET_ORIGIN = "[mainPage][backToSetOrgin]";
        public static String MAIN_PAGE_CANCEL_RIDE_REQUEST = "[mainPage][cancelRideRequest]";
        public static String MAIN_PAGE_CONFIRMATION_PHONE_NUMBER = "[mainPage][ConfirmationPhoneNumber]";
        public static String MAIN_PAGE_FAVORITE_ADD = "[mainPage][favorite][add]";
        public static String MAIN_PAGE_INFORM_RIDE = "[mainPage][informRide]";
        public static String MAIN_PAGE_IN_RIDE_CALL_TO_DRIVER = "[mainPage][inRide][callToDriver]";
        public static String MAIN_PAGE_IN_RIDE_OPTIONS = "[mainPage][inRide][options]";
        public static String MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_OFF = "[mainPage][inRide][options][round][off]";
        public static String MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_ON = "[mainPage][inRide][options][round][on]";
        public static String MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_OFF = "[mainPage][inRide][options][setSecondDestination][off]";
        public static String MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON = "[mainPage][inRide][options][setSecondDestination][on]";
        public static String MAIN_PAGE_IN_RIDE_OPTIONS_STOP_OFF = "[mainPage][inRide][options][stop][off]";
        public static String MAIN_PAGE_IN_RIDE_OPTIONS_STOP_ON = "[mainPage][inRide][options][stop][on]";
        public static String MAIN_PAGE_MENU_ABOUT = "[mainPage][menu][about]";
        public static String MAIN_PAGE_MENU_EXIT = "[mainPage][menu][exit]";
        public static String MAIN_PAGE_MENU_FAV_ADDRESS = "[mainPage][menu][favAddress]";
        public static String MAIN_PAGE_MENU_FREE_RIDE = "[mainPage][menu][freeRide]";
        public static String MAIN_PAGE_MENU_INCREASE_CREDIT = "[mainPage][menu][IncreaseCredit]";
        public static String MAIN_PAGE_MENU_MESSAGES = "[mainPage][menu][messages]";
        public static String MAIN_PAGE_MENU_RIDE_HISTORY = "[mainPage][menu][rideHistory]";
        public static String MAIN_PAGE_MENU_SETTINGS = "[mainPage][menu][settings]";
        public static String MAIN_PAGE_MENU_SNAPP_FOOD = "[mainPage][menu][snappFood]";
        public static String MAIN_PAGE_MENU_SUPPORT = "[mainPage][menu][support]";
        public static String MAIN_PAGE_MENU_TURNOVER = "[mainPage][menu][turnover]";
        public static String MAIN_PAGE_MENU_USER_INFO = "[mainPage][menu][userInfo]";
        public static String MAIN_PAGE_MESSAGE_TO_DRIVER = "[mainPage][messageToDriver]";
        public static String MAIN_PAGE_MESSAGE_TO_DRIVER_POPUP = "[mainPage][messageToDriverPopup]";
        public static String MAIN_PAGE_MESSAGE_TO_DRIVER_SEND_MESSAGE = "[mainPage][messageToDriver][sendMessage]";
        public static String MAIN_PAGE_PAYMENT = "[mainPage][payment]";
        public static String MAIN_PAGE_PAYMENT_CASH = "[mainPage][payment][cash]";
        public static String MAIN_PAGE_PAYMENT_CASH_PAY_CASH = "[mainPage][payment][cash][payCash]";
        public static String MAIN_PAGE_PAYMENT_DONATE_DESCRIPTION = "[mainPage][payment][donateDescription]";
        public static String MAIN_PAGE_PAYMENT_JIRING = "[mainPage][payment][jiring]";
        public static String MAIN_PAGE_PAYMENT_JIRING_PAY = "[mainPage][payment][jiring][buildSnappPayment]";
        public static String MAIN_PAGE_PAYMENT_ONLINE_SECTION = "[mainPage][payment][onlineSection]";
        public static String MAIN_PAGE_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE = "[mainPage][payment][onlineSection][onlineCharge]";
        public static String MAIN_PAGE_PAYMENT_USSD = "[mainPage][payment][ussd]";
        public static String MAIN_PAGE_PAYMENT_USSD_PAY = "[mainPage][payment][ussd][buildSnappPayment]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS = "[mainPage][preride][options]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS_ROUND_OFF = "[mainPage][preride][options][round][off]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS_ROUND_ON = "[mainPage][preride][options][round][on]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS_SEARCH = "[mainPage][preride][options][search]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_OFF = "[mainPage][preride][options][setSecondDestination][off]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON = "[mainPage][preride][options][setSecondDestination][on]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_OFF = "[mainPage][preride][options][stop][off]";
        public static String MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_ON = "[mainPage][preride][options][stop][on]";
        public static String MAIN_PAGE_PRE_RIDE_VOUCHER = "[mainPage][preride][voucher]";
        public static String MAIN_PAGE_REGISTER_PHONE_NUMBER = "[mainPage][registerPhoneNumber]";
        public static String MAIN_PAGE_RIDE_REQUEST = "[mainPage][rideRequest]";
        public static String MAIN_PAGE_RIDE_REQUEST_BEEP = "[mainPage][rideRequest][beep]";
        public static String MAIN_PAGE_SEARCH_DESTINATION = "[mainPage][search][destination]";
        public static String MAIN_PAGE_SEARCH_ORIGIN = "[mainPage][search][orgin]";
        public static String MAIN_PAGE_SERVICE_TYPE = "[mainPage][serviceType]";
        public static String MAIN_PAGE_SET_DESTINATION = "[mainPage][setDestination]";
        public static String MAIN_PAGE_SET_ORIGIN = "[mainPage][setOrgin]";
        public static String NOTIFICATION_CENTER = "[notificationCenter]";
        public static String NOTIFICATION_CENTER_CARD_IMPORTATANT = "[notificationCenter][card][important]";
        public static String NOTIFICATION_CENTER_CARD_NORMAL = "[notificationCenter][card][normal]";
        public static String ONBOARDING_SNAPP_GROUP = "[onboardingSnappGroup]";
        public static String PAYMENT = "Payment";
        public static String PLAY_SERVICE_VERSION = "play_service_version";
        public static String Problem = "Problems";
        public static String REQUEST = "Request";
        public static String RIDE_FEEDBACK = "[rideFeedback]";
        public static String RIDE_FEEDBACK_CALL_TO_SUPPORT = "[rideFeedback][callToSupport]";
        public static String RIDE_FEEDBACK_REASON = "[rideFeedback][reason]";
        public static String RIDE_FEEDBACK_SHARE_RIDE_EXPERIENCE = "[rideFeedback][shareRideExperience]";
        public static String SIGNIN = "SIGNIN";
        public static String SIGNUP = "Signup";
        public static String TOAST_ASSIGNED_CAN_NOT_REDUCE_STOP_TIME = "[Toast][assigned][CanNotReduceStopTime]";
        public static String TOAST_CONFIRMATION_CODE_IS_WRONG = "[Toast][ConfirmationCodeIsWrong]";
        public static String TOAST_RATE_POSTED_SUCCESSFUL = "[Toast][RatePosted][successful]";
    }

    /* renamed from: cab.snapp.passenger.f.b.b.c$c  reason: collision with other inner class name */
    public static class C0021c {
        public static String INTEGRATION = "Integration";
        public static String NEW_UX = "NEW_UX";
        public static String RIDE = "Ride";
        public static String TECHNICAL = "Technical";
        public static String USERS = "Users";
        public static String UX = "UX";
        public static String UX_ANDROID = "UX_Android";
    }

    public static class d {
        public static String FIRST_RIDE_BOARDED = "First ride";
        public static String SIGN_UP = "signup";
    }

    public static class e {
        public static String ACCEPTED_OFFER_BY_DRIVER = "acceptedOfferByDriver";
        public static String ADDED_CREDIT = "addedCredit";
        public static String APP_LANGUAGE = "appLanguage";
        public static String BOARDED = "boarded";
        public static String CONFIRM_MOBILE_NUMBER = "confirmMobileNumber";
        public static String CURRENT_LOCATION_IN_APP_LAUNCH = "currentLocationInAppLaunch";
        public static String DESTINATION_SET = "destinationSet";
        public static String DRIVER_CANCELED = "driverCanceled";
        public static String EXISTING_CREDIT = "existingCredit";
        public static String LOGOUT = "logout";
        public static String METHOD_OF_PAYMENT = "methodOfPayment";
        public static String OPEN_APP = "openApp";
        public static String ORIGIN_SET = "originSet";
        public static String PASSENGER_CANCELED = "passengerCanceled";
        public static String PASSENGER_CANCELED_BEFORE_ACCEPT = "passengerCanceledBeforeAccept";
        public static String PRICE_SHOWN = "priceShown";
        public static String RATING = "rating";
        public static String RIDE_COST = "rideCost";
        public static String RIDE_REQUEST = "rideRequest";
        public static String SAVE_PROFILE = "saveProfile";
        public static String SEND_MOBILE_NUMBER = "sendMobileNumber";
        public static String SIGN_UP_WITH_EMAIL = "signUpWithEmail";
        public static String SIGN_UP_WITH_GOOGLE = "signUpWithGoogle";
        public static String VOUCHER = "voucher";
    }

    private c() {
    }

    public c(Application application) {
        init(application);
    }

    public static c getInstance() {
        if (f558a == null) {
            f558a = new c();
        }
        return f558a;
    }

    public static void release() {
        f558a = null;
    }

    public final boolean hasUserEmailProvided() {
        ProfileResponse profileResponse = this.d;
        if (profileResponse == null || profileResponse.getEmail() == null || this.d.getEmail().equals("")) {
            return false;
        }
        return true;
    }

    public final boolean hasUserPhoneProvided() {
        ProfileResponse profileResponse = this.d;
        if (profileResponse == null || profileResponse.getCellphone() == null || this.d.getCellphone().equals("")) {
            return false;
        }
        return true;
    }

    public final String getUserEmail() {
        ProfileResponse profileResponse = this.d;
        if (profileResponse != null) {
            return profileResponse.getEmail();
        }
        return null;
    }

    public final CreditResponse getUserCredit() {
        return this.e;
    }

    public final void setCreditResponse(CreditResponse creditResponse) {
        this.e = creditResponse;
    }

    public final String getUserCellPhone() {
        ProfileResponse profileResponse = this.d;
        if (profileResponse != null) {
            return profileResponse.getCellphone();
        }
        return null;
    }

    public final void setUserProfile(ProfileResponse profileResponse) {
        this.d = profileResponse;
    }

    public final void init(Application application) {
        Application application2 = application;
        this.f559b = application.getPackageName();
        if (!isReportAllowedForProduction() || isReportAllowedForStaging()) {
            if (!isReportAllowedForProduction() && isReportAllowedForStaging()) {
                cab.snapp.passenger.f.b.b.getInstance().init(new b.C0020b().with(application2).supportWebEngage(application2.getString(R.string.passenger_webengage_staging_token), true).build());
                try {
                    String token = FirebaseInstanceId.getInstance().getToken();
                    if (token != null) {
                        WebEngage.get().setRegistrationID(token);
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    com.a.a.a.logException(e2);
                }
            }
            return;
        }
        String string = application2.getString(R.string.passenger_webengage_production_token);
        String string2 = application2.getString(R.string.passenger_appmetrica_production_token);
        AdjustConfig adjustConfig = new AdjustConfig(application2, application2.getString(R.string.adjust_passenger_production_appkey), AdjustConfig.ENVIRONMENT_PRODUCTION);
        AdjustConfig adjustConfig2 = adjustConfig;
        adjustConfig.setAppSecret(25, 1586685703, 2080446528, 1068769940, 1979380000);
        Adjust.onCreate(adjustConfig2);
        cab.snapp.passenger.f.b.b.getInstance().init(new b.C0020b().with(application2).supportWebEngage(string, false).supportAppmetrica(string2).supportAdjust(adjustConfig2).supportFirebase().build());
        try {
            String token2 = FirebaseInstanceId.getInstance().getToken();
            if (token2 != null) {
                WebEngage.get().setRegistrationID(token2);
                Adjust.setPushToken(token2, application2);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            com.a.a.a.logException(e3);
        }
        this.c = com.google.android.gms.analytics.d.getInstance(application).newTracker(application.getResources().getString(R.string.google_analytics_passenger_production_key));
        this.c.enableAdvertisingIdCollection(true);
        this.c.setSampleRate(25.0d);
    }

    public final void reportChangeUser(String str) {
        try {
            if (isReportAllowedForStaging() || isReportAllowedForProduction()) {
                cab.snapp.passenger.f.b.b.getInstance().changeWebengageUser(cab.snapp.c.b.md5(str));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void reportLogOutUser() {
        try {
            if (isReportAllowedForStaging() || isReportAllowedForProduction()) {
                cab.snapp.passenger.f.b.b.getInstance().logoutWebengageUser();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void reportEvent(String str) {
        if (str != null) {
            try {
                if (isReportAllowedForStaging() || isReportAllowedForProduction()) {
                    cab.snapp.passenger.f.b.b.getInstance().sendWebEngageEvent(new cab.snapp.passenger.f.b.a.e(str, null));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        }
    }

    public final void reportEvent(String str, Map<String, Object> map) {
        if (!(str == null || map == null)) {
            try {
                for (Object obj : map.values()) {
                    if (obj == null) {
                        return;
                    }
                }
                if (isReportAllowedForStaging() || isReportAllowedForProduction()) {
                    cab.snapp.passenger.f.b.b.getInstance().sendWebEngageEvent(new cab.snapp.passenger.f.b.a.e(str, map));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x007d A[Catch:{ Exception -> 0x00aa }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void reportUserAttributes(cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse r12) {
        /*
            r11 = this;
            r0 = 2
            r1 = 1
            java.lang.String r2 = "unknown"
            r3 = 0
            if (r12 == 0) goto L_0x0072
            cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse r4 = r12.getProfileResponse()     // Catch:{ Exception -> 0x00aa }
            if (r4 == 0) goto L_0x0072
            cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse r2 = r12.getProfileResponse()     // Catch:{ Exception -> 0x00aa }
            java.lang.String r2 = r2.getFullname()     // Catch:{ Exception -> 0x00aa }
            cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse r4 = r12.getProfileResponse()     // Catch:{ Exception -> 0x00aa }
            java.lang.String r4 = r4.getEmail()     // Catch:{ Exception -> 0x00aa }
            cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse r5 = r12.getProfileResponse()     // Catch:{ Exception -> 0x00aa }
            java.lang.String r5 = r5.getCellphone()     // Catch:{ Exception -> 0x00aa }
            cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse r6 = r12.getProfileResponse()     // Catch:{ Exception -> 0x00aa }
            cab.snapp.passenger.data.models.ProfileMeta r6 = r6.getProfileMeta()     // Catch:{ Exception -> 0x00aa }
            if (r6 == 0) goto L_0x0074
            cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse r12 = r12.getProfileResponse()     // Catch:{ Exception -> 0x00aa }
            cab.snapp.passenger.data.models.ProfileMeta r12 = r12.getProfileMeta()     // Catch:{ Exception -> 0x00aa }
            java.lang.String r12 = r12.getBirthDate()     // Catch:{ Exception -> 0x00aa }
            if (r12 == 0) goto L_0x0074
            boolean r6 = r12.isEmpty()     // Catch:{ Exception -> 0x00aa }
            if (r6 != 0) goto L_0x0074
            java.text.SimpleDateFormat r6 = new java.text.SimpleDateFormat     // Catch:{ Exception -> 0x0067 }
            java.lang.String r7 = "yyyy-MM-dd"
            r6.<init>(r7)     // Catch:{ Exception -> 0x0067 }
            java.util.Date r12 = r6.parse(r12)     // Catch:{ Exception -> 0x0067 }
            java.util.Calendar r6 = java.util.Calendar.getInstance()     // Catch:{ Exception -> 0x0067 }
            r6.setTime(r12)     // Catch:{ Exception -> 0x0067 }
            int r12 = r6.get(r1)     // Catch:{ Exception -> 0x0067 }
            int r7 = r6.get(r0)     // Catch:{ Exception -> 0x0065 }
            r8 = 5
            int r6 = r6.get(r8)     // Catch:{ Exception -> 0x0063 }
            goto L_0x0077
        L_0x0063:
            r6 = move-exception
            goto L_0x006a
        L_0x0065:
            r6 = move-exception
            goto L_0x0069
        L_0x0067:
            r6 = move-exception
            r12 = 0
        L_0x0069:
            r7 = 0
        L_0x006a:
            r6.printStackTrace()     // Catch:{ Exception -> 0x00aa }
            com.a.a.a.logException(r6)     // Catch:{ Exception -> 0x00aa }
            r6 = 0
            goto L_0x0077
        L_0x0072:
            r4 = r2
            r5 = r4
        L_0x0074:
            r12 = 0
            r6 = 0
            r7 = 0
        L_0x0077:
            boolean r8 = cab.snapp.c.i.isEmailValid(r4)     // Catch:{ Exception -> 0x00aa }
            if (r8 == 0) goto L_0x0080
            r11.reportChangeUser(r4)     // Catch:{ Exception -> 0x00aa }
        L_0x0080:
            java.util.Locale r8 = java.util.Locale.ENGLISH     // Catch:{ Exception -> 0x00aa }
            java.lang.String r9 = "%d/%d/%d"
            r10 = 3
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch:{ Exception -> 0x00aa }
            java.lang.Integer r12 = java.lang.Integer.valueOf(r12)     // Catch:{ Exception -> 0x00aa }
            r10[r3] = r12     // Catch:{ Exception -> 0x00aa }
            java.lang.Integer r12 = java.lang.Integer.valueOf(r7)     // Catch:{ Exception -> 0x00aa }
            r10[r1] = r12     // Catch:{ Exception -> 0x00aa }
            java.lang.Integer r12 = java.lang.Integer.valueOf(r6)     // Catch:{ Exception -> 0x00aa }
            r10[r0] = r12     // Catch:{ Exception -> 0x00aa }
            java.lang.String r12 = java.lang.String.format(r8, r9, r10)     // Catch:{ Exception -> 0x00aa }
            r11.reportUserCommonAttributes(r2, r4, r5, r12)     // Catch:{ Exception -> 0x00aa }
            java.lang.String r12 = "lang"
            java.lang.String r0 = cab.snapp.passenger.f.g.getCurrentActiveLocaleString()     // Catch:{ Exception -> 0x00aa }
            r11.reportUserAttribute(r12, r0)     // Catch:{ Exception -> 0x00aa }
            return
        L_0x00aa:
            r12 = move-exception
            r12.printStackTrace()
            com.a.a.a.logException(r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.f.b.b.c.reportUserAttributes(cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse):void");
    }

    public final void reportUserAttribute(String str, String str2) {
        try {
            if (isReportAllowedForStaging() || isReportAllowedForProduction()) {
                cab.snapp.passenger.f.b.b.getInstance().setWebengageUserCustomAttribute(str, str2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void reportUserCommonAttributes(String str, String str2, String str3, String str4) {
        try {
            if (isReportAllowedForStaging() || isReportAllowedForProduction()) {
                cab.snapp.passenger.f.b.b.getInstance().setWebengageUserCommonAttributes(str, str2, str3, str4);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendUserProfileToAppmetrica(ConfigResponse configResponse) {
        String str;
        String str2;
        try {
            if (isReportAllowedForStaging() || isReportAllowedForProduction()) {
                String str3 = EnvironmentCompat.MEDIA_UNKNOWN;
                if (configResponse != null) {
                    if (configResponse.getProfileResponse() != null) {
                        str3 = configResponse.getProfileResponse().getFullname();
                        str2 = configResponse.getProfileResponse().getEmail();
                        str = configResponse.getProfileResponse().getCellphone();
                        cab.snapp.passenger.f.b.b.getInstance().sendUserProfileToAppmetrica(str3, str2, str);
                    }
                }
                str = str3;
                str2 = str;
                cab.snapp.passenger.f.b.b.getInstance().sendUserProfileToAppmetrica(str3, str2, str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendWithAttributesViaAdjust(String str, String str2, String str3) {
        try {
            if (isReportAllowedForProduction()) {
                HashMap hashMap = new HashMap();
                if (str2 != null) {
                    hashMap.put(NotificationCompat.CATEGORY_EMAIL, str2);
                }
                if (str3 != null) {
                    hashMap.put("ride_id", str3);
                }
                if (this.f559b.contains("play")) {
                    hashMap.put("store", "google play");
                } else {
                    hashMap.put("store", "cafe bazaar");
                }
                cab.snapp.passenger.f.b.b.getInstance().sendAdjustEvent(str, hashMap);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendWithAttributesViaAppmetrica(String str, String str2, String str3, String str4) {
        try {
            if (isReportAllowedForProduction()) {
                HashMap hashMap = new HashMap();
                if (str2 != null) {
                    hashMap.put(NotificationCompat.CATEGORY_EMAIL, str2);
                }
                if (str3 != null) {
                    hashMap.put("ride_id", str3);
                }
                if (str4 != null) {
                    hashMap.put("phone_number", str4);
                }
                cab.snapp.passenger.f.b.b.getInstance().sendAppmetricaEvent(str, (Map<String, Object>) hashMap);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendWithAttributesViaAdjust(String str, String str2) {
        try {
            if (isReportAllowedForProduction()) {
                sendWithAttributesViaAdjust(str, str2, null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendWithAttributesViaAppmetrica(String str, String str2) {
        try {
            if (isReportAllowedForProduction()) {
                sendWithAttributesViaAppmetrica(str, str2, null, null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendEventViaAdjust(String str) {
        try {
            if (isReportAllowedForProduction()) {
                sendWithAttributesViaAdjust(str, null, null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendEventViaAppmetrica(String str, AppmetricaEventParamsModel appmetricaEventParamsModel) {
        try {
            if (isReportAllowedForProduction()) {
                HashMap hashMap = new HashMap();
                if (appmetricaEventParamsModel != null) {
                    if (appmetricaEventParamsModel.getCategory() != null) {
                        hashMap.put("category", appmetricaEventParamsModel.getCategory());
                    }
                    if (appmetricaEventParamsModel.getAction() != null) {
                        hashMap.put("action", appmetricaEventParamsModel.getAction());
                    }
                    if (appmetricaEventParamsModel.getLabel() != null) {
                        hashMap.put("label", appmetricaEventParamsModel.getLabel());
                    }
                    if (appmetricaEventParamsModel.getValue() != null) {
                        hashMap.put(FirebaseAnalytics.b.VALUE, appmetricaEventParamsModel.getValue());
                    }
                }
                cab.snapp.passenger.f.b.b.getInstance().sendAppmetricaEvent(str, (Map<String, Object>) hashMap);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendNestedEventViaAppmetrica(String str, org.a.c cVar) {
        try {
            if (isReportAllowedForProduction()) {
                cab.snapp.passenger.f.b.b.getInstance().sendAppmetricaEvent(str, cVar);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendAnalyticsEvent(String str, String str2, String str3) {
        try {
            sendAnalyticsEvent(str, str2, str3, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void sendAnalyticsEvent(String str, String str2, String str3, long j) {
        try {
            if (isReportAllowedForProduction()) {
                this.c.send(new e.a().setCategory(str).setAction(str2).setLabel(str3).setValue(j).build());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final void reportScreenName(String str) {
        try {
            if (isReportAllowedForProduction()) {
                if (str != null) {
                    this.c.setScreenName(str);
                    this.c.send(new e.d().build());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public final boolean isReportAllowedForProduction() {
        return cab.snapp.passenger.c.SEND_ANALYTICS_DATA.booleanValue();
    }

    public final boolean isReportAllowedForStaging() {
        return cab.snapp.passenger.c.SEND_STAGING_ANALYTICS_DATA.booleanValue();
    }
}
