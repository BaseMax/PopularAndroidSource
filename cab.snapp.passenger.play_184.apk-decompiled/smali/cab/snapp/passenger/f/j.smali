.class public final Lcab/snapp/passenger/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ZOOM_LEVEL:I = 0xf

.field private static E:Lcab/snapp/b/a; = null

.field public static final FIXER_ANCHOR_X:F = 0.5f

.field public static final FIXER_ANCHOR_Y:F = 1.0f

.field public static final INTERACTION_CENTER_CHANGED_ON_IDLE:Ljava/lang/String; = "INTERACTION_CENTER_CHANGED_ON_IDLE"

.field public static final JEK_ZOOM_LEVEL:F = 12.5f

.field public static final MAP_INTERACTIONS_CHANNEL_KEY:Ljava/lang/String;

.field public static final MAP_STATE_KEY:Ljava/lang/String; = "MAP_STATE_KEY"

.field public static final PIN_RESPONSE_CHANNEL_KEY:Ljava/lang/String;

.field private static b:I


# instance fields
.field private A:Lcab/snapp/passenger/c/b;

.field private B:Lcab/snapp/passenger/c/g;

.field private C:Lcab/snapp/passenger/c/e;

.field private D:Lcab/snapp/passenger/data_access_layer/a/d;

.field a:Lio/reactivex/b/c;

.field private final c:Ljava/lang/String;

.field public centerLatitude:D

.field public centerLongitude:D

.field public currentZoom:I

.field private final d:I

.field private final e:J

.field private final f:I

.field private g:D

.field private h:D

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/AvailableServiceTypes;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field public lastFormattedAddress:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:J

.field private v:J

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/f/j;->PIN_RESPONSE_CHANNEL_KEY:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/f/j;->MAP_INTERACTIONS_CHANNEL_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcab/snapp/passenger/c/b;Lcab/snapp/passenger/c/g;Lcab/snapp/passenger/c/e;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/b/a;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/j;->c:Ljava/lang/String;

    const/4 v0, 0x7

    .line 85
    iput v0, p0, Lcab/snapp/passenger/f/j;->d:I

    const-wide/16 v1, 0x7530

    .line 86
    iput-wide v1, p0, Lcab/snapp/passenger/f/j;->e:J

    const/16 v3, 0xf

    .line 87
    iput v3, p0, Lcab/snapp/passenger/f/j;->f:I

    const v3, 0x7f08016a

    .line 99
    iput v3, p0, Lcab/snapp/passenger/f/j;->j:I

    const/4 v3, 0x0

    .line 105
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->o:Z

    .line 106
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->p:Z

    .line 107
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->q:Z

    .line 108
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->r:Z

    .line 109
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->s:Z

    .line 110
    iput v0, p0, Lcab/snapp/passenger/f/j;->t:I

    .line 111
    iput-wide v1, p0, Lcab/snapp/passenger/f/j;->u:J

    .line 112
    iput-wide v1, p0, Lcab/snapp/passenger/f/j;->v:J

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcab/snapp/passenger/f/j;->x:Z

    .line 115
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->y:Z

    .line 116
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->z:Z

    .line 136
    iput-object p2, p0, Lcab/snapp/passenger/f/j;->A:Lcab/snapp/passenger/c/b;

    .line 137
    iput-object p3, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    .line 138
    iput-object p4, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    .line 139
    iput-object p5, p0, Lcab/snapp/passenger/f/j;->D:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 140
    sput-object p6, Lcab/snapp/passenger/f/j;->E:Lcab/snapp/b/a;

    .line 141
    sput p1, Lcab/snapp/passenger/f/j;->b:I

    .line 142
    invoke-virtual {p3}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/f/j;->i:I

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/f/j;->k:Ljava/util/List;

    .line 144
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/String;

    sget-object p3, Lcab/snapp/passenger/f/j;->PIN_RESPONSE_CHANNEL_KEY:Ljava/lang/String;

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/j;->l:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/String;

    sget-object p3, Lcab/snapp/passenger/f/j;->MAP_INTERACTIONS_CHANNEL_KEY:Ljava/lang/String;

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/j;->m:Ljava/lang/String;

    .line 146
    iput v3, p0, Lcab/snapp/passenger/f/j;->n:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->hasRideDeeplink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->applyDeepLink()V

    goto :goto_0

    .line 658
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->hasRideDeeplink()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getDeepLink()Lcab/snapp/deeplink/models/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v0, v1, :cond_1

    .line 660
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->applyDeepLink()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 662
    iput-boolean v0, p0, Lcab/snapp/passenger/f/j;->y:Z

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f08016a

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    const v2, 0x7f080172

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 778
    iput v1, p0, Lcab/snapp/passenger/f/j;->j:I

    return-void

    :cond_0
    const p1, 0x7f080173

    .line 772
    iput p1, p0, Lcab/snapp/passenger/f/j;->j:I

    return-void

    .line 775
    :cond_1
    iput v2, p0, Lcab/snapp/passenger/f/j;->j:I

    return-void

    .line 769
    :cond_2
    iput v2, p0, Lcab/snapp/passenger/f/j;->j:I

    return-void

    :cond_3
    const p1, 0x7f080171

    .line 766
    iput p1, p0, Lcab/snapp/passenger/f/j;->j:I

    return-void

    .line 763
    :cond_4
    iput v1, p0, Lcab/snapp/passenger/f/j;->j:I

    return-void

    .line 760
    :cond_5
    iput v1, p0, Lcab/snapp/passenger/f/j;->j:I

    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 486
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/f/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getSnappFormattedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/j;->lastFormattedAddress:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getAvailableServiceTypesList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getAvailableServiceTypesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcab/snapp/passenger/f/j;->n:I

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getAvailableServiceTypesList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/j;->k:Ljava/util/List;

    .line 491
    iget v0, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 493
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->b()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 3514
    invoke-virtual {p1, p3, p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->save(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/f/j;Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lcab/snapp/passenger/f/j;->a(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 11

    .line 952
    new-instance v10, Lcab/snapp/mapmodule/a/a/a;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const-string v1, "SECOND_DESTINATION_MARKER_TAG"

    const v7, 0x7f08015c

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcab/snapp/mapmodule/a/a/a;-><init>(Ljava/lang/String;IDDIFF)V

    .line 953
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcab/snapp/mapmodule/a;->addSecondDestinationMarker(Lcab/snapp/mapmodule/a/a/a;)V

    const/4 p1, 0x1

    .line 954
    iput-boolean p1, p0, Lcab/snapp/passenger/f/j;->q:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 455
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;

    iget-wide v1, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v3, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;-><init>(DD)V

    .line 456
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->setFormattedAddress()V

    .line 457
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->setVehicles()V

    .line 458
    iget v1, p0, Lcab/snapp/passenger/f/j;->i:I

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->setServiceType(I)V

    .line 459
    iget-object v1, p0, Lcab/snapp/passenger/f/j;->D:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getPin(Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/j$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/f/j$1;-><init>(Lcab/snapp/passenger/f/j;Ljava/lang/String;)V

    new-instance p1, Lcab/snapp/passenger/f/j$2;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/f/j$2;-><init>(Lcab/snapp/passenger/f/j;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/j;->a:Lio/reactivex/b/c;

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 10

    .line 1313
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/a/a/s;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    const/16 v3, 0x40

    invoke-direct {v1, v2, p0, p1, v3}, Lcab/snapp/mapmodule/a/a/s;-><init>(ILjava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->zoomToBoundingBox(Lcab/snapp/mapmodule/a/a/s;)V

    return-void

    .line 1323
    :cond_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v9, Lcab/snapp/mapmodule/a/a/t;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    .line 1326
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v1, v3}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v5, v1

    .line 1327
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v1, v4}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v6, v1

    .line 1328
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v7, v1

    .line 1329
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x43980000    # 304.0f

    invoke-static {v1, v3}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v8, v1

    move-object v1, v9

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcab/snapp/mapmodule/a/a/t;-><init>(ILjava/util/List;Ljava/util/List;IIII)V

    .line 1323
    invoke-virtual {v0, v9}, Lcab/snapp/mapmodule/a;->zoomToBoundingBoxWithDifferentPaddings(Lcab/snapp/mapmodule/a/a/t;)V

    return-void
.end method

.method private b()V
    .locals 18

    move-object/from16 v0, p0

    .line 686
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v1, v2}, Lcab/snapp/mapmodule/a;->removeAllVehicles(I)V

    .line 687
    iget-object v1, v0, Lcab/snapp/passenger/f/j;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/AvailableServiceTypes;

    .line 689
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->getType()I

    move-result v3

    iget v4, v0, Lcab/snapp/passenger/f/j;->i:I

    if-ne v3, v4, :cond_0

    .line 691
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->getVehicles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/data/models/Vehicle;

    .line 693
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v4

    new-instance v15, Lcab/snapp/mapmodule/a/a/d;

    sget v6, Lcab/snapp/passenger/f/j;->b:I

    .line 695
    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/Vehicle;->getLatestLat()D

    move-result-wide v7

    .line 696
    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/Vehicle;->getLatestLng()D

    move-result-wide v9

    iget v11, v0, Lcab/snapp/passenger/f/j;->j:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 700
    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/Vehicle;->getBearing()I

    move-result v5

    int-to-float v14, v5

    const/16 v16, 0x0

    .line 702
    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/Vehicle;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v5, v15

    move-object/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v3

    invoke-direct/range {v5 .. v16}, Lcab/snapp/mapmodule/a/a/d;-><init>(IDDIFFFFLjava/lang/String;)V

    move-object/from16 v3, v17

    .line 693
    invoke-virtual {v4, v3}, Lcab/snapp/mapmodule/a;->addVehicleMarker(Lcab/snapp/mapmodule/a/a/d;)V

    goto :goto_1

    .line 704
    :cond_1
    iget v2, v0, Lcab/snapp/passenger/f/j;->currentZoom:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    .line 706
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v2

    sget v3, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v2, v3}, Lcab/snapp/mapmodule/a;->showVehicleMarkers(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b(I)V
    .locals 5

    .line 1205
    new-instance v0, Lcab/snapp/mapmodule/a/a/g;

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v0, v1}, Lcab/snapp/mapmodule/a/a/g;-><init>(I)V

    const v1, 0x7f0700e4

    const v2, 0x7f0700e1

    const v3, 0x7f0700e0

    const v4, 0x7f0700e2

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 1252
    :pswitch_0
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1253
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1254
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1255
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    goto/16 :goto_0

    .line 1246
    :pswitch_1
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1247
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1248
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1249
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    goto/16 :goto_0

    .line 1240
    :pswitch_2
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1241
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1242
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1243
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    goto/16 :goto_0

    .line 1234
    :pswitch_3
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1235
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1236
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1237
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    goto/16 :goto_0

    .line 1228
    :pswitch_4
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1229
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1230
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1231
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    goto/16 :goto_0

    .line 1222
    :pswitch_5
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1223
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1224
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700de

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1225
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700e3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    goto :goto_0

    .line 1216
    :pswitch_6
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1217
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1218
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1219
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    goto :goto_0

    .line 1210
    :pswitch_7
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    .line 1211
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    .line 1212
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    .line 1213
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    .line 1259
    :goto_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/a;->changeLogoPadding(Lcab/snapp/mapmodule/a/a/g;)V

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

.method private b(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 627
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/f/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3645
    invoke-virtual {p1, p3, p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->save(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/f/j;Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lcab/snapp/passenger/f/j;->b(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 598
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;

    iget-wide v1, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v3, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;-><init>(DD)V

    .line 599
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->setFormattedAddress()V

    .line 600
    iget-object v1, p0, Lcab/snapp/passenger/f/j;->D:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getPin(Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/j$3;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/f/j$3;-><init>(Lcab/snapp/passenger/f/j;Ljava/lang/String;)V

    new-instance p1, Lcab/snapp/passenger/f/j$4;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/f/j$4;-><init>(Lcab/snapp/passenger/f/j;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/j;->a:Lio/reactivex/b/c;

    return-void
.end method

.method private c()V
    .locals 3

    .line 962
    new-instance v0, Lcab/snapp/mapmodule/a/a/p;

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    const-string v2, "SECOND_DESTINATION_MARKER_TAG"

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    .line 963
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    const/4 v0, 0x0

    .line 964
    iput-boolean v0, p0, Lcab/snapp/passenger/f/j;->q:Z

    return-void
.end method

.method private d()V
    .locals 6

    .line 1289
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 1290
    iget-object v1, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1303
    iget v1, p0, Lcab/snapp/passenger/f/j;->i:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    .line 1305
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcab/snapp/passenger/f/-$$Lambda$j$qENLQtatHY03pdxlyg87b8QBU3s;

    invoke-direct {v1, v2, v3}, Lcab/snapp/passenger/f/-$$Lambda$j$qENLQtatHY03pdxlyg87b8QBU3s;-><init>(Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private e()V
    .locals 11

    .line 1344
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    if-eqz v0, :cond_b

    .line 1347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 1351
    iget-object v1, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1354
    iget-object v2, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1356
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v6

    iget-object v8, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v8}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v8

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v8

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto :goto_0

    :cond_0
    move-object v2, v5

    .line 1360
    :goto_0
    iget-object v6, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1362
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data/models/LocationInfo;->getLat()D

    move-result-wide v6

    iget-object v8, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v8}, Lcab/snapp/passenger/c/g;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/LocationInfo;->getLng()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1365
    :cond_1
    iget-object v6, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    const/4 v0, 0x6

    if-eq v6, v0, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 1407
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    iget-wide v0, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    .line 1413
    iget-wide v0, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1414
    iget-wide v0, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v5, :cond_9

    .line 1419
    iget-wide v0, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    iget-wide v0, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 1389
    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v5, :cond_9

    .line 1395
    iget-wide v0, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    iget-wide v0, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 1374
    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v5, :cond_9

    .line 1380
    iget-wide v0, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1381
    iget-wide v0, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_b

    .line 1428
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapType()I

    move-result v0

    if-nez v0, :cond_a

    .line 1431
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/a/a/s;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    const/16 v5, 0x40

    invoke-direct {v1, v2, v3, v4, v5}, Lcab/snapp/mapmodule/a/a/s;-><init>(ILjava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->zoomToBoundingBox(Lcab/snapp/mapmodule/a/a/s;)V

    return-void

    .line 1438
    :cond_a
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v9, Lcab/snapp/mapmodule/a/a/t;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    .line 1441
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v1, v5}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v6, v1

    .line 1442
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v7, 0x43300000    # 176.0f

    invoke-static {v1, v7}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v7, v1

    .line 1443
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v8, v1

    .line 1444
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v1, v5}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v10, v1

    move-object v1, v9

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    invoke-direct/range {v1 .. v8}, Lcab/snapp/mapmodule/a/a/t;-><init>(ILjava/util/List;Ljava/util/List;IIII)V

    .line 1438
    invoke-virtual {v0, v9}, Lcab/snapp/mapmodule/a;->zoomToBoundingBoxWithDifferentPaddings(Lcab/snapp/mapmodule/a/a/t;)V

    :cond_b
    return-void
.end method

.method private static synthetic f()V
    .locals 5

    .line 1271
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, -0x28

    goto :goto_0

    .line 1275
    :cond_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getMapType()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5a

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1279
    :goto_0
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    .line 1280
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v2, Lcab/snapp/mapmodule/a/a/q;

    sget v3, Lcab/snapp/passenger/f/j;->b:I

    const/4 v4, 0x0

    neg-float v0, v0

    invoke-direct {v2, v3, v4, v0}, Lcab/snapp/mapmodule/a/a/q;-><init>(IFF)V

    invoke-virtual {v1, v2}, Lcab/snapp/mapmodule/a;->scrollMap(Lcab/snapp/mapmodule/a/a/q;)V

    return-void
.end method

.method private synthetic g()V
    .locals 2

    .line 281
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/g;->isLocationPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    :cond_0
    return-void
.end method

.method public static getMapViewId()I
    .locals 1

    .line 155
    sget v0, Lcab/snapp/passenger/f/j;->b:I

    return v0
.end method

.method private synthetic h()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 266
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->d()V

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->updateDriverMarker()V

    :cond_1
    return-void
.end method

.method public static hideTraffic(I)V
    .locals 1

    if-nez p0, :cond_0

    .line 171
    sget p0, Lcab/snapp/passenger/f/j;->b:I

    .line 173
    :cond_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcab/snapp/mapmodule/a;->hideTraffic(I)V

    return-void
.end method

.method public static synthetic lambda$B5oHm4NaMgIsH2Zehx8Nh1k3Qw4(Lcab/snapp/passenger/f/j;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->g()V

    return-void
.end method

.method public static synthetic lambda$WY7MXkEInjXO8_e-rPYtkajYbxw(Lcab/snapp/passenger/f/j;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->h()V

    return-void
.end method

.method public static synthetic lambda$d4ba5un0wuNLqaLoe9xLLrNC85E()V
    .locals 0

    invoke-static {}, Lcab/snapp/passenger/f/j;->f()V

    return-void
.end method

.method public static synthetic lambda$qENLQtatHY03pdxlyg87b8QBU3s(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/f/j;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static showTraffic(I)V
    .locals 1

    if-nez p0, :cond_0

    .line 162
    sget p0, Lcab/snapp/passenger/f/j;->b:I

    .line 164
    :cond_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcab/snapp/mapmodule/a;->showTraffic(I)V

    return-void
.end method

.method public static updateTrafficState(I)V
    .locals 2

    .line 184
    sget-object v0, Lcab/snapp/passenger/f/j;->E:Lcab/snapp/b/a;

    const-string v1, "passenger_traffic_map"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {p0}, Lcab/snapp/passenger/f/j;->showTraffic(I)V

    return-void

    .line 188
    :cond_0
    sget-object v0, Lcab/snapp/passenger/f/j;->E:Lcab/snapp/b/a;

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcab/snapp/passenger/f/j;->E:Lcab/snapp/b/a;

    .line 189
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-static {p0}, Lcab/snapp/passenger/f/j;->showTraffic(I)V

    return-void

    .line 195
    :cond_1
    invoke-static {p0}, Lcab/snapp/passenger/f/j;->hideTraffic(I)V

    return-void
.end method


# virtual methods
.method public final checkDeepLink()V
    .locals 1

    .line 671
    iget-boolean v0, p0, Lcab/snapp/passenger/f/j;->z:Z

    if-eqz v0, :cond_0

    .line 673
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->a()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Lcab/snapp/passenger/f/j;->y:Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->a:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 719
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcab/snapp/passenger/f/j;->a:Lio/reactivex/b/c;

    :cond_0
    return-void
.end method

.method public final handleEvent(Lcab/snapp/mapmodule/a/b/c;)V
    .locals 12

    .line 211
    iget v0, p1, Lcab/snapp/mapmodule/a/b/c;->id:I

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    if-ne v0, v1, :cond_12

    .line 213
    iget v0, p1, Lcab/snapp/mapmodule/a/b/c;->type:I

    const/16 v1, 0x7d0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    const/16 p1, 0x7dc

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 217
    :cond_0
    iput-boolean v3, p0, Lcab/snapp/passenger/f/j;->z:Z

    .line 219
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->A:Lcab/snapp/passenger/c/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 221
    sget p1, Lcab/snapp/passenger/f/j;->b:I

    invoke-static {p1}, Lcab/snapp/passenger/f/j;->updateTrafficState(I)V

    .line 227
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->A:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcab/snapp/passenger/f/j;->A:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPinCacheConfig()Lcab/snapp/passenger/data/models/PinCacheConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 229
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->A:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPinCacheConfig()Lcab/snapp/passenger/data/models/PinCacheConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PinCacheConfig;->getCacheGeohashCharacters()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/f/j;->t:I

    .line 230
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->A:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPinCacheConfig()Lcab/snapp/passenger/data/models/PinCacheConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PinCacheConfig;->getCacheVehiclesTtl()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcab/snapp/passenger/f/j;->u:J

    .line 231
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->A:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPinCacheConfig()Lcab/snapp/passenger/data/models/PinCacheConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PinCacheConfig;->getCacheReverseGeocodeTtl()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcab/snapp/passenger/f/j;->v:J

    .line 237
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->getSavedLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 238
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->hasRideDeeplink()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/a/a/f;

    sget v6, Lcab/snapp/passenger/f/j;->b:I

    .line 244
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 245
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    const/high16 v11, 0x41700000    # 15.0f

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    .line 241
    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    .line 255
    :cond_3
    iget-boolean p1, p0, Lcab/snapp/passenger/f/j;->r:Z

    if-eqz p1, :cond_4

    .line 257
    iput-boolean v4, p0, Lcab/snapp/passenger/f/j;->r:Z

    .line 258
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 263
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$j$WY7MXkEInjXO8_e-rPYtkajYbxw;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/f/-$$Lambda$j$WY7MXkEInjXO8_e-rPYtkajYbxw;-><init>(Lcab/snapp/passenger/f/j;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$j$B5oHm4NaMgIsH2Zehx8Nh1k3Qw4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/f/-$$Lambda$j$B5oHm4NaMgIsH2Zehx8Nh1k3Qw4;-><init>(Lcab/snapp/passenger/f/j;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    invoke-static {p1}, Lcab/snapp/passenger/f/j;->b(I)V

    .line 300
    iget-boolean p1, p0, Lcab/snapp/passenger/f/j;->y:Z

    if-eqz p1, :cond_12

    .line 302
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->a()V

    return-void

    .line 312
    :cond_5
    check-cast p1, Lcab/snapp/mapmodule/a/b/a;

    .line 313
    iget-wide v0, p1, Lcab/snapp/mapmodule/a/b/a;->latitude:D

    iput-wide v0, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    .line 314
    iget-wide v0, p1, Lcab/snapp/mapmodule/a/b/a;->longitude:D

    iput-wide v0, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    .line 315
    iget p1, p1, Lcab/snapp/mapmodule/a/b/a;->zoom:I

    iput p1, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    .line 320
    iget p1, p0, Lcab/snapp/passenger/f/j;->n:I

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 322
    :cond_6
    iget p1, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    const/16 v0, 0xf

    if-ge p1, v0, :cond_7

    .line 324
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    sget v0, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {p1, v0}, Lcab/snapp/mapmodule/a;->hideVehicleMarkers(I)V

    goto :goto_0

    .line 328
    :cond_7
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    sget v0, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {p1, v0}, Lcab/snapp/mapmodule/a;->showVehicleMarkers(I)V

    .line 337
    :cond_8
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/f/j;->w:Ljava/lang/String;

    if-eqz p1, :cond_9

    iget-wide v0, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v5, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    iget v7, p0, Lcab/snapp/passenger/f/j;->t:I

    invoke-static {v0, v1, v5, v6, v7}, La/a/a/b;->geoHashStringWithCharacterPrecision(DDI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 343
    :cond_9
    iget p1, p0, Lcab/snapp/passenger/f/j;->n:I

    if-nez p1, :cond_d

    .line 346
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/f/j;->m:Ljava/lang/String;

    const-string v1, "INTERACTION_CENTER_CHANGED_ON_IDLE"

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2380
    iget-wide v0, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v5, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    iget p1, p0, Lcab/snapp/passenger/f/j;->t:I

    invoke-static {v0, v1, v5, v6, p1}, La/a/a/b;->geoHashStringWithCharacterPrecision(DDI)Ljava/lang/String;

    move-result-object p1

    .line 2382
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->w:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 2387
    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2394
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-array v0, v4, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 2400
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/x;->select([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;

    move-result-object v0

    const-class v1, Lcab/snapp/passenger/d/b;

    .line 2401
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/y;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    new-array v1, v3, [Lcom/raizlabs/android/dbflow/sql/language/w;

    sget-object v3, Lcab/snapp/passenger/d/c;->type:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 2402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/l;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/d/c;->key:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 2403
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    .line 2404
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->querySingle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/d/b;

    if-nez v0, :cond_b

    .line 2411
    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2419
    :cond_b
    invoke-virtual {v0}, Lcab/snapp/passenger/d/b;->getLastModificationTimestamp()J

    move-result-wide v1

    iget-wide v5, p0, Lcab/snapp/passenger/f/j;->u:J

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-ltz v3, :cond_c

    .line 2421
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    .line 2424
    :try_start_0
    invoke-virtual {v0}, Lcab/snapp/passenger/d/b;->getJsonString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    .line 2425
    invoke-direct {p0, v0, v4, p1}, Lcab/snapp/passenger/f/j;->a(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 2429
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 2430
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2438
    :cond_c
    invoke-virtual {v0}, Lcab/snapp/passenger/d/b;->delete()Z

    .line 2439
    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    if-ne p1, v3, :cond_11

    .line 2525
    iget-wide v0, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v5, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    iget p1, p0, Lcab/snapp/passenger/f/j;->t:I

    invoke-static {v0, v1, v5, v6, p1}, La/a/a/b;->geoHashStringWithCharacterPrecision(DDI)Ljava/lang/String;

    move-result-object p1

    .line 2527
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->w:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 2532
    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/j;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 2539
    :cond_e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-array v0, v4, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 2544
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/x;->select([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;

    move-result-object v0

    const-class v1, Lcab/snapp/passenger/d/b;

    .line 2545
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/y;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    new-array v1, v3, [Lcom/raizlabs/android/dbflow/sql/language/w;

    sget-object v2, Lcab/snapp/passenger/d/c;->type:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/16 v3, 0x3e9

    .line 2546
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/l;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/d/c;->key:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 2547
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object v0

    .line 2548
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->querySingle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/d/b;

    if-nez v0, :cond_f

    .line 2555
    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/j;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 2562
    :cond_f
    invoke-virtual {v0}, Lcab/snapp/passenger/d/b;->getLastModificationTimestamp()J

    move-result-wide v1

    iget-wide v5, p0, Lcab/snapp/passenger/f/j;->v:J

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-ltz v3, :cond_10

    .line 2564
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    .line 2567
    :try_start_1
    invoke-virtual {v0}, Lcab/snapp/passenger/d/b;->getJsonString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    .line 2568
    invoke-direct {p0, v0, v4, p1}, Lcab/snapp/passenger/f/j;->b(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2572
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 2573
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2581
    :cond_10
    invoke-virtual {v0}, Lcab/snapp/passenger/d/b;->delete()Z

    .line 2582
    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/j;->b(Ljava/lang/String;)V

    .line 361
    :cond_11
    :goto_1
    iget-wide v0, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v2, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    iget p1, p0, Lcab/snapp/passenger/f/j;->t:I

    invoke-static {v0, v1, v2, v3, p1}, La/a/a/b;->geoHashStringWithCharacterPrecision(DDI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/j;->w:Ljava/lang/String;

    :cond_12
    :goto_2
    return-void
.end method

.method public final handleMapForCabScreen()V
    .locals 8

    .line 1506
    new-instance v7, Lcab/snapp/mapmodule/a/a/j;

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    iget-wide v2, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v4, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    const/high16 v6, 0x41700000    # 15.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcab/snapp/mapmodule/a/a/j;-><init>(IDDF)V

    .line 1507
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcab/snapp/mapmodule/a;->changeZoomAnimated(Lcab/snapp/mapmodule/a/a/j;)V

    return-void
.end method

.method public final handleMapForJekScreen()V
    .locals 8

    .line 1500
    new-instance v7, Lcab/snapp/mapmodule/a/a/j;

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    iget-wide v2, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v4, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    const/high16 v6, 0x41480000    # 12.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcab/snapp/mapmodule/a/a/j;-><init>(IDDF)V

    .line 1501
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcab/snapp/mapmodule/a;->changeZoomAnimated(Lcab/snapp/mapmodule/a/a/j;)V

    return-void
.end method

.method public final handleOnLocationClicked(Landroid/location/Location;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1478
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v8, Lcab/snapp/mapmodule/a/a/o;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    .line 1479
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/high16 v7, 0x41700000    # 15.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcab/snapp/mapmodule/a/a/o;-><init>(IDDF)V

    .line 1478
    invoke-virtual {v0, v8}, Lcab/snapp/mapmodule/a;->moveAnimatedWithZoom(Lcab/snapp/mapmodule/a/a/o;)V

    .line 1481
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/g;->isLocationPermissionGranted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1483
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    :cond_0
    return-void
.end method

.method public final hideUserLocationIndicator()V
    .locals 2

    .line 1495
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->hideUserLocationIndicator(I)V

    return-void
.end method

.method public final refreshCoordinationMarkers()V
    .locals 17

    move-object/from16 v0, p0

    .line 816
    iget-object v1, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    if-eqz v1, :cond_4

    .line 818
    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const-string v2, "ORIGIN_MARKER_TAG"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 820
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v5, Lcab/snapp/mapmodule/a/a/p;

    sget v6, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v5, v6, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 821
    new-instance v1, Lcab/snapp/mapmodule/a/a/a;

    sget v9, Lcab/snapp/passenger/f/j;->b:I

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v10, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v12, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const v14, 0x7f08012b

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v8, "ORIGIN_MARKER_TAG"

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lcab/snapp/mapmodule/a/a/a;-><init>(Ljava/lang/String;IDDIFF)V

    .line 822
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcab/snapp/mapmodule/a;->addOriginMarker(Lcab/snapp/mapmodule/a/a/a;)V

    .line 823
    iput-boolean v3, v0, Lcab/snapp/passenger/f/j;->o:Z

    goto :goto_0

    .line 827
    :cond_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v5, Lcab/snapp/mapmodule/a/a/p;

    sget v6, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v5, v6, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 828
    iput-boolean v4, v0, Lcab/snapp/passenger/f/j;->o:Z

    .line 831
    :goto_0
    iget-object v1, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const-string v2, "DESTINATION_MARKER_TAG"

    if-eqz v1, :cond_1

    .line 833
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v5, Lcab/snapp/mapmodule/a/a/p;

    sget v6, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v5, v6, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 834
    new-instance v1, Lcab/snapp/mapmodule/a/a/a;

    sget v9, Lcab/snapp/passenger/f/j;->b:I

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v10, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v12, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const v14, 0x7f0800e0

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v8, "DESTINATION_MARKER_TAG"

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lcab/snapp/mapmodule/a/a/a;-><init>(Ljava/lang/String;IDDIFF)V

    .line 835
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcab/snapp/mapmodule/a;->addDestinationMarker(Lcab/snapp/mapmodule/a/a/a;)V

    .line 836
    iput-boolean v3, v0, Lcab/snapp/passenger/f/j;->p:Z

    .line 837
    iput-boolean v4, v0, Lcab/snapp/passenger/f/j;->x:Z

    goto :goto_1

    .line 841
    :cond_1
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v5, Lcab/snapp/mapmodule/a/a/p;

    sget v6, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v5, v6, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 842
    iput-boolean v4, v0, Lcab/snapp/passenger/f/j;->p:Z

    .line 846
    :goto_1
    iget-object v1, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v1

    const-string v2, "SECOND_DESTINATION_MARKER_TAG"

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 848
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v4, Lcab/snapp/mapmodule/a/a/p;

    sget v5, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v4, v5, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 849
    new-instance v1, Lcab/snapp/mapmodule/a/a/a;

    sget v8, Lcab/snapp/passenger/f/j;->b:I

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v9

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v11

    const v13, 0x7f08015c

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    const-string v7, "SECOND_DESTINATION_MARKER_TAG"

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lcab/snapp/mapmodule/a/a/a;-><init>(Ljava/lang/String;IDDIFF)V

    .line 850
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcab/snapp/mapmodule/a;->addSecondDestinationMarker(Lcab/snapp/mapmodule/a/a/a;)V

    .line 851
    iput-boolean v3, v0, Lcab/snapp/passenger/f/j;->q:Z

    return-void

    .line 854
    :cond_2
    iget-object v1, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 856
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v4, Lcab/snapp/mapmodule/a/a/p;

    sget v5, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v4, v5, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 857
    new-instance v1, Lcab/snapp/mapmodule/a/a/a;

    sget v8, Lcab/snapp/passenger/f/j;->b:I

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v9, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v2, v0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v11, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const v13, 0x7f08015c

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    const-string v7, "SECOND_DESTINATION_MARKER_TAG"

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lcab/snapp/mapmodule/a/a/a;-><init>(Ljava/lang/String;IDDIFF)V

    .line 858
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcab/snapp/mapmodule/a;->addSecondDestinationMarker(Lcab/snapp/mapmodule/a/a/a;)V

    .line 859
    iput-boolean v3, v0, Lcab/snapp/passenger/f/j;->q:Z

    return-void

    .line 863
    :cond_3
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v3, Lcab/snapp/mapmodule/a/a/p;

    sget v5, Lcab/snapp/passenger/f/j;->b:I

    invoke-direct {v3, v5, v2}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 864
    iput-boolean v4, v0, Lcab/snapp/passenger/f/j;->q:Z

    :cond_4
    return-void
.end method

.method public final setCurrentLocation(Landroid/location/Location;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 1459
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v8, Lcab/snapp/mapmodule/a/a/o;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    .line 1460
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iget p1, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    if-nez p1, :cond_0

    const/high16 p1, 0x41700000    # 15.0f

    const/high16 v7, 0x41700000    # 15.0f

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    move v7, p1

    :goto_0
    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcab/snapp/mapmodule/a/a/o;-><init>(IDDF)V

    .line 1459
    invoke-virtual {v0, v8}, Lcab/snapp/mapmodule/a;->moveAnimatedWithZoom(Lcab/snapp/mapmodule/a/a/o;)V

    .line 1462
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/g;->isLocationPermissionGranted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1464
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    :cond_1
    return-void
.end method

.method public final setCurrentState(I)V
    .locals 12

    .line 978
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/f/j;->a(I)V

    .line 983
    iget-boolean v0, p0, Lcab/snapp/passenger/f/j;->z:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 985
    iput-boolean v1, p0, Lcab/snapp/passenger/f/j;->r:Z

    .line 991
    :cond_0
    invoke-static {p1}, Lcab/snapp/passenger/f/j;->b(I)V

    const/16 v0, 0xf

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1156
    :pswitch_0
    iget-boolean v1, p0, Lcab/snapp/passenger/f/j;->o:Z

    if-eqz v1, :cond_1

    .line 1158
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v3, Lcab/snapp/mapmodule/a/a/p;

    sget v4, Lcab/snapp/passenger/f/j;->b:I

    const-string v5, "ORIGIN_MARKER_TAG"

    invoke-direct {v3, v4, v5}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 1159
    iput-boolean v2, p0, Lcab/snapp/passenger/f/j;->o:Z

    .line 1163
    :cond_1
    iget-boolean v1, p0, Lcab/snapp/passenger/f/j;->p:Z

    if-eqz v1, :cond_2

    .line 1165
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v3, Lcab/snapp/mapmodule/a/a/p;

    sget v4, Lcab/snapp/passenger/f/j;->b:I

    const-string v5, "DESTINATION_MARKER_TAG"

    invoke-direct {v3, v4, v5}, Lcab/snapp/mapmodule/a/a/p;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcab/snapp/mapmodule/a;->removeMarker(Lcab/snapp/mapmodule/a/a/p;)V

    .line 1166
    iput-boolean v2, p0, Lcab/snapp/passenger/f/j;->p:Z

    .line 1173
    :cond_2
    iget v1, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    if-lt v1, v0, :cond_3

    .line 1175
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->showVehicleMarkers(I)V

    .line 1177
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1179
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v8, Lcab/snapp/mapmodule/a/a/f;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    iget-object v1, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    .line 1180
    invoke-virtual {v1}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v1, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    .line 1181
    invoke-virtual {v1}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/high16 v7, 0x41700000    # 15.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    .line 1179
    invoke-virtual {v0, v8}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    .line 1184
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    goto/16 :goto_0

    .line 1133
    :pswitch_1
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->hideUserLocationIndicator()V

    .line 1137
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v2}, Lcab/snapp/mapmodule/a;->removeAllVehicles(I)V

    .line 1138
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 1139
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->updateDriverMarker()V

    .line 1144
    iget v0, p0, Lcab/snapp/passenger/f/j;->n:I

    if-nez v0, :cond_9

    .line 1146
    iput-boolean v1, p0, Lcab/snapp/passenger/f/j;->r:Z

    goto/16 :goto_0

    .line 1112
    :pswitch_2
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    .line 1117
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v2}, Lcab/snapp/mapmodule/a;->removeAllVehicles(I)V

    .line 1118
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 1119
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->updateDriverMarker()V

    .line 1124
    iget v0, p0, Lcab/snapp/passenger/f/j;->n:I

    if-nez v0, :cond_9

    .line 1126
    iput-boolean v1, p0, Lcab/snapp/passenger/f/j;->r:Z

    goto/16 :goto_0

    .line 1091
    :pswitch_3
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    .line 1096
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v2}, Lcab/snapp/mapmodule/a;->removeAllVehicles(I)V

    .line 1097
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 1098
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->updateDriverMarker()V

    .line 1103
    iget v0, p0, Lcab/snapp/passenger/f/j;->n:I

    if-nez v0, :cond_9

    .line 1105
    iput-boolean v1, p0, Lcab/snapp/passenger/f/j;->r:Z

    goto/16 :goto_0

    .line 1068
    :pswitch_4
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    .line 1070
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 1075
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->d()V

    .line 1080
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/f/j;->setServiceType(I)V

    goto/16 :goto_0

    .line 1026
    :pswitch_5
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    .line 1031
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 1036
    iget-wide v0, p0, Lcab/snapp/passenger/f/j;->g:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_5

    iget-wide v0, p0, Lcab/snapp/passenger/f/j;->h:D

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_5

    .line 1038
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/a/a/f;

    sget v6, Lcab/snapp/passenger/f/j;->b:I

    iget-wide v7, p0, Lcab/snapp/passenger/f/j;->g:D

    iget-wide v9, p0, Lcab/snapp/passenger/f/j;->h:D

    iget v5, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    int-to-float v11, v5

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    .line 1039
    iput-wide v3, p0, Lcab/snapp/passenger/f/j;->g:D

    .line 1040
    iput-wide v3, p0, Lcab/snapp/passenger/f/j;->h:D

    .line 1046
    :cond_5
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->hideVehicleMarkers(I)V

    .line 1051
    iget-boolean v0, p0, Lcab/snapp/passenger/f/j;->x:Z

    if-eqz v0, :cond_7

    .line 1053
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1054
    iget-wide v3, p0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_6

    .line 1056
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v10, Lcab/snapp/mapmodule/a/a/f;

    sget v4, Lcab/snapp/passenger/f/j;->b:I

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/high16 v9, 0x41700000    # 15.0f

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    invoke-virtual {v1, v10}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    .line 4268
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lcab/snapp/passenger/f/-$$Lambda$j$d4ba5un0wuNLqaLoe9xLLrNC85E;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$j$d4ba5un0wuNLqaLoe9xLLrNC85E;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1062
    :cond_7
    iput-boolean v2, p0, Lcab/snapp/passenger/f/j;->x:Z

    goto :goto_0

    .line 997
    :pswitch_6
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    .line 1002
    iput-wide v3, p0, Lcab/snapp/passenger/f/j;->g:D

    .line 1003
    iput-wide v3, p0, Lcab/snapp/passenger/f/j;->h:D

    .line 1004
    iput-boolean v1, p0, Lcab/snapp/passenger/f/j;->x:Z

    .line 1006
    invoke-virtual {p0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 1011
    iget v1, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    if-lt v1, v0, :cond_8

    .line 1013
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->showVehicleMarkers(I)V

    .line 1015
    :cond_8
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1017
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v8, Lcab/snapp/mapmodule/a/a/f;

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    iget-object v1, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    .line 1018
    invoke-virtual {v1}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v1, p0, Lcab/snapp/passenger/f/j;->C:Lcab/snapp/passenger/c/e;

    .line 1019
    invoke-virtual {v1}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iget v1, p0, Lcab/snapp/passenger/f/j;->currentZoom:I

    int-to-float v7, v1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    .line 1017
    invoke-virtual {v0, v8}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    .line 1192
    :cond_9
    :goto_0
    :pswitch_7
    iput p1, p0, Lcab/snapp/passenger/f/j;->n:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setServiceType(I)V
    .locals 1

    .line 731
    iput p1, p0, Lcab/snapp/passenger/f/j;->i:I

    .line 733
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/f/j;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_1

    .line 737
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->c()V

    .line 745
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->d()V

    .line 746
    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/j;->a(I)V

    .line 747
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->b()V

    return-void
.end method

.method public final showUserLocationIndicator()V
    .locals 2

    .line 1490
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    sget v1, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->showUserLocationIndicator(I)V

    return-void
.end method

.method public final updateDriverMarker()V
    .locals 15

    .line 788
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getDriverLocationInfo()Lcab/snapp/passenger/data/models/LocationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    sget v2, Lcab/snapp/passenger/f/j;->b:I

    invoke-virtual {v1, v2}, Lcab/snapp/mapmodule/a;->removeAllVehicles(I)V

    .line 792
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v14, Lcab/snapp/mapmodule/a/a/d;

    sget v3, Lcab/snapp/passenger/f/j;->b:I

    .line 794
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/LocationInfo;->getLat()D

    move-result-wide v4

    .line 795
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/LocationInfo;->getLng()D

    move-result-wide v6

    iget v8, p0, Lcab/snapp/passenger/f/j;->j:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 799
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/LocationInfo;->getBearing()I

    move-result v0

    int-to-float v11, v0

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v13, p0, Lcab/snapp/passenger/f/j;->c:Ljava/lang/String;

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcab/snapp/mapmodule/a/a/d;-><init>(IDDIFFFFLjava/lang/String;)V

    .line 792
    invoke-virtual {v1, v14}, Lcab/snapp/mapmodule/a;->addVehicleMarker(Lcab/snapp/mapmodule/a/a/d;)V

    .line 805
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->e()V

    :cond_0
    return-void
.end method

.method public final updateSecondDestinationMarker()V
    .locals 6

    .line 877
    iget-boolean v0, p0, Lcab/snapp/passenger/f/j;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 883
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 886
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 888
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto :goto_0

    .line 896
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    .line 901
    invoke-direct {p0, v1}, Lcab/snapp/passenger/f/j;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_2

    .line 911
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 914
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 916
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto :goto_1

    .line 921
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 925
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->c()V

    goto :goto_2

    .line 929
    :cond_5
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->c()V

    .line 930
    invoke-direct {p0, v1}, Lcab/snapp/passenger/f/j;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 934
    :cond_6
    :goto_2
    iget-object v0, p0, Lcab/snapp/passenger/f/j;->B:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 936
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->e()V

    return-void

    .line 940
    :cond_7
    invoke-direct {p0}, Lcab/snapp/passenger/f/j;->d()V

    return-void
.end method
