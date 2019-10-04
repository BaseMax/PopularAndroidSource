.class public final Lcab/snapp/passenger/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOX_OPTIONS_ERROR_CODE:I = 0x7c9

.field public static final DEFAULT_INVALID_PLACE_ID:I = -0x3e8

.field public static final EMPTY_BOX_OPTIONS_ADDRESS_ERROR:Ljava/lang/String; = "EMPTY_BOX_OPTIONS_ADDRESS_ERROR"

.field public static final EMPTY_BOX_OPTIONS_ERROR:Ljava/lang/String; = "EMPTY_BOX_OPTIONS_ERROR"

.field public static final EMPTY_BOX_OPTIONS_NAME_ERROR:Ljava/lang/String; = "EMPTY_BOX_OPTIONS_NAME_ERROR"

.field public static final EMPTY_BOX_OPTIONS_PHONE_NUMBER_ERROR:Ljava/lang/String; = "EMPTY_BOX_OPTIONS_PHONE_NUMBER_ERROR"

.field public static final INVALID_BOX_OPTIONS_PHONE_NUMBER_ERROR:Ljava/lang/String; = "INVALID_BOX_OPTIONS_PHONE_NUMBER_ERROR"

.field public static final RIDE_CANCEL_ERROR_CODE:I = 0xa8f

.field public static final RIDE_CANCEL_WRONG_STATE_ERROR:Ljava/lang/String; = "RIDE_CANCEL_WRONG_STATE_ERROR"

.field public static final RIDE_DATA_MANAGER_CHANNEL_ID:Ljava/lang/String;

.field public static final RIDE_REQUEST_CANCEL_ERROR_CODE:I = 0x55c

.field public static final RIDE_REQUEST_CANCEL_WRONG_STATE_ERROR:Ljava/lang/String; = "RIDE_REQUEST_CANCEL_WRONG_STATE_ERROR"

.field public static final STATE_DESTINATION_SELECTED:I = 0x2

.field public static final STATE_DRIVER_ARRIVED:I = 0x5

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_ORIGIN_SELECTED:I = 0x1

.field public static final STATE_PASSENGER_BOARDED:I = 0x6

.field public static final STATE_RIDE_ACCEPTED:I = 0x4

.field public static final STATE_RIDE_FINISHED:I = 0x7

.field public static final STATE_RIDE_REQUESTED:I = 0x3

.field public static final UPDATE_SIGNAL_BOX_OPTIONS:I = 0x3f3

.field public static final UPDATE_SIGNAL_DESTINATION_ADDRESS:I = 0x3eb

.field public static final UPDATE_SIGNAL_DESTINATION_LAT_LNG:I = 0x3ea

.field public static final UPDATE_SIGNAL_DRIVER_LOCATION_INFO:I = 0x3f4

.field public static final UPDATE_SIGNAL_OPTIONS:I = 0x3ec

.field public static final UPDATE_SIGNAL_ORIGIN_ADDRESS:I = 0x3e9

.field public static final UPDATE_SIGNAL_ORIGIN_LAT_LNG:I = 0x3e8

.field public static final UPDATE_SIGNAL_PACKAGE_DELIVERY:I = 0x3f2

.field public static final UPDATE_SIGNAL_RATING_PASSED:I = 0x3f5

.field public static final UPDATE_SIGNAL_REALLOTMENT:I = 0x3f7

.field public static final UPDATE_SIGNAL_RIDE_STATE:I = 0x7d0

.field public static final UPDATE_SIGNAL_ROUND_TRIP:I = 0x3ef

.field public static final UPDATE_SIGNAL_SEC_DESTINATION_ADDRESS:I = 0x3ee

.field public static final UPDATE_SIGNAL_SEC_DESTINATION_LAT_LNG:I = 0x3ed

.field public static final UPDATE_SIGNAL_SERVICE_TYPE:I = 0x3f1

.field public static final UPDATE_SIGNAL_VOUCHER:I = 0x3f6

.field public static final UPDATE_SIGNAL_WAITING:I = 0x3f0


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Lcab/snapp/passenger/data/models/DriverInfo;

.field private E:Lcab/snapp/passenger/data/models/LocationInfo;

.field private F:Lcab/snapp/passenger/data/models/RideInformation;

.field private G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

.field private H:Lcab/snapp/passenger/data/models/SafeCall;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Lcab/snapp/passenger/data/models/FinishRide;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Lcab/snapp/deeplink/models/a;

.field private S:Lcab/snapp/a/a;

.field private T:Lcab/snapp/deeplink/models/a;

.field private U:Lcab/snapp/passenger/data_access_layer/a/d;

.field private V:Lcab/snapp/passenger/f/b/b/c;

.field private W:Lcab/snapp/passenger/b/a;

.field private a:Lcab/snapp/b;

.field private b:Lcab/snapp/passenger/c/b;

.field private c:Lcab/snapp/passenger/c/e;

.field private d:I

.field private e:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lio/reactivex/b/c;

.field private g:Lio/reactivex/b/c;

.field private h:Lio/reactivex/b/c;

.field private i:I

.field private j:Lcom/google/android/gms/maps/model/LatLng;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/android/gms/maps/model/LatLng;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lio/reactivex/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/a<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcab/snapp/passenger/data/models/Options;

.field private s:Lcom/google/android/gms/maps/model/LatLng;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Z

.field private y:Lcab/snapp/passenger/data/models/BoxOptions;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/c/g;->RIDE_DATA_MANAGER_CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/c/e;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/passenger/b/a;Lcab/snapp/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 144
    iput v0, p0, Lcab/snapp/passenger/c/g;->d:I

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const/16 v0, -0x3e8

    .line 156
    iput v0, p0, Lcab/snapp/passenger/c/g;->o:I

    .line 167
    iget v0, p0, Lcab/snapp/passenger/c/g;->d:I

    iput v0, p0, Lcab/snapp/passenger/c/g;->w:I

    .line 232
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->b:Lcab/snapp/passenger/c/b;

    .line 233
    iput-object p2, p0, Lcab/snapp/passenger/c/g;->c:Lcab/snapp/passenger/c/e;

    .line 234
    iput-object p3, p0, Lcab/snapp/passenger/c/g;->U:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 235
    iput-object p4, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    .line 236
    iput-object p5, p0, Lcab/snapp/passenger/c/g;->W:Lcab/snapp/passenger/b/a;

    .line 237
    iput-object p6, p0, Lcab/snapp/passenger/c/g;->a:Lcab/snapp/b;

    .line 238
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    .line 239
    invoke-static {}, Lio/reactivex/j/a;->create()Lio/reactivex/j/a;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/c/g;->p:Lio/reactivex/j/a;

    .line 241
    invoke-virtual {p6}, Lcab/snapp/b;->getObservable()Lio/reactivex/z;

    move-result-object p2

    invoke-static {}, Lio/reactivex/a/b/a;->mainThread()Lio/reactivex/ah;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/z;->observeOn(Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p2

    new-instance p3, Lcab/snapp/passenger/c/-$$Lambda$g$fqrjw4YxQEK_pOBmqvxq08dlLLQ;

    invoke-direct {p3, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$fqrjw4YxQEK_pOBmqvxq08dlLLQ;-><init>(Lcab/snapp/passenger/c/g;)V

    sget-object p4, Lcab/snapp/passenger/c/-$$Lambda$g$7arV4rlnWcciK7BWNTOCe2epCyc;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$g$7arV4rlnWcciK7BWNTOCe2epCyc;

    invoke-virtual {p2, p3, p4}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/c/g;->f:Lio/reactivex/b/c;

    .line 248
    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfigObservable()Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/c/-$$Lambda$g$NueSLAUhand5ftKaAqcSg1MO-Y4;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$NueSLAUhand5ftKaAqcSg1MO-Y4;-><init>(Lcab/snapp/passenger/c/g;)V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->g:Lio/reactivex/b/c;

    return-void
.end method

.method private a()V
    .locals 6

    .line 1162
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->b:Lcab/snapp/passenger/c/b;

    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1167
    :goto_0
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->W:Lcab/snapp/passenger/b/a;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/b/a;->setRideId(Ljava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->a:Lcab/snapp/b;

    invoke-virtual {v1}, Lcab/snapp/b;->init()V

    .line 1171
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->a:Lcab/snapp/b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "POLING"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "MQTT"

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Lcab/snapp/b;->start([Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1174
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappPusher()Lcab/snapp/passenger/data/models/SnappPusher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1176
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappPusher()Lcab/snapp/passenger/data/models/SnappPusher;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SnappPusher;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->a:Lcab/snapp/b;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "PUSHER"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/b;->start([Ljava/lang/String;)V

    .line 1187
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1189
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->a:Lcab/snapp/b;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "POLUNG_SIDE_REQUEST"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/b;->start([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcab/snapp/a/a;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 493
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getEventType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 497
    new-instance v2, Lcom/google/gson/e;

    invoke-direct {v2}, Lcom/google/gson/e;-><init>()V

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getEventType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "driver_arrived"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v5, "ride_cancelled"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v5, "passenger_boarded"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_3
    const-string v5, "receipt_change"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_4
    const-string v5, "ride_reallotted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x9

    goto :goto_0

    :sswitch_5
    const-string v5, "POLLING_SIDE_REQUEST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_6
    const-string v5, "ride_finished"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "online_payment_finishes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_8
    const-string v5, "no_driver_accepted_request"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_9
    const-string v5, "driver_accepted_ride"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    :cond_0
    :goto_0
    const/16 v3, 0x3f7

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 837
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-class v4, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    invoke-virtual {v2, v0, v4}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    .line 838
    invoke-direct {v1, v0}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;)V

    .line 839
    iget-boolean v0, v1, Lcab/snapp/passenger/c/g;->C:Z

    if-eqz v0, :cond_22

    .line 841
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->k()V

    .line 842
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    return-void

    .line 802
    :pswitch_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-class v4, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    .line 803
    invoke-direct {v1, v2}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;)V

    if-eqz v2, :cond_2

    .line 805
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 808
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 809
    iput-boolean v11, v1, Lcab/snapp/passenger/c/g;->L:Z

    .line 810
    iput-boolean v10, v1, Lcab/snapp/passenger/c/g;->N:Z

    .line 812
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery()Z

    move-result v0

    iput-boolean v0, v1, Lcab/snapp/passenger/c/g;->x:Z

    .line 815
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getServiceType()I

    move-result v0

    iput v0, v1, Lcab/snapp/passenger/c/g;->w:I

    .line 818
    :cond_1
    iget v0, v1, Lcab/snapp/passenger/c/g;->i:I

    if-eq v0, v6, :cond_2

    .line 820
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 827
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 744
    :pswitch_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-class v6, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    invoke-virtual {v2, v4, v6}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    .line 745
    invoke-direct {v1, v2}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;)V

    if-eqz v2, :cond_8

    .line 747
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 750
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getListWaitingTips()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getListWaitingTips()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 755
    :cond_3
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 756
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 757
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 758
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 760
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 761
    iput-boolean v10, v1, Lcab/snapp/passenger/c/g;->u:Z

    .line 762
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 763
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 764
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 766
    :cond_4
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 768
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 771
    :cond_5
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_6

    .line 773
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery()Z

    move-result v0

    iput-boolean v0, v1, Lcab/snapp/passenger/c/g;->x:Z

    .line 774
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getServiceType()I

    move-result v0

    iput v0, v1, Lcab/snapp/passenger/c/g;->w:I

    .line 777
    :cond_6
    iget v0, v1, Lcab/snapp/passenger/c/g;->i:I

    if-eq v0, v8, :cond_7

    .line 779
    iput-boolean v11, v1, Lcab/snapp/passenger/c/g;->J:Z

    .line 780
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->i()V

    .line 783
    :cond_7
    iget-boolean v0, v1, Lcab/snapp/passenger/c/g;->C:Z

    if-eqz v0, :cond_8

    .line 785
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    return-void

    :catch_1
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 685
    :pswitch_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-class v6, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    invoke-virtual {v2, v4, v6}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    .line 687
    invoke-direct {v1, v2}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;)V

    if-eqz v2, :cond_e

    .line 689
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 692
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getListWaitingTips()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 694
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getListWaitingTips()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 697
    :cond_9
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 698
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 699
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 700
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 702
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 703
    iput-boolean v10, v1, Lcab/snapp/passenger/c/g;->u:Z

    .line 704
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 705
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 706
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 708
    :cond_a
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 710
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 713
    :cond_b
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_c

    .line 715
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery()Z

    move-result v0

    iput-boolean v0, v1, Lcab/snapp/passenger/c/g;->x:Z

    .line 716
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getServiceType()I

    move-result v0

    iput v0, v1, Lcab/snapp/passenger/c/g;->w:I

    .line 719
    :cond_c
    iget v0, v1, Lcab/snapp/passenger/c/g;->i:I

    if-eq v0, v7, :cond_d

    .line 721
    iput-boolean v11, v1, Lcab/snapp/passenger/c/g;->I:Z

    .line 722
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->h()V

    .line 725
    :cond_d
    iget-boolean v0, v1, Lcab/snapp/passenger/c/g;->C:Z

    if-eqz v0, :cond_e

    .line 727
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    return-void

    :catch_2
    move-exception v0

    .line 734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 735
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 618
    :pswitch_5
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-class v6, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    invoke-virtual {v2, v4, v6}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;

    .line 620
    invoke-direct {v1, v2}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;)V

    if-eqz v2, :cond_15

    .line 622
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 625
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getListWaitingTips()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 627
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getListWaitingTips()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 630
    :cond_f
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 631
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 632
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 633
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 635
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 636
    iput-boolean v10, v1, Lcab/snapp/passenger/c/g;->u:Z

    .line 637
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 638
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 639
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 641
    :cond_10
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 643
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 645
    :cond_11
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getSafeCall()Lcab/snapp/passenger/data/models/SafeCall;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 647
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getSafeCall()Lcab/snapp/passenger/data/models/SafeCall;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->H:Lcab/snapp/passenger/data/models/SafeCall;

    .line 650
    :cond_12
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_13

    .line 652
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery()Z

    move-result v0

    iput-boolean v0, v1, Lcab/snapp/passenger/c/g;->x:Z

    .line 653
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getServiceType()I

    move-result v0

    iput v0, v1, Lcab/snapp/passenger/c/g;->w:I

    .line 660
    :cond_13
    iget v0, v1, Lcab/snapp/passenger/c/g;->i:I

    if-eq v0, v9, :cond_14

    .line 662
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->g()V

    .line 665
    :cond_14
    iget-boolean v0, v1, Lcab/snapp/passenger/c/g;->C:Z

    if-eqz v0, :cond_15

    .line 667
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_15
    return-void

    :catch_3
    move-exception v0

    .line 675
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 561
    :pswitch_6
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-class v4, Lcab/snapp/passenger/data/models/events/CancelEvent;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/events/CancelEvent;

    if-eqz v2, :cond_16

    .line 564
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getReallottedRideId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    .line 565
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getReallottedRideId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 567
    iget-boolean v3, v1, Lcab/snapp/passenger/c/g;->C:Z

    if-nez v3, :cond_16

    .line 569
    iput-boolean v11, v1, Lcab/snapp/passenger/c/g;->C:Z

    .line 570
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getRideId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    :cond_16
    if-eqz v2, :cond_1d

    .line 576
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getRideId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 580
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1201d4

    .line 581
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_17

    .line 583
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 584
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/raizlabs/android/dbflow/a;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 586
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_17
    move-object v14, v0

    .line 590
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$e;->DRIVER_CANCELED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 594
    new-instance v12, Lcab/snapp/passenger/f/r;

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v12, v0}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    .line 596
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f12004a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 595
    invoke-virtual/range {v12 .. v17}, Lcab/snapp/passenger/f/r;->showInformativeDialog(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 2569
    :cond_18
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    if-eqz v0, :cond_1c

    .line 2572
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2574
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v2

    iget-object v4, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 2575
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 2578
    :cond_19
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1a

    .line 2580
    iput-boolean v11, v1, Lcab/snapp/passenger/c/g;->u:Z

    .line 2583
    :cond_1a
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2585
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 2588
    :cond_1b
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 2592
    :cond_1c
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 2593
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 2594
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 2595
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    .line 2596
    iput-object v5, v1, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;

    .line 2598
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->b()V

    .line 2599
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->l()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1d
    return-void

    :catch_4
    move-exception v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 531
    :pswitch_7
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-class v4, Lcab/snapp/passenger/data/models/events/CancelEvent;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/events/CancelEvent;

    if-eqz v2, :cond_1e

    .line 534
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getReallottedRideId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    .line 535
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getReallottedRideId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 537
    iget-boolean v3, v1, Lcab/snapp/passenger/c/g;->C:Z

    if-nez v3, :cond_1e

    .line 539
    iput-boolean v11, v1, Lcab/snapp/passenger/c/g;->C:Z

    .line 540
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getRideId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    :cond_1e
    if-eqz v2, :cond_1f

    .line 544
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/events/CancelEvent;->getRideId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 546
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_RIDE_IS_NOT_ACCEPTED_YET:Ljava/lang/String;

    const-string v4, "[show]"

    invoke-virtual {v0, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120168

    invoke-static {v0, v2}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    .line 548
    invoke-direct/range {p0 .. p0}, Lcab/snapp/passenger/c/g;->l()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1f
    return-void

    :catch_5
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 506
    :pswitch_8
    iget v3, v1, Lcab/snapp/passenger/c/g;->i:I

    if-eq v3, v9, :cond_20

    if-eq v3, v7, :cond_20

    if-ne v3, v8, :cond_22

    .line 510
    :cond_20
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/a/a;->getData()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-class v3, Lcab/snapp/passenger/data/models/Vehicle;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/e;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/Vehicle;

    if-eqz v0, :cond_21

    .line 511
    iget-object v2, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    if-eqz v2, :cond_21

    .line 513
    iget-object v2, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Vehicle;->getBearing()I

    move-result v3

    invoke-virtual {v2, v3}, Lcab/snapp/passenger/data/models/LocationInfo;->setBearing(I)V

    .line 514
    iget-object v2, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Vehicle;->getLatestLat()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcab/snapp/passenger/data/models/LocationInfo;->setLat(D)V

    .line 515
    iget-object v2, v1, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Vehicle;->getLatestLng()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcab/snapp/passenger/data/models/LocationInfo;->setLng(D)V

    .line 516
    iget-object v0, v1, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v2, 0x3f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_21
    return-void

    :catch_6
    move-exception v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_22
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f90c947 -> :sswitch_9
        -0x571b1f50 -> :sswitch_8
        -0x3bdf9cfa -> :sswitch_7
        -0x3a3ce027 -> :sswitch_6
        -0x3719215d -> :sswitch_5
        -0x2f6aa419 -> :sswitch_4
        -0x273dd069 -> :sswitch_3
        -0x221164a0 -> :sswitch_2
        -0x14364936 -> :sswitch_1
        0x2827b56 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized a(Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;)V
    .locals 2

    monitor-enter p0

    .line 852
    :try_start_0
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 853
    monitor-exit p0

    return-void

    .line 855
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getReallottedRideId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getReallottedRideId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 857
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->C:Z

    .line 858
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/events/AfterAcceptEvent;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    monitor-exit p0

    return-void

    .line 863
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    .line 1619
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1621
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/RideInformation;->getCurrentState()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1624
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 1625
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 1626
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 1628
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 1633
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1635
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->g()V

    return-void

    .line 1637
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1639
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 1640
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->h()V

    return-void

    .line 1642
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getCurrentState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 1644
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 1645
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->J:Z

    .line 1646
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->i()V

    return-void

    .line 1653
    :cond_3
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    if-eqz p1, :cond_6

    .line 1655
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1657
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 1658
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    iget-object v6, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 1659
    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {p1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 1662
    :cond_4
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v4

    cmpl-double p1, v4, v1

    if-lez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->u:Z

    .line 1664
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1666
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 1671
    :cond_6
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->b()V

    .line 1672
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->l()V

    return-void

    .line 1678
    :cond_7
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    if-eqz p1, :cond_a

    .line 1680
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1682
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 1683
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    iget-object v6, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 1684
    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {p1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 1687
    :cond_8
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v4

    cmpl-double p1, v4, v1

    if-lez p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->u:Z

    .line 1689
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1691
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 1696
    :cond_a
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->b()V

    .line 1697
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->l()V

    :cond_b
    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 8

    if-eqz p1, :cond_12

    .line 956
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isSkippableRating()Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->M:Z

    .line 957
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSafeCall()Lcab/snapp/passenger/data/models/SafeCall;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->H:Lcab/snapp/passenger/data/models/SafeCall;

    .line 958
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getNeedRate()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->O:Lcab/snapp/passenger/data/models/FinishRide;

    .line 960
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    if-nez v0, :cond_1

    .line 962
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcab/snapp/passenger/c/g;->i:I

    if-ne p1, v1, :cond_12

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->reset()V

    return-void

    .line 971
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    const/16 v2, 0x3f7

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 973
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    .line 974
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getServiceType()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/c/g;->w:I

    .line 975
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getServiceType()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 976
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getRideWaitingList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 978
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 980
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 981
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    .line 982
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 986
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 988
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 989
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    .line 990
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 994
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 996
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 998
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 1001
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 1002
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 1005
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->u:Z

    .line 1007
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1009
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 1014
    :cond_6
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    .line 1016
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getReallottedRideId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1018
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->C:Z

    .line 1019
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->k()V

    .line 1020
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void

    .line 1024
    :cond_7
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1025
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->f()V

    return-void

    .line 1032
    :cond_8
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 1033
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 1034
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getRideWaitingList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 1035
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 1036
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Ride;->getServiceType()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 1038
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Ride;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 1043
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz p1, :cond_12

    .line 1045
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getServiceType()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/c/g;->w:I

    .line 1046
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->isDelivery()Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->x:Z

    .line 1047
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    .line 1049
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1051
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {p1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 1052
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getOrigin()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->k:Ljava/lang/String;

    .line 1053
    iput v3, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1056
    :cond_9
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_a

    .line 1058
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    iget-object v6, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {p1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 1059
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->m:Ljava/lang/String;

    .line 1060
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1066
    :cond_a
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getCurrentState()I

    move-result p1

    if-eq p1, v3, :cond_11

    if-eq p1, v0, :cond_10

    if-eq p1, v1, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_c

    const/16 v0, 0x11

    if-eq p1, v0, :cond_b

    .line 1113
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->reset()V

    goto :goto_1

    .line 1099
    :cond_b
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1100
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 1101
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->J:Z

    .line 1102
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->i()V

    .line 1103
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    goto :goto_1

    .line 1092
    :cond_c
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1093
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 1094
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->J:Z

    .line 1095
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->i()V

    .line 1096
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    goto :goto_1

    .line 1106
    :cond_d
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1107
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 1108
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->J:Z

    .line 1109
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->L:Z

    .line 1110
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->j()V

    goto :goto_1

    .line 1085
    :cond_e
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1086
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 1087
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->J:Z

    .line 1088
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->i()V

    .line 1089
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    goto :goto_1

    .line 1079
    :cond_f
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1080
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 1081
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->h()V

    .line 1082
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    goto :goto_1

    .line 1074
    :cond_10
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1075
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->g()V

    .line 1076
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    .line 1117
    :cond_11
    :goto_1
    iget-boolean p1, p0, Lcab/snapp/passenger/c/g;->L:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideInformation;->getReallottedRideId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1119
    iput-boolean v3, p0, Lcab/snapp/passenger/c/g;->C:Z

    .line 1120
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1831
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;->getRideId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    .line 1832
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    const/4 p1, 0x1

    .line 1833
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/c/g;->setRideRequested(Z)V

    .line 5131
    iget v0, p0, Lcab/snapp/passenger/c/g;->w:I

    const-string v1, ""

    if-eq v0, p1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const-string p1, "bike"

    goto :goto_0

    .line 5143
    :cond_1
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->BOX_SERVICE_TYPE_BOARDED:Ljava/lang/String;

    const-string p1, "box"

    goto :goto_0

    .line 5139
    :cond_2
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->ROSE_SERVICE_TYPE_BOARDED:Ljava/lang/String;

    const-string p1, "rose"

    goto :goto_0

    .line 5151
    :cond_3
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->PLUS_SERVICE_TYPE_BOARDED:Ljava/lang/String;

    const-string p1, "plus"

    goto :goto_0

    .line 5135
    :cond_4
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->ECO_SERVICE_TYPE_BOARDED:Ljava/lang/String;

    const-string p1, "eco"

    .line 5159
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "serviceType"

    .line 5160
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5161
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$e;->RIDE_REQUEST:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 5163
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5165
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5168
    :cond_5
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->T:Lcab/snapp/deeplink/models/a;

    if-eqz p1, :cond_7

    .line 5170
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object p1

    sget-object v0, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne p1, v0, :cond_6

    .line 5172
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->INTEGRATION:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->INTENT:Ljava/lang/String;

    const-string v2, "Deep Link Geo Request"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5176
    :cond_6
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->INTEGRATION:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->INTENT:Ljava/lang/String;

    const-string v2, "Deep Link Request"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 1838
    :cond_8
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->b()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5531
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 5534
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5536
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v1

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 5537
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 5540
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 5542
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->u:Z

    .line 5545
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5547
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 5549
    :cond_2
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 5552
    :cond_3
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 5553
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 5554
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 5555
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    .line 5556
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;

    .line 5558
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->b()V

    .line 5559
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->l()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1840
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->b()V

    return-void
.end method

.method private declared-synchronized a(Lcab/snapp/a/a;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 897
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 899
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    monitor-exit p0

    return v1

    .line 903
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 905
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    monitor-exit p0

    return v1

    .line 909
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 911
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 912
    monitor-exit p0

    return v0

    .line 915
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcab/snapp/a/a;->getEventId()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;

    invoke-virtual {v2}, Lcab/snapp/a/a;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 917
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 918
    monitor-exit p0

    return v1

    .line 921
    :cond_3
    :try_start_4
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 922
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Lcab/snapp/deeplink/models/types/Host;)Z
    .locals 1

    .line 344
    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    .line 1198
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;

    .line 1199
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->a:Lcab/snapp/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/b;->stop([Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1702
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    const/16 v0, 0x3fc

    if-ne p1, v0, :cond_0

    .line 1704
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->b()V

    .line 1705
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->l()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 1218
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1242
    :pswitch_0
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->N:Z

    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->reset()V

    goto :goto_0

    .line 1239
    :pswitch_1
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->j()V

    return-void

    .line 1236
    :pswitch_2
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->i()V

    return-void

    .line 1233
    :pswitch_3
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->h()V

    return-void

    .line 1230
    :pswitch_4
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->g()V

    return-void

    .line 1227
    :pswitch_5
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->f()V

    return-void

    .line 1224
    :pswitch_6
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->e()V

    return-void

    .line 1221
    :pswitch_7
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->d()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 879
    new-instance p1, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;

    invoke-direct {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;-><init>()V

    const/4 v0, -0x1

    .line 880
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->setStatus(I)V

    const-string v0, ""

    .line 881
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->setText(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->p:Lio/reactivex/j/a;

    invoke-virtual {v0, p1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1293
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1295
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1296
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 1297
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->t()V

    :cond_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    invoke-static {p0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private e()V
    .locals 2

    .line 1307
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 1309
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1310
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 1311
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->u()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1321
    iget v0, p0, Lcab/snapp/passenger/c/g;->w:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1323
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->C:Z

    const/4 v0, 0x3

    .line 1324
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1325
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 1335
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 1338
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->r()V

    .line 1341
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->a:Lcab/snapp/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "POLUNG_SIDE_REQUEST"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcab/snapp/b;->start([Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 1343
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1344
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 1345
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1347
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1348
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 1349
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1350
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->c:Lcab/snapp/passenger/c/e;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/c/e;->saveLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1361
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->q()V

    .line 1362
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->I:Z

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    const/4 v0, 0x5

    .line 1365
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1366
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1376
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->J:Z

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 1379
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->s()V

    const/4 v0, 0x6

    .line 1380
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1381
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1391
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1393
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->C:Z

    const/4 v0, 0x7

    .line 1394
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1395
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 1396
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->v()V

    .line 1397
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->w()V

    .line 1398
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->b()V

    .line 1399
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->cleanRidePaymentStatusText()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x1

    .line 1416
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->B:Z

    const/4 v0, 0x3

    .line 1417
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1418
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    .line 1430
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 1431
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->C:Z

    const/4 v0, 0x2

    .line 1432
    iput v0, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1433
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$7arV4rlnWcciK7BWNTOCe2epCyc(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/c/g;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$7f6GNDwFcU_ZPMcAHTtOnEX3uA0(Lcab/snapp/passenger/c/g;Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;)V

    return-void
.end method

.method public static synthetic lambda$BOxQbXInlPl08YArDMuhdSat94Y(Lcab/snapp/passenger/c/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$JDBJ4XWv13sP_Sm5fZye0u0QrT4(Lcab/snapp/passenger/c/g;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$NueSLAUhand5ftKaAqcSg1MO-Y4(Lcab/snapp/passenger/c/g;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method

.method public static synthetic lambda$PlxkkDoE-lup7oU2mLv4UC23BrE(Lcab/snapp/passenger/c/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$fqrjw4YxQEK_pOBmqvxq08dlLLQ(Lcab/snapp/passenger/c/g;Lcab/snapp/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/a/a;)V

    return-void
.end method

.method public static synthetic lambda$ta91JaUR-ggI5YP2KGg4aKzOd6o(Lcab/snapp/passenger/c/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$yNiQBVT4Hipg2gMaem-OSmnyrCs(Lcab/snapp/passenger/c/g;Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;)V

    return-void
.end method

.method private m()Z
    .locals 1

    .line 1892
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/BoxOptions;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/BoxOptions;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private n()Z
    .locals 1

    .line 1902
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/BoxOptions;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/BoxOptions;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private o()Z
    .locals 1

    .line 1912
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/BoxOptions;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/BoxOptions;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p()Z
    .locals 1

    .line 1922
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/BoxOptions;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private q()V
    .locals 3

    .line 2000
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->RIDE:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->ARRIVED:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private r()V
    .locals 4

    .line 2005
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->ACCEPTED_OFFER_BY_DRIVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 2006
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->RIDE:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->Assigned:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->T:Lcab/snapp/deeplink/models/a;

    if-eqz v0, :cond_1

    .line 2010
    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v0, v1, :cond_0

    .line 2012
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->INTEGRATION:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->INTENT:Ljava/lang/String;

    const-string v3, "Deep Link Geo Assigned"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->INTEGRATION:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->INTENT:Ljava/lang/String;

    const-string v3, "Deep Link Assigned"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 2019
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->T:Lcab/snapp/deeplink/models/a;

    :cond_1
    return-void
.end method

.method private s()V
    .locals 5

    .line 2025
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2027
    iget v1, p0, Lcab/snapp/passenger/c/g;->w:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "bike"

    goto :goto_0

    :cond_1
    const-string v1, "box"

    goto :goto_0

    :cond_2
    const-string v1, "rose"

    goto :goto_0

    :cond_3
    const-string v1, "eco"

    :goto_0
    const-string v2, "serviceType"

    .line 2042
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$e;->BOARDED:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2044
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->K:Z

    if-eqz v0, :cond_4

    const-string v0, "FIRST_TIME_PASSENGER_BOARDED_SHARED_PREF_KEY"

    .line 2045
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/c/g;->isItTheFirstTime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2047
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->FIRST_TIME_PASSENGER_BOARDED:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->FIRST_RIDE_GHOST:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserPhoneProvided()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2051
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$d;->FIRST_RIDE_BOARDED:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    iget-object v4, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v4}, Lcab/snapp/passenger/f/b/b/c;->getUserCellPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAppmetrica(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->RIDE:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->BOARDED:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 2082
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_SET_ORIGIN:Ljava/lang/String;

    const-string v3, "[map]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coordinate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$e;->ORIGIN_SET:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2088
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Fix Origin"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 4

    .line 2093
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Fix Destination"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_SET_DESTINATION:Ljava/lang/String;

    const-string v3, "[map]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "coordinate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$e;->DESTINATION_SET:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private v()V
    .locals 4

    .line 2103
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    if-nez v0, :cond_0

    return-void

    .line 2108
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2109
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideInformation;->getFinalPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$e;->RIDE_COST:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2114
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/c;->getUserCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$e;->EXISTING_CREDIT:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private w()V
    .locals 4

    .line 2121
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->FINISH_RIDE:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final applyDeepLink()V
    .locals 8

    .line 361
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    if-eqz v0, :cond_10

    .line 363
    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v2, :cond_4

    .line 365
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/PathType;->Here:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v2, :cond_1

    .line 367
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->c:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 370
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v2}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/deeplink/models/b;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/b;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 379
    :cond_2
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 382
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->Q:Z

    .line 384
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Selective:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v1, :cond_3

    .line 386
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->d()V

    goto/16 :goto_3

    .line 388
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 390
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->d()V

    .line 391
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/b;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/b;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 392
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->e()V

    goto/16 :goto_3

    .line 396
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/deeplink/models/types/Host;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 398
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v2, :cond_5

    .line 400
    invoke-virtual {p0, v1}, Lcab/snapp/passenger/c/g;->setDefaultServiceType(I)V

    goto :goto_1

    .line 402
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v2, :cond_6

    const/4 v0, 0x3

    .line 404
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/c/g;->setDefaultServiceType(I)V

    goto :goto_1

    .line 406
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v2, :cond_7

    const/4 v0, 0x7

    .line 408
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/c/g;->setDefaultServiceType(I)V

    goto :goto_1

    .line 410
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v2, :cond_8

    const/4 v0, 0x5

    .line 412
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/c/g;->setDefaultServiceType(I)V

    .line 415
    :cond_8
    :goto_1
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->Q:Z

    .line 417
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 419
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Here:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v1, :cond_9

    .line 421
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->c:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 424
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_2

    .line 427
    :cond_9
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 429
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/b;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/b;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 432
    :cond_a
    :goto_2
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 434
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Selective:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v1, :cond_b

    .line 436
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->d()V

    goto/16 :goto_3

    .line 438
    :cond_b
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 440
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->d()V

    .line 441
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/b;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/b;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 442
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->e()V

    goto :goto_3

    .line 449
    :cond_c
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v0, v2, :cond_e

    .line 452
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_d

    .line 454
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->c:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 457
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 461
    :cond_d
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v2, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_e

    .line 464
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->Q:Z

    .line 466
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/b;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/c;->getLocation()Lcab/snapp/deeplink/models/b;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/b;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 467
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->e()V

    .line 471
    :cond_e
    :goto_3
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath3()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath3()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getType()Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->StringData:Lcab/snapp/deeplink/models/types/PathType;

    if-ne v0, v1, :cond_f

    .line 473
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getPath3()Lcab/snapp/deeplink/models/c;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/c;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->P:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x3f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 477
    :cond_f
    new-instance v0, Lcab/snapp/deeplink/models/a;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v3

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v4

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getPath1()Lcab/snapp/deeplink/models/c;

    move-result-object v5

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getPath2()Lcab/snapp/deeplink/models/c;

    move-result-object v6

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/a;->getPath3()Lcab/snapp/deeplink/models/c;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcab/snapp/deeplink/models/a;-><init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->T:Lcab/snapp/deeplink/models/a;

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->Q:Z

    :cond_10
    return-void
.end method

.method public final areBoxOptionsValid()Z
    .locals 4

    .line 1850
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1852
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->n()Z

    move-result v0

    const/4 v2, 0x0

    const v3, 0x7f06004b

    if-nez v0, :cond_0

    .line 1854
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200b2

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    return v2

    .line 1858
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1860
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200bc

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    return v2

    .line 1864
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1866
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200bd

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    return v2

    .line 1870
    :cond_2
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1872
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200ba

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    return v2

    :cond_3
    return v1
.end method

.method public final cancelRide()Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    .line 1491
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1493
    :cond_1
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    const/4 v1, 0x0

    const/16 v2, 0xa8f

    const-string v3, "RIDE_CANCEL_WRONG_STATE_ERROR"

    invoke-direct {v0, v1, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1496
    :cond_2
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->U:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->cancelRide(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$g$JDBJ4XWv13sP_Sm5fZye0u0QrT4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$JDBJ4XWv13sP_Sm5fZye0u0QrT4;-><init>(Lcab/snapp/passenger/c/g;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final cancelRideRequest()Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;",
            ">;"
        }
    .end annotation

    .line 1613
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1618
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->U:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->cancelRideRequest(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$g$7f6GNDwFcU_ZPMcAHTtOnEX3uA0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$7f6GNDwFcU_ZPMcAHTtOnEX3uA0;-><init>(Lcab/snapp/passenger/c/g;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$g$ta91JaUR-ggI5YP2KGg4aKzOd6o;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$ta91JaUR-ggI5YP2KGg4aKzOd6o;-><init>(Lcab/snapp/passenger/c/g;)V

    .line 1699
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnError(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1615
    :cond_1
    :goto_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    const/4 v1, 0x0

    const/16 v2, 0x55c

    const-string v3, "RIDE_REQUEST_CANCEL_WRONG_STATE_ERROR"

    invoke-direct {v0, v1, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final checkAndStartEventManagerIfNeeded()V
    .locals 0

    .line 1207
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->a()V

    return-void
.end method

.method public final cleanRidePaymentStatusText()V
    .locals 2

    .line 1405
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;-><init>()V

    const-string v1, ""

    .line 1406
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->setText(Ljava/lang/String;)V

    const/4 v1, -0x2

    .line 1407
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->setStatus(I)V

    .line 1408
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->p:Lio/reactivex/j/a;

    invoke-virtual {v1, v0}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;
    .locals 1

    .line 2404
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    return-object v0
.end method

.method public final getCurrentState()I
    .locals 1

    .line 2204
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    return v0
.end method

.method public final getDeepLink()Lcab/snapp/deeplink/models/a;
    .locals 1

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    return-object v0
.end method

.method public final getDestinationFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 2256
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getDestinationFormattedDetailsAddress()Ljava/lang/String;
    .locals 1

    .line 2268
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 2238
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getDestinationPlaceId()I
    .locals 1

    .line 2546
    iget v0, p0, Lcab/snapp/passenger/c/g;->o:I

    return v0
.end method

.method public final getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;
    .locals 1

    .line 2427
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    return-object v0
.end method

.method public final getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;
    .locals 1

    .line 2438
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    return-object v0
.end method

.method public final getFinishedRide()Lcab/snapp/passenger/data/models/FinishRide;
    .locals 1

    .line 2199
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->O:Lcab/snapp/passenger/data/models/FinishRide;

    return-object v0
.end method

.method public final getOptions()Lcab/snapp/passenger/data/models/Options;
    .locals 1

    .line 2301
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    return-object v0
.end method

.method public final getOriginFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 2226
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 2209
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getPaymentStatusObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;",
            ">;"
        }
    .end annotation

    .line 2561
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->p:Lio/reactivex/j/a;

    invoke-virtual {v0}, Lio/reactivex/j/a;->hide()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final getRideId()Ljava/lang/String;
    .locals 1

    .line 2536
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;
    .locals 1

    .line 2449
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    return-object v0
.end method

.method public final getRideWaitingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
    .end annotation

    .line 2290
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    return-object v0
.end method

.method public final getSafeCall()Lcab/snapp/passenger/data/models/SafeCall;
    .locals 1

    .line 2471
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->H:Lcab/snapp/passenger/data/models/SafeCall;

    return-object v0
.end method

.method public final getSecondDestinationFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 2325
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 2313
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getServiceType()I
    .locals 1

    .line 2380
    iget v0, p0, Lcab/snapp/passenger/c/g;->w:I

    return v0
.end method

.method public final getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;
    .locals 1

    .line 2460
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-object v0
.end method

.method public final getUpdateSignalObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2493
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getVoucher()Ljava/lang/String;
    .locals 1

    .line 2278
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final getWaitingKey()Ljava/lang/String;
    .locals 1

    .line 2364
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final handleRefreshedConfigForRideState(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 935
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingRide()Lcab/snapp/passenger/data/models/Ride;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getNeedRate()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 937
    :cond_1
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    :cond_2
    return-void
.end method

.method public final hasDriverArrived()Z
    .locals 1

    .line 2498
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->I:Z

    return v0
.end method

.method public final hasRideDeeplink()Z
    .locals 1

    .line 2337
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->Q:Z

    return v0
.end method

.method public final isInRide()Z
    .locals 2

    .line 289
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isItTheFirstTime(Ljava/lang/String;)Z
    .locals 4

    .line 2060
    new-instance v0, Lcab/snapp/b/a;

    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 2063
    invoke-virtual {v0, p1}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2064
    invoke-virtual {v0, p1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2065
    invoke-virtual {v0, p1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 2073
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    return v2

    :cond_1
    return v3
.end method

.method public final isPackageDelivery()Z
    .locals 1

    .line 2392
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->x:Z

    return v0
.end method

.method public final isPassengerBoarded()Z
    .locals 1

    .line 2503
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->J:Z

    return v0
.end method

.method public final isRatingPassed()Z
    .locals 1

    .line 2525
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->N:Z

    return v0
.end method

.method public final isRatingSkippable()Z
    .locals 1

    .line 2482
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->M:Z

    return v0
.end method

.method public final isRideFinished()Z
    .locals 1

    .line 2514
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->L:Z

    return v0
.end method

.method public final isRideFree()Z
    .locals 1

    .line 2342
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->z:Z

    return v0
.end method

.method public final isRideReallotted()Z
    .locals 1

    .line 2556
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->C:Z

    return v0
.end method

.method public final isRideRequested()Z
    .locals 1

    .line 2416
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->B:Z

    return v0
.end method

.method public final isRoundTrip()Z
    .locals 1

    .line 2352
    iget-boolean v0, p0, Lcab/snapp/passenger/c/g;->u:Z

    return v0
.end method

.method public final reportVoucherIsNotValidToMarketing()V
    .locals 4

    .line 1987
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const-string v1, "[failed]"

    if-nez v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_VOUCHER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    :cond_0
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1994
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_VOUCHER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final reportVoucherIsValidToMarketing()V
    .locals 4

    .line 1974
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const-string v1, "[successful]"

    if-nez v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_VOUCHER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    :cond_0
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1981
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_VOUCHER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final requestRide()Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;",
            ">;"
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_b

    .line 1727
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;-><init>()V

    .line 1729
    iget-boolean v1, p0, Lcab/snapp/passenger/c/g;->x:Z

    if-eqz v1, :cond_6

    .line 1731
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    const/16 v2, 0x7c9

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1733
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    const-string v1, "EMPTY_BOX_OPTIONS_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1737
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->o()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1765
    :cond_1
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/BoxOptions;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setPackageInfo(Ljava/lang/String;)V

    .line 1766
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/BoxOptions;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setExtraInfo(Ljava/lang/String;)V

    .line 1767
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/BoxOptions;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setRecipientName(Ljava/lang/String;)V

    .line 1768
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/BoxOptions;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setRecipientCellphone(Ljava/lang/String;)V

    .line 1769
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/BoxOptions;->isPaidByRecipient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setPaidByRecipient(Z)V

    goto :goto_1

    .line 1740
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1742
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    const-string v1, "EMPTY_BOX_OPTIONS_NAME_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1745
    :cond_3
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->m()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1747
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    const-string v1, "EMPTY_BOX_OPTIONS_ADDRESS_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1750
    :cond_4
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->o()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1752
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    const-string v1, "EMPTY_BOX_OPTIONS_PHONE_NUMBER_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1754
    :cond_5
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->p()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1756
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/e;

    const-string v1, "INVALID_BOX_OPTIONS_PHONE_NUMBER_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lcab/snapp/passenger/data_access_layer/a/e;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1777
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcab/snapp/passenger/c/g;->x:Z

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setPackageDelivery(Z)V

    .line 1781
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setOriginLatitude(D)V

    .line 1782
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setOriginLongitude(D)V

    .line 1786
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setDestinationLatitude(D)V

    .line 1787
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setDestinationLongitude(D)V

    .line 1789
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->n:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1791
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setDestinationDetails(Ljava/lang/String;)V

    .line 1796
    :cond_7
    iget v1, p0, Lcab/snapp/passenger/c/g;->w:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    .line 1798
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_8

    .line 1800
    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setExtraDestinationLatitude(Ljava/lang/Double;)V

    .line 1801
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setExtraDestinationLongitude(Ljava/lang/Double;)V

    .line 1803
    :cond_8
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setWaitingKey(Ljava/lang/String;)V

    .line 1805
    :cond_9
    iget-boolean v1, p0, Lcab/snapp/passenger/c/g;->u:Z

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setRoundTrip(Z)V

    .line 1807
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->P:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1809
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setVoucherCode(Ljava/lang/String;)V

    .line 1814
    :cond_a
    iget v1, p0, Lcab/snapp/passenger/c/g;->w:I

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;->setServiceType(I)V

    .line 4827
    iget-object v1, p0, Lcab/snapp/passenger/c/g;->U:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->requestRide(Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$g$yNiQBVT4Hipg2gMaem-OSmnyrCs;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$yNiQBVT4Hipg2gMaem-OSmnyrCs;-><init>(Lcab/snapp/passenger/c/g;)V

    .line 4828
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$g$PlxkkDoE-lup7oU2mLv4UC23BrE;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$PlxkkDoE-lup7oU2mLv4UC23BrE;-><init>(Lcab/snapp/passenger/c/g;)V

    .line 4840
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnError(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 1722
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originLatLng or destination LatLng can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1723
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 1724
    throw v0
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 4941
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->P:Ljava/lang/String;

    .line 4942
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 4943
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->k:Ljava/lang/String;

    .line 4944
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 4945
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->m:Ljava/lang/String;

    const/16 v1, -0x3e8

    .line 4946
    iput v1, p0, Lcab/snapp/passenger/c/g;->o:I

    .line 4947
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 4948
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 4949
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 4950
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4951
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->u:Z

    .line 4952
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 4953
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->x:Z

    .line 4954
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    .line 4955
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 4956
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 4957
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 4958
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 4959
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 4960
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 4961
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->J:Z

    .line 4962
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->L:Z

    .line 4963
    iput-boolean v1, p0, Lcab/snapp/passenger/c/g;->N:Z

    .line 4964
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->O:Lcab/snapp/passenger/data/models/FinishRide;

    .line 4965
    iput-object v0, p0, Lcab/snapp/passenger/c/g;->S:Lcab/snapp/a/a;

    const/4 v0, 0x1

    .line 4966
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/c/g;->setDefaultServiceType(I)V

    .line 4967
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/c/g;->setServiceType(I)V

    .line 1932
    iput v1, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 1933
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final setBoxOptions(Lcab/snapp/passenger/data/models/BoxOptions;)V
    .locals 1

    .line 2409
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    .line 2410
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3f3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2411
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setDeepLink(Lcab/snapp/deeplink/models/a;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 318
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    sget-object v3, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    sget-object v3, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    if-ne v1, v3, :cond_1

    .line 320
    :cond_0
    iput-boolean v2, p0, Lcab/snapp/passenger/c/g;->Q:Z

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v1

    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v1, v3, :cond_2

    .line 324
    iput-boolean v2, p0, Lcab/snapp/passenger/c/g;->Q:Z

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/passenger/c/g;->a(Lcab/snapp/deeplink/models/types/Host;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    iput-boolean v2, p0, Lcab/snapp/passenger/c/g;->Q:Z

    goto :goto_0

    .line 332
    :cond_3
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->Q:Z

    goto :goto_0

    .line 337
    :cond_4
    iput-boolean v0, p0, Lcab/snapp/passenger/c/g;->Q:Z

    .line 339
    :goto_0
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->R:Lcab/snapp/deeplink/models/a;

    return-void
.end method

.method public final setDefaultServiceType(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcab/snapp/passenger/c/g;->d:I

    .line 300
    iget p1, p0, Lcab/snapp/passenger/c/g;->d:I

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/c/g;->setServiceType(I)V

    return-void
.end method

.method public final setDestinationFormattedAddress(Ljava/lang/String;)V
    .locals 1

    .line 2261
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->m:Ljava/lang/String;

    .line 2262
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2263
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setDestinationFormattedDetailsAddress(Ljava/lang/String;)V
    .locals 0

    .line 2273
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->n:Ljava/lang/String;

    return-void
.end method

.method public final setDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 2244
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2249
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 2250
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2251
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setDestinationPlaceId(I)V
    .locals 0

    .line 2551
    iput p1, p0, Lcab/snapp/passenger/c/g;->o:I

    return-void
.end method

.method public final setDriverInfo(Lcab/snapp/passenger/data/models/DriverInfo;)V
    .locals 0

    .line 2432
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->D:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 2433
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setDriverLocationInfo(Lcab/snapp/passenger/data/models/LocationInfo;)V
    .locals 0

    .line 2443
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->E:Lcab/snapp/passenger/data/models/LocationInfo;

    .line 2444
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setHasDriverArrived(Z)V
    .locals 0

    .line 2193
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->I:Z

    .line 2194
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setNeedConfirmRideRequest(Z)V
    .locals 0

    .line 2188
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->K:Z

    return-void
.end method

.method public final setOptions(Lcab/snapp/passenger/data/models/Options;)V
    .locals 1

    .line 2306
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 2307
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2308
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setOriginFormattedAddress(Ljava/lang/String;)V
    .locals 1

    .line 2231
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->k:Ljava/lang/String;

    .line 2232
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2233
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setOriginLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 2214
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    if-eqz v0, :cond_0

    return-void

    .line 2219
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 2220
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2221
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setPackageDelivery(Z)V
    .locals 1

    .line 2397
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->x:Z

    .line 2398
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3f2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2399
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setPassengerBoarded(Z)V
    .locals 0

    .line 2508
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->J:Z

    .line 2509
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setRatingPassed(Z)V
    .locals 0

    .line 2530
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->N:Z

    .line 2531
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setRatingSkippable(Z)V
    .locals 0

    .line 2487
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->M:Z

    .line 2488
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setRideFinished(Z)V
    .locals 0

    .line 2519
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->L:Z

    .line 2520
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setRideFree(Z)V
    .locals 0

    .line 2347
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->z:Z

    return-void
.end method

.method public final setRideId(Ljava/lang/String;)V
    .locals 0

    .line 2541
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    return-void
.end method

.method public final setRideInformation(Lcab/snapp/passenger/data/models/RideInformation;)V
    .locals 0

    .line 2454
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->F:Lcab/snapp/passenger/data/models/RideInformation;

    .line 2455
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setRideRequested(Z)V
    .locals 0

    .line 2421
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->B:Z

    .line 2422
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setRideWaitingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;)V"
        }
    .end annotation

    .line 2295
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 2296
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setRoundTrip(Z)V
    .locals 1

    .line 2357
    iput-boolean p1, p0, Lcab/snapp/passenger/c/g;->u:Z

    .line 2358
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2359
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setSafeCall(Lcab/snapp/passenger/data/models/SafeCall;)V
    .locals 0

    .line 2476
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->H:Lcab/snapp/passenger/data/models/SafeCall;

    .line 2477
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setSecondDestinationFormattedAddress(Ljava/lang/String;)V
    .locals 1

    .line 2330
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 2331
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2332
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 2318
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 2319
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2320
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setServiceType(I)V
    .locals 1

    .line 2385
    iput p1, p0, Lcab/snapp/passenger/c/g;->w:I

    .line 2386
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3f1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2387
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setServiceTypeModel(Lcab/snapp/passenger/data/models/ServiceTypeModel;)V
    .locals 0

    .line 2465
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->G:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 2466
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setVoucher(Ljava/lang/String;)V
    .locals 1

    .line 2283
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->P:Ljava/lang/String;

    .line 2284
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3f6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2285
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final setWaitingKey(Ljava/lang/String;)V
    .locals 1

    .line 2369
    iput-object p1, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 2370
    iget-object p1, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    const/16 v0, 0x3f0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 2371
    invoke-direct {p0}, Lcab/snapp/passenger/c/g;->c()V

    return-void
.end method

.method public final stateUp()Z
    .locals 6

    .line 1259
    iget v0, p0, Lcab/snapp/passenger/c/g;->i:I

    const-string v1, "[tap]"

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v5

    .line 4441
    :pswitch_1
    iput-boolean v5, p0, Lcab/snapp/passenger/c/g;->C:Z

    .line 4442
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->P:Ljava/lang/String;

    .line 4444
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 4445
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->m:Ljava/lang/String;

    .line 4446
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->n:Ljava/lang/String;

    const/16 v0, -0x3e8

    .line 4447
    iput v0, p0, Lcab/snapp/passenger/c/g;->o:I

    .line 4449
    iget v0, p0, Lcab/snapp/passenger/c/g;->d:I

    iput v0, p0, Lcab/snapp/passenger/c/g;->w:I

    .line 4450
    iput-boolean v5, p0, Lcab/snapp/passenger/c/g;->x:Z

    .line 4451
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->y:Lcab/snapp/passenger/data/models/BoxOptions;

    .line 4452
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->r:Lcab/snapp/passenger/data/models/Options;

    .line 4454
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->q:Ljava/util/List;

    .line 4455
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->s:Lcom/google/android/gms/maps/model/LatLng;

    .line 4456
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->t:Ljava/lang/String;

    .line 4457
    iput-boolean v5, p0, Lcab/snapp/passenger/c/g;->u:Z

    .line 4458
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->v:Ljava/lang/String;

    .line 4460
    iput v3, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 4461
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 4463
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_BACK_TO_SET_DESTINATION:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 3471
    :pswitch_2
    iput-boolean v5, p0, Lcab/snapp/passenger/c/g;->C:Z

    .line 3472
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->j:Lcom/google/android/gms/maps/model/LatLng;

    .line 3473
    iput-object v4, p0, Lcab/snapp/passenger/c/g;->k:Ljava/lang/String;

    .line 3475
    iput v5, p0, Lcab/snapp/passenger/c/g;->i:I

    .line 3476
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->e:Lio/reactivex/j/b;

    invoke-virtual {v0, v2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 3478
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->V:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_BACK_TO_SET_ORIGIN:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updatePaymentStatus()V
    .locals 5

    .line 870
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getFinalPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 872
    invoke-virtual {p0}, Lcab/snapp/passenger/c/g;->cleanRidePaymentStatusText()V

    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/g;->U:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->getRidePaymentStatus(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/c/g;->p:Lio/reactivex/j/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcab/snapp/passenger/c/-$$Lambda$BhjUjWF60IMQ1sYB6fdB2wGXNLY;

    invoke-direct {v2, v1}, Lcab/snapp/passenger/c/-$$Lambda$BhjUjWF60IMQ1sYB6fdB2wGXNLY;-><init>(Lio/reactivex/j/a;)V

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$g$BOxQbXInlPl08YArDMuhdSat94Y;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$g$BOxQbXInlPl08YArDMuhdSat94Y;-><init>(Lcab/snapp/passenger/c/g;)V

    .line 877
    invoke-virtual {v0, v2, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/g;->h:Lio/reactivex/b/c;

    return-void
.end method
