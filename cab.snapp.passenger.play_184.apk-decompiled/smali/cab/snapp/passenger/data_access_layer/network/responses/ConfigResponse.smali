.class public Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;
    }
.end annotation


# instance fields
.field private abTest:Lcab/snapp/passenger/data/models/ABTestBean;
    .annotation runtime Lcom/google/gson/a/c;
        value = "campaigns"
    .end annotation
.end field

.field private appData:Lcab/snapp/passenger/data/models/AppData;
    .annotation runtime Lcom/google/gson/a/c;
        value = "app_data"
    .end annotation
.end field

.field private arrivalEta:Lcab/snapp/passenger/data/models/ArrivalEta;
    .annotation runtime Lcom/google/gson/a/c;
        value = "arriving_eta"
    .end annotation
.end field

.field private callCenterNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "call_center_number"
    .end annotation
.end field

.field private callCenterNumberBiker:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "call_center_number_biker"
    .end annotation
.end field

.field private cedarMapData:Lcab/snapp/passenger/data/models/CedarMapData;
    .annotation runtime Lcom/google/gson/a/c;
        value = "cedar_map_data"
    .end annotation
.end field

.field private eventInterval:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "event_interval"
    .end annotation
.end field

.field private favoritePlaces:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "favorite_places"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field

.field private followedApps:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/a/c;
        value = "followed_apps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isApWalletEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_ap_enabled"
    .end annotation
.end field

.field private isInRideJiringEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "inride_jiring_enabled"
    .end annotation
.end field

.field private isOnlinePayEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_online_payment_enabled"
    .end annotation
.end field

.field private jiringGuideLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "jiring_link"
    .end annotation
.end field

.field private listRatingOptions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "predefined_rating_texts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RatingOption;",
            ">;"
        }
    .end annotation
.end field

.field private listRideMessages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride_message"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listWaitingTips:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "waiting_tips"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/WaitingTips;",
            ">;"
        }
    .end annotation
.end field

.field private locationInterval:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "location_interval"
    .end annotation
.end field

.field private mapBoxStyleUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "mapbox_style_url"
    .end annotation
.end field

.field private mapBoxToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "mapbox_token"
    .end annotation
.end field

.field private mapType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "map_type"
    .end annotation
.end field

.field private needRate:Lcab/snapp/passenger/data/models/FinishRide;
    .annotation runtime Lcom/google/gson/a/c;
        value = "need_rate"
    .end annotation
.end field

.field private passengerChangeLogList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "update_message"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/ChangeLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private paymentTexts:Lcab/snapp/passenger/data/models/PaymentTexts;
    .annotation runtime Lcom/google/gson/a/c;
        value = "payment_texts"
    .end annotation
.end field

.field private pinCacheConfig:Lcab/snapp/passenger/data/models/PinCacheConfig;
    .annotation runtime Lcom/google/gson/a/c;
        value = "pin"
    .end annotation
.end field

.field private profileResponse:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;
    .annotation runtime Lcom/google/gson/a/c;
        value = "profile"
    .end annotation
.end field

.field private realtime:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;
    .annotation runtime Lcom/google/gson/a/c;
        value = "realtime"
    .end annotation
.end field

.field private referralBaseUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "referral_base_url"
    .end annotation
.end field

.field private referralIntroText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "referral_intro_text"
    .end annotation
.end field

.field private referralShareableText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "referral_shareable_text"
    .end annotation
.end field

.field private retryWithHigherPrice:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "retry_with_higher_price"
    .end annotation
.end field

.field private ride:Lcab/snapp/passenger/data/models/Ride;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride"
    .end annotation
.end field

.field private safeCall:Lcab/snapp/passenger/data/models/SafeCall;
    .annotation runtime Lcom/google/gson/a/c;
        value = "call"
    .end annotation
.end field

.field private skippableRating:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "skippable_rating"
    .end annotation
.end field

.field private snappChargeRechargeUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "snappgroup_recharge"
    .end annotation
.end field

.field private snappGroupLastModificationTimestamp:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "snappgroup_content_date"
    .end annotation
.end field

.field private snappPusher:Lcab/snapp/passenger/data/models/SnappPusher;
    .annotation runtime Lcom/google/gson/a/c;
        value = "pusher"
    .end annotation
.end field

.field private snappUssd:Lcab/snapp/passenger/data/models/SnappUssd;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ussd"
    .end annotation
.end field

.field private syncInterval:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/a/c;
        value = "sync_interval"
    .end annotation
.end field

.field private waitingGif:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "waiting_gif"
    .end annotation
.end field

.field private waitingPackageGif:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "waiting_package_gif"
    .end annotation
.end field

.field private waitingRide:Lcab/snapp/passenger/data/models/Ride;
    .annotation runtime Lcom/google/gson/a/c;
        value = "started_ride"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbTest()Lcab/snapp/passenger/data/models/ABTestBean;
    .locals 1

    .line 484
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->abTest:Lcab/snapp/passenger/data/models/ABTestBean;

    return-object v0
.end method

.method public getAppData()Lcab/snapp/passenger/data/models/AppData;
    .locals 1

    .line 203
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->appData:Lcab/snapp/passenger/data/models/AppData;

    return-object v0
.end method

.method public getArrivalEta()Lcab/snapp/passenger/data/models/ArrivalEta;
    .locals 1

    .line 343
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->arrivalEta:Lcab/snapp/passenger/data/models/ArrivalEta;

    return-object v0
.end method

.method public getCallCenterNumber()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->callCenterNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCallCenterNumberBiker()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->callCenterNumberBiker:Ljava/lang/String;

    return-object v0
.end method

.method public getCedarMapData()Lcab/snapp/passenger/data/models/CedarMapData;
    .locals 1

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->cedarMapData:Lcab/snapp/passenger/data/models/CedarMapData;

    return-object v0
.end method

.method public getEventInterval()I
    .locals 1

    .line 333
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->eventInterval:I

    return v0
.end method

.method public getFavoritePlaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->favoritePlaces:Ljava/util/List;

    return-object v0
.end method

.method public getFollowedApps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->followedApps:Ljava/util/HashMap;

    return-object v0
.end method

.method public getJiringGuideLink()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->jiringGuideLink:Ljava/lang/String;

    return-object v0
.end method

.method public getListRatingOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RatingOption;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listRatingOptions:Ljava/util/List;

    return-object v0
.end method

.method public getListRideMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listRideMessages:Ljava/util/List;

    return-object v0
.end method

.method public getListWaitingTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/WaitingTips;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listWaitingTips:Ljava/util/List;

    return-object v0
.end method

.method public getLocationInterval()I
    .locals 1

    .line 323
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->locationInterval:I

    return v0
.end method

.method public getMapBoxStyleUrl()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapBoxStyleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMapBoxToken()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapBoxToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    .line 474
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapType:I

    return v0
.end method

.method public getNeedRate()Lcab/snapp/passenger/data/models/FinishRide;
    .locals 1

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->needRate:Lcab/snapp/passenger/data/models/FinishRide;

    return-object v0
.end method

.method public getPassengerChangeLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/ChangeLogItem;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->passengerChangeLogList:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentTexts()Lcab/snapp/passenger/data/models/PaymentTexts;
    .locals 1

    .line 519
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->paymentTexts:Lcab/snapp/passenger/data/models/PaymentTexts;

    return-object v0
.end method

.method public getPinCacheConfig()Lcab/snapp/passenger/data/models/PinCacheConfig;
    .locals 1

    .line 424
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->pinCacheConfig:Lcab/snapp/passenger/data/models/PinCacheConfig;

    return-object v0
.end method

.method public getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;
    .locals 1

    .line 213
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->profileResponse:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    return-object v0
.end method

.method public getRealtime()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;
    .locals 1

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->realtime:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;

    return-object v0
.end method

.method public getReferralBaseUri()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralIntroText()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralIntroText:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralShareableText()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralShareableText:Ljava/lang/String;

    return-object v0
.end method

.method public getRide()Lcab/snapp/passenger/data/models/Ride;
    .locals 1

    .line 223
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->ride:Lcab/snapp/passenger/data/models/Ride;

    return-object v0
.end method

.method public getSafeCall()Lcab/snapp/passenger/data/models/SafeCall;
    .locals 1

    .line 403
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->safeCall:Lcab/snapp/passenger/data/models/SafeCall;

    return-object v0
.end method

.method public getSnappChargeRechargeUrl()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappChargeRechargeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSnappGroupLastModificationTimestamp()J
    .locals 2

    .line 514
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappGroupLastModificationTimestamp:J

    return-wide v0
.end method

.method public getSnappPusher()Lcab/snapp/passenger/data/models/SnappPusher;
    .locals 1

    .line 263
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappPusher:Lcab/snapp/passenger/data/models/SnappPusher;

    return-object v0
.end method

.method public getSnappUssd()Lcab/snapp/passenger/data/models/SnappUssd;
    .locals 1

    .line 303
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappUssd:Lcab/snapp/passenger/data/models/SnappUssd;

    return-object v0
.end method

.method public getSyncInterval()Ljava/lang/Integer;
    .locals 1

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->syncInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWaitingGif()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingGif:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitingPackageGif()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingPackageGif:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitingRide()Lcab/snapp/passenger/data/models/Ride;
    .locals 1

    .line 233
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingRide:Lcab/snapp/passenger/data/models/Ride;

    return-object v0
.end method

.method public isApWalletEnabled()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isApWalletEnabled:Z

    return v0
.end method

.method public isInRideJiringEnabled()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isInRideJiringEnabled:Z

    return v0
.end method

.method public isOnlinePayEnabled()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isOnlinePayEnabled:Z

    return v0
.end method

.method public isRetryWithHigherPrice()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->retryWithHigherPrice:Z

    return v0
.end method

.method public isSkippableRating()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->skippableRating:Z

    return v0
.end method

.method public setAbTest(Lcab/snapp/passenger/data/models/ABTestBean;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->abTest:Lcab/snapp/passenger/data/models/ABTestBean;

    return-void
.end method

.method public setApWalletEnabled(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isApWalletEnabled:Z

    return-void
.end method

.method public setAppData(Lcab/snapp/passenger/data/models/AppData;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->appData:Lcab/snapp/passenger/data/models/AppData;

    return-void
.end method

.method public setArrivalEta(Lcab/snapp/passenger/data/models/ArrivalEta;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->arrivalEta:Lcab/snapp/passenger/data/models/ArrivalEta;

    return-void
.end method

.method public setCallCenterNumber(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->callCenterNumber:Ljava/lang/String;

    return-void
.end method

.method public setCallCenterNumberBiker(Ljava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->callCenterNumberBiker:Ljava/lang/String;

    return-void
.end method

.method public setCedarMapData(Lcab/snapp/passenger/data/models/CedarMapData;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->cedarMapData:Lcab/snapp/passenger/data/models/CedarMapData;

    return-void
.end method

.method public setEventInterval(I)V
    .locals 0

    .line 338
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->eventInterval:I

    return-void
.end method

.method public setFavoritePlaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;)V"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->favoritePlaces:Ljava/util/List;

    return-void
.end method

.method public setFollowedApps(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 499
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->followedApps:Ljava/util/HashMap;

    return-void
.end method

.method public setInRideJiringEnabled(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isInRideJiringEnabled:Z

    return-void
.end method

.method public setJiringGuideLink(Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->jiringGuideLink:Ljava/lang/String;

    return-void
.end method

.method public setListRatingOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RatingOption;",
            ">;)V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listRatingOptions:Ljava/util/List;

    return-void
.end method

.method public setListRideMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listRideMessages:Ljava/util/List;

    return-void
.end method

.method public setListWaitingTips(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/WaitingTips;",
            ">;)V"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listWaitingTips:Ljava/util/List;

    return-void
.end method

.method public setLocationInterval(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->locationInterval:I

    return-void
.end method

.method public setMapBoxStyleUrl(Ljava/lang/String;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapBoxStyleUrl:Ljava/lang/String;

    return-void
.end method

.method public setMapBoxToken(Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapBoxToken:Ljava/lang/String;

    return-void
.end method

.method public setMapType(I)V
    .locals 0

    .line 479
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapType:I

    return-void
.end method

.method public setNeedRate(Lcab/snapp/passenger/data/models/FinishRide;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->needRate:Lcab/snapp/passenger/data/models/FinishRide;

    return-void
.end method

.method public setOnlinePayEnabled(Z)V
    .locals 0

    .line 544
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isOnlinePayEnabled:Z

    return-void
.end method

.method public setPassengerChangeLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/ChangeLogItem;",
            ">;)V"
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->passengerChangeLogList:Ljava/util/List;

    return-void
.end method

.method public setPaymentTexts(Lcab/snapp/passenger/data/models/PaymentTexts;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->paymentTexts:Lcab/snapp/passenger/data/models/PaymentTexts;

    return-void
.end method

.method public setPinCacheConfig(Lcab/snapp/passenger/data/models/PinCacheConfig;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->pinCacheConfig:Lcab/snapp/passenger/data/models/PinCacheConfig;

    return-void
.end method

.method public setProfileResponse(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->profileResponse:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    return-void
.end method

.method public setRealtime(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->realtime:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;

    return-void
.end method

.method public setReferralBaseUri(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralBaseUri:Ljava/lang/String;

    return-void
.end method

.method public setReferralIntroText(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralIntroText:Ljava/lang/String;

    return-void
.end method

.method public setReferralShareableText(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralShareableText:Ljava/lang/String;

    return-void
.end method

.method public setRetryWithHigherPrice(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->retryWithHigherPrice:Z

    return-void
.end method

.method public setRide(Lcab/snapp/passenger/data/models/Ride;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->ride:Lcab/snapp/passenger/data/models/Ride;

    return-void
.end method

.method public setSafeCall(Lcab/snapp/passenger/data/models/SafeCall;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->safeCall:Lcab/snapp/passenger/data/models/SafeCall;

    return-void
.end method

.method public setSkippableRating(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->skippableRating:Z

    return-void
.end method

.method public setSnappChargeRechargeUrl(Ljava/lang/String;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappChargeRechargeUrl:Ljava/lang/String;

    return-void
.end method

.method public setSnappPusher(Lcab/snapp/passenger/data/models/SnappPusher;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappPusher:Lcab/snapp/passenger/data/models/SnappPusher;

    return-void
.end method

.method public setSnappUssd(Lcab/snapp/passenger/data/models/SnappUssd;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappUssd:Lcab/snapp/passenger/data/models/SnappUssd;

    return-void
.end method

.method public setSyncInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->syncInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setWaitingGif(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingGif:Ljava/lang/String;

    return-void
.end method

.method public setWaitingPackageGif(Ljava/lang/String;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingPackageGif:Ljava/lang/String;

    return-void
.end method

.method public setWaitingRide(Lcab/snapp/passenger/data/models/Ride;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingRide:Lcab/snapp/passenger/data/models/Ride;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigResponse{retryWithHigherPrice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->retryWithHigherPrice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", referralBaseUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", referralIntroText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralIntroText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", referralShareableText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->referralShareableText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callCenterNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->callCenterNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callCenterNumberBiker=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->callCenterNumberBiker:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cedarMapData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->cedarMapData:Lcab/snapp/passenger/data/models/CedarMapData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->appData:Lcab/snapp/passenger/data/models/AppData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profileResponse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->profileResponse:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ride="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->ride:Lcab/snapp/passenger/data/models/Ride;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waitingRide="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingRide:Lcab/snapp/passenger/data/models/Ride;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", safeCall="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->safeCall:Lcab/snapp/passenger/data/models/SafeCall;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", snappPusher="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappPusher:Lcab/snapp/passenger/data/models/SnappPusher;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->needRate:Lcab/snapp/passenger/data/models/FinishRide;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skippableRating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->skippableRating:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", listRatingOptions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listRatingOptions:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", snappUssd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappUssd:Lcab/snapp/passenger/data/models/SnappUssd;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", favoritePlaces="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->favoritePlaces:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", locationInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->locationInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->eventInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arrivalEta="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->arrivalEta:Lcab/snapp/passenger/data/models/ArrivalEta;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", listRideMessages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listRideMessages:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", listWaitingTips="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->listWaitingTips:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", jiringGuideLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->jiringGuideLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isInRideJiringEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isInRideJiringEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", waitingGif=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingGif:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", waitingPackageGif=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->waitingPackageGif:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", syncInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->syncInterval:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pinCacheConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->pinCacheConfig:Lcab/snapp/passenger/data/models/PinCacheConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", passengerChangeLogList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->passengerChangeLogList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mapBoxToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapBoxToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mapBoxStyleUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapBoxStyleUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", followedApps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->followedApps:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mapType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->mapType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", abTest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->abTest:Lcab/snapp/passenger/data/models/ABTestBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", snappChargeRechargeUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappChargeRechargeUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", snappGroupLastModificationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->snappGroupLastModificationTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", paymentTexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->paymentTexts:Lcab/snapp/passenger/data/models/PaymentTexts;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isApWalletEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isApWalletEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", realtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->realtime:Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
