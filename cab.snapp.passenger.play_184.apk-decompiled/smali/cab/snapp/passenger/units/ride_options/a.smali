.class public Lcab/snapp/passenger/units/ride_options/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/ride_options/e;",
        "Lcab/snapp/passenger/units/ride_options/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Lcab/snapp/passenger/data/models/Options;

.field d:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/google/android/gms/maps/model/LatLng;

.field private m:Lcom/google/android/gms/maps/model/LatLng;

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/ride_options/a;->g:Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/ride_options/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcab/snapp/passenger/units/ride_options/a;->b:I

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/a;->i:Z

    .line 79
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/a;->j:Z

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/a;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 92
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/a;->m:Lcom/google/android/gms/maps/model/LatLng;

    .line 96
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/a;->n:Z

    .line 100
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/a;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/ride_options/a;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 40
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/a;->m:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic a(Lcab/snapp/passenger/units/ride_options/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/a;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 755
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "stopTime[disable]"

    const-string v2, "rideOption"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 757
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 758
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 759
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 761
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x4

    const-string v4, "In-ride"

    if-ne v0, v3, :cond_1

    .line 765
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 766
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 767
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 769
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 773
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 774
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 775
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 777
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 781
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 782
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 783
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 785
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_3
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/units/ride_options/c;->onInRideState(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/ride_options/c;->onInRideState(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/ride_options/a;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, v0}, Lcab/snapp/passenger/units/ride_options/a;->a(Ljava/lang/Integer;Z)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/c;->onChangeOptionsResponse()V

    .line 191
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcab/snapp/passenger/units/ride_options/a;->a(Ljava/lang/Integer;Z)V

    return-void
.end method

.method private a(Ljava/lang/Integer;Z)V
    .locals 15

    move-object v0, p0

    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 247
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    .line 248
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1c

    .line 249
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto/16 :goto_d

    .line 253
    :cond_1
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    .line 254
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getRideWaitingList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    .line 255
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v1

    iput v1, v0, Lcab/snapp/passenger/units/ride_options/a;->b:I

    .line 256
    iget v1, v0, Lcab/snapp/passenger/units/ride_options/a;->b:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v7, 0x1

    .line 262
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_13

    .line 264
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    if-eqz v1, :cond_a

    .line 266
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 268
    iput-boolean v2, v0, Lcab/snapp/passenger/units/ride_options/a;->i:Z

    .line 269
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v8

    iget-object v6, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v10

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 274
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 276
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    move-object v3, v1

    move-object v1, v5

    goto :goto_2

    :cond_5
    move-object v1, v5

    move-object v3, v1

    .line 280
    :goto_2
    iget-object v6, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-lez v6, :cond_6

    .line 282
    iput-boolean v2, v0, Lcab/snapp/passenger/units/ride_options/a;->j:Z

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    .line 287
    iget-object v6, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v6

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 290
    :goto_3
    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v8

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v8

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 292
    iget-object v5, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v5

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    .line 293
    iget-object v5, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v5

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    .line 294
    iget-object v5, v0, Lcab/snapp/passenger/units/ride_options/a;->c:Lcab/snapp/passenger/data/models/Options;

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v5

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    :cond_8
    if-eqz p2, :cond_10

    .line 298
    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v8}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 300
    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v8}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 301
    iget-object v9, v0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    if-eqz v9, :cond_10

    .line 303
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcab/snapp/passenger/data/models/RideWaiting;

    if-eqz v10, :cond_9

    .line 305
    invoke-virtual {v10}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 307
    invoke-virtual {v10}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 316
    :cond_a
    iput-boolean v4, v0, Lcab/snapp/passenger/units/ride_options/a;->i:Z

    .line 317
    iput-boolean v4, v0, Lcab/snapp/passenger/units/ride_options/a;->j:Z

    .line 318
    iput-object v5, v0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 321
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 323
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    goto :goto_5

    :cond_b
    move-object v1, v5

    .line 325
    :goto_5
    iget-object v3, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v3

    .line 326
    iget-object v6, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 328
    iget-object v6, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 329
    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    if-eqz v8, :cond_e

    .line 331
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v5

    :cond_c
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcab/snapp/passenger/data/models/RideWaiting;

    if-eqz v10, :cond_c

    .line 333
    invoke-virtual {v10}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 335
    invoke-virtual {v10}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_d
    move v6, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, v9

    goto :goto_7

    :cond_e
    move v6, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_7

    :cond_f
    move-object v1, v5

    move-object v3, v1

    const/4 v6, 0x0

    .line 343
    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 345
    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->e:Lcab/snapp/passenger/c/f;

    invoke-virtual {v8}, Lcab/snapp/passenger/c/f;->getProfile()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 348
    invoke-virtual {v8}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v8}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v9

    invoke-virtual {v9}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 350
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v9

    check-cast v9, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v8}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v8

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcab/snapp/passenger/units/ride_options/c;->onInRideState(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_9

    .line 354
    :cond_11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v9

    check-cast v9, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v8}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcab/snapp/passenger/units/ride_options/c;->onInRideState(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9

    .line 359
    :cond_12
    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->e:Lcab/snapp/passenger/c/f;

    .line 360
    invoke-virtual {v8}, Lcab/snapp/passenger/c/f;->fetchAndRefreshProfile()Lio/reactivex/z;

    move-result-object v8

    new-instance v9, Lcab/snapp/passenger/units/ride_options/-$$Lambda$a$iRvV7ftkV76IqzPnJtECRn0gCVw;

    invoke-direct {v9, p0}, Lcab/snapp/passenger/units/ride_options/-$$Lambda$a$iRvV7ftkV76IqzPnJtECRn0gCVw;-><init>(Lcab/snapp/passenger/units/ride_options/a;)V

    sget-object v10, Lcab/snapp/passenger/units/ride_options/-$$Lambda$a$-q1CU5tdv2ptOnWxGJ-6ZEFEsGY;->INSTANCE:Lcab/snapp/passenger/units/ride_options/-$$Lambda$a$-q1CU5tdv2ptOnWxGJ-6ZEFEsGY;

    .line 361
    invoke-virtual {v8, v9, v10}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v8

    .line 359
    invoke-virtual {p0, v8}, Lcab/snapp/passenger/units/ride_options/a;->addDisposable(Lio/reactivex/b/c;)V

    goto :goto_9

    .line 379
    :cond_13
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 381
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/ride_options/c;->onBeforeRideState()V

    .line 383
    :cond_14
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 384
    iget-object v3, v0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    if-eqz v3, :cond_16

    .line 386
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcab/snapp/passenger/data/models/RideWaiting;

    if-eqz v6, :cond_15

    .line 388
    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 390
    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 394
    :cond_16
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v1

    .line 395
    iget-object v3, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 396
    iget-object v6, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v6

    :cond_17
    :goto_9
    move-object v13, v1

    move-object v12, v5

    move v10, v6

    .line 398
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->l:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_18

    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 400
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 402
    :cond_18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 404
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcab/snapp/passenger/units/ride_options/c;

    iget-object v8, v0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    if-eqz v3, :cond_19

    const/4 v9, 0x1

    goto :goto_a

    :cond_19
    const/4 v9, 0x0

    :goto_a
    if-eqz v12, :cond_1a

    const/4 v11, 0x1

    goto :goto_b

    :cond_1a
    const/4 v11, 0x0

    :goto_b
    iget-object v1, v0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const/4 v14, 0x1

    goto :goto_c

    :cond_1b
    const/4 v14, 0x0

    :goto_c
    move v6, v7

    invoke-virtual/range {v5 .. v14}, Lcab/snapp/passenger/units/ride_options/c;->onDataReady(ZZLjava/util/List;ZZZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_1c
    :goto_d
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private static a(Z)V
    .locals 2

    .line 231
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/ride_options/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/ride_options/a;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_options/a;->n:Z

    return p1
.end method

.method private b()V
    .locals 5

    .line 794
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "stopTime[tap]"

    const-string v2, "rideOption"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 796
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 797
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 798
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 800
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x4

    const-string v4, "In-ride"

    if-ne v0, v3, :cond_1

    .line 804
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 805
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 806
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 808
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 812
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 813
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 814
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 816
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 818
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 820
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 821
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 822
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 824
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_3
    return-void
.end method

.method public static getConfirmationPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 131
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/ride_options/a;->h:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 121
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/ride_options/a;->g:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$-q1CU5tdv2ptOnWxGJ-6ZEFEsGY(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/ride_options/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$iRvV7ftkV76IqzPnJtECRn0gCVw(Lcab/snapp/passenger/units/ride_options/a;Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ride_options/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    return-void
.end method

.method public static synthetic lambda$oB_Kxz1ugXmHxrV3yWOFNmhoShY(Lcab/snapp/passenger/units/ride_options/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ride_options/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public addWaitingOption(Lcab/snapp/passenger/data/models/RideWaiting;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 707
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/RideWaiting;

    if-eqz v1, :cond_1

    .line 709
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 711
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 713
    iget-object v3, p0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2454
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 2456
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_STOP_OFF:Ljava/lang/String;

    const-string v3, "[disable]"

    invoke-virtual {p1, v0, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->TOAST_ASSIGNED_CAN_NOT_REDUCE_STOP_TIME:Ljava/lang/String;

    const-string v3, "[show]"

    invoke-virtual {p1, v0, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2461
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_STOP_OFF:Ljava/lang/String;

    const-string v3, "in ride options - stop - disabled"

    invoke-virtual {p1, v0, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/a;->a()V

    .line 717
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/c;

    const v0, 0x7f1202a3

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/c;->onOptionsCanNotDisabledInRide(I)V

    .line 718
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/c;->onWaitingEnabled(Ljava/lang/String;)V

    return-void

    .line 724
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 727
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    .line 2472
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const-string v1, "[lessThan_15]"

    const-string v3, "[moreThan_15]"

    const/4 v4, 0x3

    if-nez v0, :cond_6

    .line 2474
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v4, :cond_5

    .line 2476
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_ON:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2480
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2485
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 2487
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v4, :cond_7

    .line 2489
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_STOP_ON:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2493
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_STOP_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2498
    :cond_8
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v4, :cond_9

    .line 2500
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_STOP_ON:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2504
    :cond_9
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_STOP_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :goto_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/a;->b()V

    .line 731
    :cond_a
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 733
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_options/c;->onWaitingEnabled(Ljava/lang/String;)V

    return-void

    .line 738
    :cond_b
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 740
    :cond_c
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    .line 741
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/a;->b()V

    .line 743
    :cond_d
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 745
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_options/c;->onWaitingEnabled(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public applyEditOptions()V
    .locals 7

    .line 833
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/a;->n:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->m:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    invoke-static {v2}, Lcab/snapp/passenger/units/ride_options/a;->a(Z)V

    goto/16 :goto_4

    .line 835
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 839
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 3424
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3428
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    const-string v4, "First_Time_Confirm_Ride_Options"

    .line 3429
    invoke-virtual {v0, v4}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    .line 842
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->e:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getProfile()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 845
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v5

    const v6, 0x7f12008a

    if-eqz v5, :cond_5

    .line 848
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 849
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v5, 0x1e

    if-ne v0, v5, :cond_4

    .line 851
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f12008b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 855
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 860
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v0, ""

    .line 863
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const v4, 0x7f12011c

    if-nez v3, :cond_7

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 869
    :cond_7
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 871
    :goto_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 873
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v3, v0}, Lcab/snapp/passenger/units/ride_options/c;->onConfirmationNeeded(Ljava/lang/String;)V

    goto :goto_4

    .line 878
    :cond_8
    invoke-static {v3}, Lcab/snapp/passenger/units/ride_options/a;->a(Z)V

    .line 879
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 881
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onApplyChangesRequest()V

    .line 891
    :cond_9
    :goto_4
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->m:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_d

    .line 3897
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v3, "In-ride"

    const-string v4, "pinFixed"

    const-string v5, "rideOption"

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_c

    if-ne v0, v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x4

    const-string v2, "Boarded"

    if-ne v0, v1, :cond_b

    .line 3909
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 3910
    invoke-virtual {v0, v5, v4}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 3911
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3913
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    .line 3916
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 3917
    invoke-virtual {v0, v5, v4}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 3918
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3920
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto :goto_6

    .line 3901
    :cond_c
    :goto_5
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 3902
    invoke-virtual {v0, v5, v4}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Pre-ride"

    .line 3903
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3905
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public chooseSecondDestination()V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/e;->navigateToChooseSecondDestinationUnit(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public confirmToInformDriver()V
    .locals 3

    .line 4441
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4445
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 4446
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "First_Time_Confirm_Ride_Options"

    invoke-virtual {v0, v2, v1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public disableRoundTripOption()V
    .locals 5

    .line 595
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/a;->j:Z

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 599
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    const v1, 0x7f120201

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/c;->onOptionsCanNotDisabledInRide(I)V

    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setRoundTrip(Z)V

    .line 605
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onRoundTripDisabled()V

    .line 609
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 611
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_ROUND_OFF:Ljava/lang/String;

    const-string v4, "[disable]"

    invoke-virtual {v0, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_OFF:Ljava/lang/String;

    const-string v4, "in ride options - round - disabled"

    invoke-virtual {v0, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "roundtrip[disable]"

    const-string v4, "rideOption"

    if-ne v0, v2, :cond_3

    .line 1625
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1626
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 1627
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1629
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1631
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v2, "In-ride"

    if-ne v0, v1, :cond_4

    .line 1633
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1634
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 1635
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1637
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1639
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1641
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1642
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 1643
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1645
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1647
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 1649
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1650
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 1652
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1654
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_6
    return-void
.end method

.method public disableSecondDestinationOption()V
    .locals 5

    .line 529
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/a;->i:Z

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 533
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    const v1, 0x7f120201

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/c;->onOptionsCanNotDisabledInRide(I)V

    .line 534
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_OFF:Ljava/lang/String;

    const-string v3, "can not change in ride options"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 540
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_options/a;->l:Lcom/google/android/gms/maps/model/LatLng;

    .line 541
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onSecondDestinationDisabled()V

    .line 1555
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "secondDestination[disable]"

    const-string v3, "rideOption"

    if-ne v0, v1, :cond_2

    .line 1557
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1558
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 1559
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1561
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1563
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    const-string v4, "In-ride"

    if-ne v0, v1, :cond_3

    .line 1565
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1566
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 1567
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1569
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1571
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1573
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1574
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 1575
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1577
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1579
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1581
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1582
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 1584
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1586
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_5
    return-void
.end method

.method public disableWaitingOption()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    const v1, 0x7f120201

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/c;->onOptionsCanNotDisabledInRide(I)V

    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onWaitingDisabled()V

    .line 689
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/a;->a()V

    :cond_2
    return-void
.end method

.method public enableRoundTripOption()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setRoundTrip(Z)V

    .line 664
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onRoundTripEnabled()V

    :cond_0
    return-void
.end method

.method public getMainView()Landroid/view/View;
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterController;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getSnappRideDataManager()Lcab/snapp/passenger/c/g;
    .locals 1

    .line 940
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    return-object v0
.end method

.method public onRoundTripClicked()V
    .locals 5

    .line 4997
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "roundtrip[tap]"

    const-string v2, "rideOption"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 4999
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 5000
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 5001
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 5003
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 5005
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x4

    const-string v4, "In-ride"

    if-ne v0, v3, :cond_1

    .line 5007
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 5008
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 5009
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 5011
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 5013
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 5015
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 5016
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 5017
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 5019
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 5021
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 5023
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 5024
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 5025
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 5027
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_3
    return-void
.end method

.method public onSecondDestinationClicked()V
    .locals 5

    .line 4953
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "secondDestination[tap]"

    const-string v2, "rideOption"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 4955
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 4956
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 4957
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 4959
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 4961
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x4

    const-string v4, "In-ride"

    if-ne v0, v3, :cond_1

    .line 4963
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 4964
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 4965
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 4967
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 4969
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 4971
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 4972
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 4973
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 4975
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 4977
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 4979
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 4980
    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 4981
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 4983
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_3
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 140
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/ride_options/a;)V

    .line 146
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/c;->onInitialize()V

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/e;

    .line 154
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v1}, Lcab/snapp/passenger/activities/root/RootActivity;->getOverTheMapNavController()Landroidx/navigation/NavController;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/ride_options/a$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_options/a$1;-><init>(Lcab/snapp/passenger/units/ride_options/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_options/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 186
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/ride_options/a;->getConfirmationPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/ride_options/-$$Lambda$a$oB_Kxz1ugXmHxrV3yWOFNmhoShY;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/ride_options/-$$Lambda$a$oB_Kxz1ugXmHxrV3yWOFNmhoShY;-><init>(Lcab/snapp/passenger/units/ride_options/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_options/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 194
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcab/snapp/passenger/units/ride_options/a;->a(Ljava/lang/Integer;Z)V

    .line 195
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->f:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 201
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 202
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/a;->d:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcab/snapp/passenger/units/ride_options/a;->a(Ljava/lang/Integer;Z)V

    return-void
.end method
