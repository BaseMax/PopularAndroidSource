package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.d.a.a;
import cab.snapp.passenger.data.models.ABTestBean;
import cab.snapp.passenger.data.models.AppData;
import cab.snapp.passenger.data.models.ArrivalEta;
import cab.snapp.passenger.data.models.CedarMapData;
import cab.snapp.passenger.data.models.ChangeLogItem;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.data.models.FinishRide;
import cab.snapp.passenger.data.models.PaymentTexts;
import cab.snapp.passenger.data.models.PinCacheConfig;
import cab.snapp.passenger.data.models.RatingOption;
import cab.snapp.passenger.data.models.Ride;
import cab.snapp.passenger.data.models.SafeCall;
import cab.snapp.passenger.data.models.SnappPusher;
import cab.snapp.passenger.data.models.SnappUssd;
import cab.snapp.passenger.data.models.WaitingTips;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.HashMap;
import java.util.List;

public class ConfigResponse extends f {
    @c("campaigns")
    private ABTestBean abTest;
    @c("app_data")
    private AppData appData;
    @c("arriving_eta")
    private ArrivalEta arrivalEta;
    @c("call_center_number")
    private String callCenterNumber;
    @c("call_center_number_biker")
    private String callCenterNumberBiker;
    @c("cedar_map_data")
    private CedarMapData cedarMapData;
    @c("event_interval")
    private int eventInterval;
    @c("favorite_places")
    private List<FavoriteModel> favoritePlaces;
    @c("followed_apps")
    private HashMap<String, String> followedApps;
    @c("is_ap_enabled")
    private boolean isApWalletEnabled;
    @c("inride_jiring_enabled")
    private boolean isInRideJiringEnabled;
    @c("is_online_payment_enabled")
    private boolean isOnlinePayEnabled;
    @c("jiring_link")
    private String jiringGuideLink;
    @c("predefined_rating_texts")
    private List<RatingOption> listRatingOptions;
    @c("ride_message")
    private List<String> listRideMessages;
    @c("waiting_tips")
    private List<WaitingTips> listWaitingTips;
    @c("location_interval")
    private int locationInterval;
    @c("mapbox_style_url")
    private String mapBoxStyleUrl;
    @c("mapbox_token")
    private String mapBoxToken;
    @c("map_type")
    private int mapType;
    @c("need_rate")
    private FinishRide needRate;
    @c("update_message")
    private List<ChangeLogItem> passengerChangeLogList;
    @c("payment_texts")
    private PaymentTexts paymentTexts;
    @c("pin")
    private PinCacheConfig pinCacheConfig;
    @c("profile")
    private ProfileResponse profileResponse;
    @c("realtime")
    private RealtimeBean realtime;
    @c("referral_base_url")
    private String referralBaseUri;
    @c("referral_intro_text")
    private String referralIntroText;
    @c("referral_shareable_text")
    private String referralShareableText;
    @c("retry_with_higher_price")
    private boolean retryWithHigherPrice;
    @c("ride")
    private Ride ride;
    @c("call")
    private SafeCall safeCall;
    @c("skippable_rating")
    private boolean skippableRating;
    @c("snappgroup_recharge")
    private String snappChargeRechargeUrl;
    @c("snappgroup_content_date")
    private long snappGroupLastModificationTimestamp;
    @c("pusher")
    private SnappPusher snappPusher;
    @c("ussd")
    private SnappUssd snappUssd;
    @c("sync_interval")
    private Integer syncInterval;
    @c("waiting_gif")
    private String waitingGif;
    @c("waiting_package_gif")
    private String waitingPackageGif;
    @c("started_ride")
    private Ride waitingRide;

    public static class RealtimeBean {
        @c("emq")
        private a emq;

        public a getEmq() {
            return this.emq;
        }

        public void setEmq(a aVar) {
            this.emq = aVar;
        }
    }

    public RealtimeBean getRealtime() {
        return this.realtime;
    }

    public void setRealtime(RealtimeBean realtimeBean) {
        this.realtime = realtimeBean;
    }

    public Integer getSyncInterval() {
        return this.syncInterval;
    }

    public void setSyncInterval(Integer num) {
        this.syncInterval = num;
    }

    public boolean isRetryWithHigherPrice() {
        return this.retryWithHigherPrice;
    }

    public void setRetryWithHigherPrice(boolean z) {
        this.retryWithHigherPrice = z;
    }

    public String getReferralBaseUri() {
        return this.referralBaseUri;
    }

    public void setReferralBaseUri(String str) {
        this.referralBaseUri = str;
    }

    public String getCallCenterNumber() {
        return this.callCenterNumber;
    }

    public void setCallCenterNumber(String str) {
        this.callCenterNumber = str;
    }

    public CedarMapData getCedarMapData() {
        return this.cedarMapData;
    }

    public void setCedarMapData(CedarMapData cedarMapData2) {
        this.cedarMapData = cedarMapData2;
    }

    public AppData getAppData() {
        return this.appData;
    }

    public void setAppData(AppData appData2) {
        this.appData = appData2;
    }

    public ProfileResponse getProfileResponse() {
        return this.profileResponse;
    }

    public void setProfileResponse(ProfileResponse profileResponse2) {
        this.profileResponse = profileResponse2;
    }

    public Ride getRide() {
        return this.ride;
    }

    public void setRide(Ride ride2) {
        this.ride = ride2;
    }

    public Ride getWaitingRide() {
        return this.waitingRide;
    }

    public void setWaitingRide(Ride ride2) {
        this.waitingRide = ride2;
    }

    public String getReferralIntroText() {
        return this.referralIntroText;
    }

    public void setReferralIntroText(String str) {
        this.referralIntroText = str;
    }

    public String getReferralShareableText() {
        return this.referralShareableText;
    }

    public void setReferralShareableText(String str) {
        this.referralShareableText = str;
    }

    public SnappPusher getSnappPusher() {
        return this.snappPusher;
    }

    public void setSnappPusher(SnappPusher snappPusher2) {
        this.snappPusher = snappPusher2;
    }

    public FinishRide getNeedRate() {
        return this.needRate;
    }

    public void setNeedRate(FinishRide finishRide) {
        this.needRate = finishRide;
    }

    public boolean isSkippableRating() {
        return this.skippableRating;
    }

    public void setSkippableRating(boolean z) {
        this.skippableRating = z;
    }

    public List<RatingOption> getListRatingOptions() {
        return this.listRatingOptions;
    }

    public void setListRatingOptions(List<RatingOption> list) {
        this.listRatingOptions = list;
    }

    public SnappUssd getSnappUssd() {
        return this.snappUssd;
    }

    public void setSnappUssd(SnappUssd snappUssd2) {
        this.snappUssd = snappUssd2;
    }

    public List<FavoriteModel> getFavoritePlaces() {
        return this.favoritePlaces;
    }

    public void setFavoritePlaces(List<FavoriteModel> list) {
        this.favoritePlaces = list;
    }

    public int getLocationInterval() {
        return this.locationInterval;
    }

    public void setLocationInterval(int i) {
        this.locationInterval = i;
    }

    public int getEventInterval() {
        return this.eventInterval;
    }

    public void setEventInterval(int i) {
        this.eventInterval = i;
    }

    public ArrivalEta getArrivalEta() {
        return this.arrivalEta;
    }

    public void setArrivalEta(ArrivalEta arrivalEta2) {
        this.arrivalEta = arrivalEta2;
    }

    public List<String> getListRideMessages() {
        return this.listRideMessages;
    }

    public void setListRideMessages(List<String> list) {
        this.listRideMessages = list;
    }

    public List<WaitingTips> getListWaitingTips() {
        return this.listWaitingTips;
    }

    public void setListWaitingTips(List<WaitingTips> list) {
        this.listWaitingTips = list;
    }

    public boolean isInRideJiringEnabled() {
        return this.isInRideJiringEnabled;
    }

    public void setInRideJiringEnabled(boolean z) {
        this.isInRideJiringEnabled = z;
    }

    public String getJiringGuideLink() {
        return this.jiringGuideLink;
    }

    public void setJiringGuideLink(String str) {
        this.jiringGuideLink = str;
    }

    public String getWaitingGif() {
        return this.waitingGif;
    }

    public void setWaitingGif(String str) {
        this.waitingGif = str;
    }

    public SafeCall getSafeCall() {
        return this.safeCall;
    }

    public void setSafeCall(SafeCall safeCall2) {
        this.safeCall = safeCall2;
    }

    public String getWaitingPackageGif() {
        return this.waitingPackageGif;
    }

    public void setWaitingPackageGif(String str) {
        this.waitingPackageGif = str;
    }

    public PinCacheConfig getPinCacheConfig() {
        return this.pinCacheConfig;
    }

    public void setPinCacheConfig(PinCacheConfig pinCacheConfig2) {
        this.pinCacheConfig = pinCacheConfig2;
    }

    public String getCallCenterNumberBiker() {
        return this.callCenterNumberBiker;
    }

    public void setCallCenterNumberBiker(String str) {
        this.callCenterNumberBiker = str;
    }

    public List<ChangeLogItem> getPassengerChangeLogList() {
        return this.passengerChangeLogList;
    }

    public void setPassengerChangeLogList(List<ChangeLogItem> list) {
        this.passengerChangeLogList = list;
    }

    public String getMapBoxToken() {
        return this.mapBoxToken;
    }

    public void setMapBoxToken(String str) {
        this.mapBoxToken = str;
    }

    public String getMapBoxStyleUrl() {
        return this.mapBoxStyleUrl;
    }

    public void setMapBoxStyleUrl(String str) {
        this.mapBoxStyleUrl = str;
    }

    public int getMapType() {
        return this.mapType;
    }

    public void setMapType(int i) {
        this.mapType = i;
    }

    public ABTestBean getAbTest() {
        return this.abTest;
    }

    public void setAbTest(ABTestBean aBTestBean) {
        this.abTest = aBTestBean;
    }

    public HashMap<String, String> getFollowedApps() {
        return this.followedApps;
    }

    public void setFollowedApps(HashMap<String, String> hashMap) {
        this.followedApps = hashMap;
    }

    public String getSnappChargeRechargeUrl() {
        return this.snappChargeRechargeUrl;
    }

    public void setSnappChargeRechargeUrl(String str) {
        this.snappChargeRechargeUrl = str;
    }

    public long getSnappGroupLastModificationTimestamp() {
        return this.snappGroupLastModificationTimestamp;
    }

    public PaymentTexts getPaymentTexts() {
        return this.paymentTexts;
    }

    public void setPaymentTexts(PaymentTexts paymentTexts2) {
        this.paymentTexts = paymentTexts2;
    }

    public boolean isApWalletEnabled() {
        return this.isApWalletEnabled;
    }

    public void setApWalletEnabled(boolean z) {
        this.isApWalletEnabled = z;
    }

    public boolean isOnlinePayEnabled() {
        return this.isOnlinePayEnabled;
    }

    public void setOnlinePayEnabled(boolean z) {
        this.isOnlinePayEnabled = z;
    }

    public String toString() {
        return "ConfigResponse{retryWithHigherPrice=" + this.retryWithHigherPrice + ", referralBaseUri='" + this.referralBaseUri + '\'' + ", referralIntroText='" + this.referralIntroText + '\'' + ", referralShareableText='" + this.referralShareableText + '\'' + ", callCenterNumber='" + this.callCenterNumber + '\'' + ", callCenterNumberBiker='" + this.callCenterNumberBiker + '\'' + ", cedarMapData=" + this.cedarMapData + ", appData=" + this.appData + ", profileResponse=" + this.profileResponse + ", ride=" + this.ride + ", waitingRide=" + this.waitingRide + ", safeCall=" + this.safeCall + ", snappPusher=" + this.snappPusher + ", needRate=" + this.needRate + ", skippableRating=" + this.skippableRating + ", listRatingOptions=" + this.listRatingOptions + ", snappUssd=" + this.snappUssd + ", favoritePlaces=" + this.favoritePlaces + ", locationInterval=" + this.locationInterval + ", eventInterval=" + this.eventInterval + ", arrivalEta=" + this.arrivalEta + ", listRideMessages=" + this.listRideMessages + ", listWaitingTips=" + this.listWaitingTips + ", jiringGuideLink='" + this.jiringGuideLink + '\'' + ", isInRideJiringEnabled=" + this.isInRideJiringEnabled + ", waitingGif='" + this.waitingGif + '\'' + ", waitingPackageGif='" + this.waitingPackageGif + '\'' + ", syncInterval=" + this.syncInterval + ", pinCacheConfig=" + this.pinCacheConfig + ", passengerChangeLogList=" + this.passengerChangeLogList + ", mapBoxToken='" + this.mapBoxToken + '\'' + ", mapBoxStyleUrl='" + this.mapBoxStyleUrl + '\'' + ", followedApps=" + this.followedApps + ", mapType=" + this.mapType + ", abTest=" + this.abTest + ", snappChargeRechargeUrl='" + this.snappChargeRechargeUrl + '\'' + ", snappGroupLastModificationTimestamp=" + this.snappGroupLastModificationTimestamp + ", paymentTexts=" + this.paymentTexts + ", isApWalletEnabled=" + this.isApWalletEnabled + ", realtime=" + this.realtime + "} " + super.toString();
    }
}
