.class public final Lcab/snapp/passenger/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/c;


# static fields
.field public static final DRIVER_ACCEPTED_RIDE_EVENT:Ljava/lang/String; = "driver_accepted_ride"

.field public static final DRIVER_ACCEPTED_RIDE_EVENT_CODE:I = 0x3

.field public static final DRIVER_ARRIVED_EVENT:Ljava/lang/String; = "driver_arrived"

.field public static final DRIVER_ARRIVED_EVENT_CODE:I = 0x4

.field public static final MQTT_TOKEN:Ljava/lang/String; = "mqttToken"

.field public static final NO_DRIVER_ACCEPTED_EVENT:Ljava/lang/String; = "no_driver_accepted_request"

.field public static final NO_DRIVER_ACCEPTED_EVENT_CODE:I = 0x1

.field public static final OFFERING_RESTARTED_EVENT:Ljava/lang/String; = "offering_restarted"

.field public static final OFFERING_RESTARTED_EVENT_CODE:I = 0x9

.field public static final ONLINE_PAYMENT_FINISHES_EVENT:Ljava/lang/String; = "online_payment_finishes"

.field public static final ONLINE_PAYMENT_FINISHES_EVENT_CODE:I = 0x7

.field public static final PASSENGER_BOARDED_EVENT:Ljava/lang/String; = "passenger_boarded"

.field public static final PASSENGER_BOARDED_EVENT_CODE:I = 0x5

.field public static final REALLOTMENT_EVENT:Ljava/lang/String; = "ride_reallotted"

.field public static final REALLOTMENT_EVENT_CODE:I = 0xa

.field public static final RECEIPT_CHANGE_EVENT:Ljava/lang/String; = "receipt_change"

.field public static final RECEIPT_CHANGE_EVENT_CODE:I = 0x8

.field public static final RIDE_CANCELLED_EVENT:Ljava/lang/String; = "ride_cancelled"

.field public static final RIDE_CANCELLED_EVENT_CODE:I = 0x2

.field public static final RIDE_FINISHED_EVENT:Ljava/lang/String; = "ride_finished"

.field public static final RIDE_FINISHED_EVENT_CODE:I = 0x6


# instance fields
.field private a:Lcab/snapp/passenger/c/b;

.field private b:Ljava/lang/String;

.field private c:Lcab/snapp/passenger/data_access_layer/network/b;

.field private final d:Lcab/snapp/snappnetwork/c;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/network/b;Lcab/snapp/snappnetwork/c;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    .line 75
    iput-object p2, p0, Lcab/snapp/passenger/b/a;->c:Lcab/snapp/passenger/data_access_layer/network/b;

    .line 76
    iput-object p3, p0, Lcab/snapp/passenger/b/a;->d:Lcab/snapp/snappnetwork/c;

    return-void
.end method


# virtual methods
.method public final getAckRequest(Lcab/snapp/a/a;)Lcab/snapp/snappnetwork/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/a/a;",
            ")",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->c:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getEventPull()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcab/snapp/a/a;->getEventId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcab/snapp/a/a;->getAckId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    .line 157
    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->build()Lcab/snapp/snappnetwork/e;

    move-result-object p1

    return-object p1
.end method

.method public final getEmqConnectionData()Lcab/snapp/d/a/a;
    .locals 1

    .line 202
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    .line 204
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRealtime()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    .line 205
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRealtime()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;->getEmq()Lcab/snapp/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    .line 209
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getRealtime()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse$RealtimeBean;->getEmq()Lcab/snapp/d/a/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEvents()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "no_driver_accepted_request"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ride_cancelled"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "driver_accepted_ride"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "driver_arrived"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "passenger_boarded"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ride_finished"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "online_payment_finishes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "receipt_change"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "offering_restarted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getIntervalPeriod()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getEventInterval()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public final getPollingRequest()Lcab/snapp/snappnetwork/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/a/b;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->c:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 110
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getEventPull()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/a/b;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcab/snapp/snappnetwork/f;->build()Lcab/snapp/snappnetwork/e;

    move-result-object v0

    return-object v0
.end method

.method public final getPollingSideRequest()Lcab/snapp/snappnetwork/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->c:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcab/snapp/passenger/b/a;->b:Ljava/lang/String;

    .line 120
    invoke-static {v1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRideVehicleLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcab/snapp/snappnetwork/f;->build()Lcab/snapp/snappnetwork/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPusherAuthorizeHeader()Ljava/util/HashMap;
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

    .line 236
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPusherHeader()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final getPusherAutorizeRequest(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/e<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->d:Lcab/snapp/snappnetwork/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/b/a;->getPusherConfig()Lcab/snapp/d/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/d/c/b;->getAuthUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcab/snapp/passenger/b/a;->getPusherAuthorizeHeader()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object v0

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    .line 194
    invoke-virtual {v0, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/snappnetwork/f;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    const-string v0, "socket_id"

    .line 195
    invoke-virtual {p1, v0, p2}, Lcab/snapp/snappnetwork/f;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->build()Lcab/snapp/snappnetwork/e;

    move-result-object p1

    return-object p1
.end method

.method public final getPusherConfig()Lcab/snapp/d/c/b;
    .locals 4

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    .line 173
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappPusher()Lcab/snapp/passenger/data/models/SnappPusher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Lcab/snapp/d/c/b;

    invoke-direct {v1}, Lcab/snapp/d/c/b;-><init>()V

    .line 179
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SnappPusher;->getCluster()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/d/c/b;->setAppCluster(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SnappPusher;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/d/c/b;->setAppKey(Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SnappPusher;->getAuthUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/d/c/b;->setAuthUrl(Ljava/lang/String;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "private-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SnappPusher;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/d/c/b;->setChannel(Ljava/lang/String;)V

    const-string v0, ""

    .line 183
    invoke-virtual {v1, v0}, Lcab/snapp/d/c/b;->setEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getSideRequestIntervalPeriod()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcab/snapp/passenger/b/a;->a:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getLocationInterval()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public final setRideId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcab/snapp/passenger/b/a;->b:Ljava/lang/String;

    return-void
.end method
