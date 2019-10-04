.class public Lcab/snapp/mapmodule/views/GoogleMapView;
.super Lcom/google/android/gms/maps/MapView;
.source "SourceFile"


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/google/android/gms/maps/c;

.field private d:Lio/reactivex/b/b;

.field private e:I

.field private f:Landroid/view/ScaleGestureDetector;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/maps/c$d;

.field private j:Lcom/google/android/gms/maps/c$g;

.field private k:Lcom/google/android/gms/maps/c$e;

.field private l:Lcom/google/android/gms/maps/c$n;

.field private m:Lcom/google/android/gms/maps/model/g;

.field private n:Lcom/google/android/gms/maps/model/g;

.field private o:Lcom/google/android/gms/maps/model/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12

    .line 64
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->a:I

    const/16 p1, 0x8

    .line 65
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->b:I

    .line 70
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->d:Lio/reactivex/b/b;

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    .line 76
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$x2W7iAPQLvnfmmT02O1hw7OUpqE;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$x2W7iAPQLvnfmmT02O1hw7OUpqE;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->i:Lcom/google/android/gms/maps/c$d;

    .line 92
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$kQQQOmqwTcTihlUPW2WfuIccUac;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$kQQQOmqwTcTihlUPW2WfuIccUac;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->j:Lcom/google/android/gms/maps/c$g;

    .line 96
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$OX1ogXTivd1YODtSxOl-pQkrQFg;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$OX1ogXTivd1YODtSxOl-pQkrQFg;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->k:Lcom/google/android/gms/maps/c$e;

    .line 100
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$-5Q3fHdtZnXQAKm3ADx-gbAtyAI;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$-5Q3fHdtZnXQAKm3ADx-gbAtyAI;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->l:Lcom/google/android/gms/maps/c$n;

    .line 113
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x12

    .line 64
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->a:I

    const/16 p1, 0x8

    .line 65
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->b:I

    .line 70
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->d:Lio/reactivex/b/b;

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    .line 76
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$x2W7iAPQLvnfmmT02O1hw7OUpqE;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$x2W7iAPQLvnfmmT02O1hw7OUpqE;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->i:Lcom/google/android/gms/maps/c$d;

    .line 92
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$kQQQOmqwTcTihlUPW2WfuIccUac;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$kQQQOmqwTcTihlUPW2WfuIccUac;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->j:Lcom/google/android/gms/maps/c$g;

    .line 96
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$OX1ogXTivd1YODtSxOl-pQkrQFg;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$OX1ogXTivd1YODtSxOl-pQkrQFg;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->k:Lcom/google/android/gms/maps/c$e;

    .line 100
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$-5Q3fHdtZnXQAKm3ADx-gbAtyAI;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$-5Q3fHdtZnXQAKm3ADx-gbAtyAI;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->l:Lcom/google/android/gms/maps/c$n;

    .line 119
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x12

    .line 64
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->a:I

    const/16 p1, 0x8

    .line 65
    iput p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->b:I

    .line 70
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->d:Lio/reactivex/b/b;

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    .line 76
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$x2W7iAPQLvnfmmT02O1hw7OUpqE;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$x2W7iAPQLvnfmmT02O1hw7OUpqE;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->i:Lcom/google/android/gms/maps/c$d;

    .line 92
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$kQQQOmqwTcTihlUPW2WfuIccUac;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$kQQQOmqwTcTihlUPW2WfuIccUac;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->j:Lcom/google/android/gms/maps/c$g;

    .line 96
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$OX1ogXTivd1YODtSxOl-pQkrQFg;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$OX1ogXTivd1YODtSxOl-pQkrQFg;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->k:Lcom/google/android/gms/maps/c$e;

    .line 100
    new-instance p1, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$-5Q3fHdtZnXQAKm3ADx-gbAtyAI;

    invoke-direct {p1, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$-5Q3fHdtZnXQAKm3ADx-gbAtyAI;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->l:Lcom/google/android/gms/maps/c$n;

    .line 125
    invoke-direct {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->a()V

    return-void
.end method

.method static synthetic a(FF)F
    .locals 2

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 2256
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide v0, 0x3ff8cccccccccccdL    # 1.55

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method static synthetic a(Lcab/snapp/mapmodule/views/GoogleMapView;)Ljava/util/Map;
    .locals 0

    .line 60
    iget-object p0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->d:Lio/reactivex/b/b;

    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getCommandsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    new-instance v2, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$TqreEar-i91hSvCbXAQwxSAEjO8;

    invoke-direct {v2, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$TqreEar-i91hSvCbXAQwxSAEjO8;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    invoke-virtual {v1, v2}, Lio/reactivex/j/b;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method

.method private synthetic a(I)V
    .locals 2

    .line 93
    new-instance p1, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v0

    const/16 v1, 0x7d2

    invoke-direct {p1, v0, v1}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 94
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/mapmodule/a/a/m;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 131
    iget v2, v0, Lcab/snapp/mapmodule/a/a/m;->id:I

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 1324
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    if-eqz v2, :cond_1b

    .line 1328
    iget v2, v0, Lcab/snapp/mapmodule/a/a/m;->commandType:I

    const-string v3, "SECOND_DESTINATION_MARKER_TAG"

    const-string v4, "DESTINATION_MARKER_TAG"

    const-string v5, "ORIGIN_MARKER_TAG"

    const/high16 v6, 0x41000000    # 8.0f

    const-wide/16 v7, 0xfa

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0xfa

    const/4 v15, 0x0

    const/4 v9, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    .line 1402
    :pswitch_0
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->o:Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_0

    .line 1404
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1407
    :cond_0
    check-cast v0, Lcab/snapp/mapmodule/a/a/c;

    .line 1409
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1410
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    iget-wide v7, v0, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1414
    iget v4, v0, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v4}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1415
    iget v4, v0, Lcab/snapp/mapmodule/a/a/c;->anchorX:F

    iget v0, v0, Lcab/snapp/mapmodule/a/a/c;->anchorY:F

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1416
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->o:Lcom/google/android/gms/maps/model/g;

    .line 1417
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->o:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/g;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1381
    :pswitch_1
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->n:Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_1

    .line 1383
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1386
    :cond_1
    check-cast v0, Lcab/snapp/mapmodule/a/a/c;

    .line 1388
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1389
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    iget-wide v7, v0, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1393
    iget v3, v0, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1394
    iget v3, v0, Lcab/snapp/mapmodule/a/a/c;->anchorX:F

    iget v0, v0, Lcab/snapp/mapmodule/a/a/c;->anchorY:F

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1395
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->n:Lcom/google/android/gms/maps/model/g;

    .line 1396
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->n:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/g;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1360
    :pswitch_2
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->m:Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_2

    .line 1362
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1365
    :cond_2
    check-cast v0, Lcab/snapp/mapmodule/a/a/c;

    .line 1367
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1368
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v0, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    iget-wide v8, v0, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1372
    iget v3, v0, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1373
    iget v3, v0, Lcab/snapp/mapmodule/a/a/c;->anchorX:F

    iget v0, v0, Lcab/snapp/mapmodule/a/a/c;->anchorY:F

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1374
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->m:Lcom/google/android/gms/maps/model/g;

    .line 1375
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->m:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/g;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1765
    :pswitch_3
    check-cast v0, Lcab/snapp/mapmodule/a/a/t;

    .line 1767
    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    .line 1768
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v13, :cond_1b

    .line 1775
    :cond_3
    :try_start_0
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$a;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;-><init>()V

    .line 1776
    :goto_0
    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_4

    .line 1778
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1781
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 1783
    iget v3, v0, Lcab/snapp/mapmodule/a/a/t;->paddingLeft:I

    iget v4, v0, Lcab/snapp/mapmodule/a/a/t;->paddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Lcab/snapp/mapmodule/a/a/t;->paddingRight:I

    add-int/2addr v3, v4

    iget v0, v0, Lcab/snapp/mapmodule/a/a/t;->paddingBottom:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x4

    .line 1788
    invoke-static {v2, v3}, Lcom/google/android/gms/maps/b;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1790
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2, v0, v14, v12}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1794
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1958
    :pswitch_4
    check-cast v0, Lcab/snapp/mapmodule/a/a/g;

    .line 1960
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    iget v3, v0, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    iget v4, v0, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    iget v5, v0, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    iget v0, v0, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/maps/c;->setPadding(IIII)V

    goto/16 :goto_a

    .line 1423
    :pswitch_5
    check-cast v0, Lcab/snapp/mapmodule/a/a/b;

    .line 1425
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 1427
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1428
    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1431
    iget v2, v0, Lcab/snapp/mapmodule/a/a/b;->icon:I

    invoke-static {v2}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1432
    iget v2, v0, Lcab/snapp/mapmodule/a/a/b;->anchorX:F

    iget v4, v0, Lcab/snapp/mapmodule/a/a/b;->anchorY:F

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1433
    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 1435
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    iget-object v4, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    .line 1437
    invoke-virtual {v4, v3}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v3

    .line 1435
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1524
    :pswitch_6
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    .line 1526
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    goto :goto_1

    .line 1529
    :cond_5
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    .line 1633
    :pswitch_7
    check-cast v0, Lcab/snapp/mapmodule/a/a/o;

    .line 1635
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/o;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/o;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v0, v0, Lcab/snapp/mapmodule/a/a/o;->zoom:F

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1640
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/views/GoogleMapView$6;

    invoke-direct {v3, v1}, Lcab/snapp/mapmodule/views/GoogleMapView$6;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    invoke-virtual {v2, v0, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1700
    :pswitch_8
    check-cast v0, Lcab/snapp/mapmodule/a/a/f;

    .line 1702
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/f;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/f;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v0, v0, Lcab/snapp/mapmodule/a/a/f;->zoom:F

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1707
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    return-void

    .line 1948
    :pswitch_9
    :try_start_1
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/c;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1952
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 1925
    :pswitch_a
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 1936
    :cond_6
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/c;->setMyLocationEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 1940
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 1918
    :pswitch_b
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/c;->setTrafficEnabled(Z)V

    return-void

    .line 1913
    :pswitch_c
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/c;->setTrafficEnabled(Z)V

    return-void

    .line 1875
    :pswitch_d
    check-cast v0, Lcab/snapp/mapmodule/a/a/k;

    .line 1877
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v13, [Ljava/lang/Object;

    .line 1878
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1879
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1881
    iget-object v3, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/k;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/g;

    if-eqz v3, :cond_7

    .line 1884
    new-instance v0, Lcab/snapp/mapmodule/views/GoogleMapView$2;

    invoke-direct {v0, v1, v3}, Lcab/snapp/mapmodule/views/GoogleMapView$2;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    .line 1895
    :cond_7
    iget-object v3, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/k;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/g;

    if-eqz v0, :cond_8

    .line 1898
    new-instance v3, Lcab/snapp/mapmodule/views/GoogleMapView$3;

    invoke-direct {v3, v1, v0}, Lcab/snapp/mapmodule/views/GoogleMapView$3;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1908
    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1817
    :pswitch_e
    check-cast v0, Lcab/snapp/mapmodule/a/a/l;

    .line 1819
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v13, [Ljava/lang/Object;

    .line 1820
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1821
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1823
    iget-object v3, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/g;

    if-eqz v3, :cond_9

    .line 1826
    new-instance v4, Lcab/snapp/mapmodule/views/GoogleMapView$8;

    invoke-direct {v4, v1, v3}, Lcab/snapp/mapmodule/views/GoogleMapView$8;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1834
    new-instance v4, Lcab/snapp/mapmodule/views/GoogleMapView$9;

    invoke-direct {v4, v1, v3, v0}, Lcab/snapp/mapmodule/views/GoogleMapView$9;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/model/g;Lcab/snapp/mapmodule/a/a/l;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 1847
    :cond_9
    iget-object v3, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/g;

    if-eqz v3, :cond_a

    .line 1850
    new-instance v4, Lcab/snapp/mapmodule/views/GoogleMapView$10;

    invoke-direct {v4, v1, v3}, Lcab/snapp/mapmodule/views/GoogleMapView$10;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1858
    new-instance v4, Lcab/snapp/mapmodule/views/GoogleMapView$11;

    invoke-direct {v4, v1, v3, v0}, Lcab/snapp/mapmodule/views/GoogleMapView$11;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/model/g;Lcab/snapp/mapmodule/a/a/l;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1870
    :cond_a
    :goto_3
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1809
    :pswitch_f
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    .line 1811
    invoke-virtual {v2, v11}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    goto :goto_4

    :cond_b
    return-void

    .line 1801
    :pswitch_10
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    .line 1803
    invoke-virtual {v2, v10}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    goto :goto_5

    :cond_c
    return-void

    .line 1736
    :pswitch_11
    check-cast v0, Lcab/snapp/mapmodule/a/a/s;

    .line 1738
    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_d

    iget-object v2, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    .line 1739
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v13, :cond_1b

    .line 1746
    :cond_d
    :try_start_3
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$a;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;-><init>()V

    .line 1747
    :goto_6
    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_e

    .line 1749
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1752
    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 1753
    iget v0, v0, Lcab/snapp/mapmodule/a/a/s;->padding:I

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/b;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1754
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2, v0, v14, v12}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 1758
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1730
    :pswitch_12
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    .line 1731
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/j;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1724
    :pswitch_13
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    .line 1725
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/j;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1712
    :pswitch_14
    check-cast v0, Lcab/snapp/mapmodule/a/a/r;

    .line 1714
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget v2, v0, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_1b

    iget v2, v0, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    const/high16 v3, 0x41900000    # 18.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1b

    .line 1716
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget v0, v0, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1717
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    return-void

    .line 1687
    :pswitch_15
    check-cast v0, Lcab/snapp/mapmodule/a/a/e;

    .line 1689
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/e;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/e;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcom/google/android/gms/maps/b;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1694
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    return-void

    .line 1662
    :pswitch_16
    check-cast v0, Lcab/snapp/mapmodule/a/a/q;

    .line 1664
    iget v2, v0, Lcab/snapp/mapmodule/a/a/q;->x:F

    iget v0, v0, Lcab/snapp/mapmodule/a/a/q;->y:F

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/b;->scrollBy(FF)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1665
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/views/GoogleMapView$7;

    invoke-direct {v3, v1}, Lcab/snapp/mapmodule/views/GoogleMapView$7;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    invoke-virtual {v2, v0, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1606
    :pswitch_17
    check-cast v0, Lcab/snapp/mapmodule/a/a/n;

    .line 1608
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/n;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/n;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcom/google/android/gms/maps/b;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1611
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/views/GoogleMapView$5;

    invoke-direct {v3, v1}, Lcab/snapp/mapmodule/views/GoogleMapView$5;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    invoke-virtual {v2, v0, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1575
    :pswitch_18
    check-cast v0, Lcab/snapp/mapmodule/a/a/j;

    .line 1577
    iget v2, v0, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    const/high16 v3, 0x41900000    # 18.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1b

    iget v2, v0, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_1b

    .line 1579
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v0, Lcab/snapp/mapmodule/a/a/j;->latitude:D

    iget-wide v5, v0, Lcab/snapp/mapmodule/a/a/j;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v0, v0, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 1582
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/views/GoogleMapView$4;

    invoke-direct {v3, v1}, Lcab/snapp/mapmodule/views/GoogleMapView$4;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    invoke-virtual {v2, v0, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1555
    :pswitch_19
    check-cast v0, Lcab/snapp/mapmodule/a/a/i;

    .line 1557
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/i;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_f

    .line 1560
    iget v0, v0, Lcab/snapp/mapmodule/a/a/i;->rotation:F

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/g;->setRotation(F)V

    return-void

    .line 1564
    :cond_f
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/i;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_1b

    .line 1567
    iget v0, v0, Lcab/snapp/mapmodule/a/a/i;->rotation:F

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/g;->setRotation(F)V

    return-void

    .line 1535
    :pswitch_1a
    check-cast v0, Lcab/snapp/mapmodule/a/a/h;

    .line 1537
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/h;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_10

    .line 1540
    iget v0, v0, Lcab/snapp/mapmodule/a/a/h;->alpha:F

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    return-void

    .line 1544
    :cond_10
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/h;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_1b

    .line 1547
    iget v0, v0, Lcab/snapp/mapmodule/a/a/h;->alpha:F

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    return-void

    .line 1465
    :pswitch_1b
    check-cast v0, Lcab/snapp/mapmodule/a/a/p;

    .line 1467
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_11

    .line 1470
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1471
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1475
    :cond_11
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    iget-object v6, v0, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_12

    .line 1478
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1479
    iget-object v2, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1483
    :cond_12
    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4c4770ef

    if-eq v6, v7, :cond_15

    const v3, 0x14a92ae6

    if-eq v6, v3, :cond_14

    const v3, 0x650dacae

    if-eq v6, v3, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_14
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v15, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v15, 0x2

    goto :goto_8

    :cond_16
    :goto_7
    const/4 v15, -0x1

    :goto_8
    if-eqz v15, :cond_19

    if-eq v15, v9, :cond_18

    if-eq v15, v13, :cond_17

    goto :goto_9

    .line 1507
    :cond_17
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->o:Lcom/google/android/gms/maps/model/g;

    if-eqz v0, :cond_1a

    .line 1509
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1510
    iput-object v12, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->o:Lcom/google/android/gms/maps/model/g;

    goto :goto_9

    .line 1497
    :cond_18
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->n:Lcom/google/android/gms/maps/model/g;

    if-eqz v0, :cond_1a

    .line 1499
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1500
    iput-object v12, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->n:Lcom/google/android/gms/maps/model/g;

    return-void

    .line 1487
    :cond_19
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->m:Lcom/google/android/gms/maps/model/g;

    if-eqz v0, :cond_1a

    .line 1489
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1490
    iput-object v12, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->m:Lcom/google/android/gms/maps/model/g;

    :cond_1a
    :goto_9
    return-void

    .line 1445
    :pswitch_1c
    check-cast v0, Lcab/snapp/mapmodule/a/a/d;

    .line 1447
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1448
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcab/snapp/mapmodule/a/a/d;->latitude:D

    iget-wide v6, v0, Lcab/snapp/mapmodule/a/a/d;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1452
    iget v3, v0, Lcab/snapp/mapmodule/a/a/d;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1453
    iget v3, v0, Lcab/snapp/mapmodule/a/a/d;->anchorX:F

    iget v4, v0, Lcab/snapp/mapmodule/a/a/d;->anchorY:F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1454
    iget v3, v0, Lcab/snapp/mapmodule/a/a/d;->alpha:F

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1455
    iget v3, v0, Lcab/snapp/mapmodule/a/a/d;->rotation:F

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1456
    iget-object v3, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    iget-object v4, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    .line 1458
    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v2

    .line 1456
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1339
    :pswitch_1d
    check-cast v0, Lcab/snapp/mapmodule/a/a/a;

    .line 1341
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1342
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcab/snapp/mapmodule/a/a/a;->latitude:D

    iget-wide v6, v0, Lcab/snapp/mapmodule/a/a/a;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1346
    iget v3, v0, Lcab/snapp/mapmodule/a/a/a;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1347
    iget v3, v0, Lcab/snapp/mapmodule/a/a/a;->anchorX:F

    iget v4, v0, Lcab/snapp/mapmodule/a/a/a;->anchorY:F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1348
    iget-object v3, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 1350
    iget-object v3, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->g:Ljava/util/Map;

    iget-object v0, v0, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    iget-object v4, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    .line 1352
    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v2

    .line 1350
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1333
    :pswitch_1e
    iget-object v0, v1, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->clear()V

    :cond_1b
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private synthetic a(Lcom/google/android/gms/maps/c;)V
    .locals 2

    .line 143
    iput-object p1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    .line 144
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getGoogleMapStyle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getGoogleMapStyle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->initScaleGestureDetector()V

    .line 149
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->setupMap()V

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 7

    .line 101
    new-instance v6, Lcab/snapp/mapmodule/a/b/b;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v1

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcab/snapp/mapmodule/a/b/b;-><init>(IDD)V

    .line 102
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object p1

    invoke-virtual {p1, v6}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/gms/maps/model/g;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Lcab/snapp/mapmodule/views/GoogleMapView;)Ljava/util/Map;
    .locals 0

    .line 60
    iget-object p0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->h:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic b()V
    .locals 3

    .line 97
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v1

    const/16 v2, 0x7d4

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 98
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c()V
    .locals 11

    .line 77
    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v1

    const/16 v2, 0x7d3

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    .line 78
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 82
    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 83
    new-instance v10, Lcab/snapp/mapmodule/a/b/a;

    .line 84
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v3

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v8, v0

    iget v0, v1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    float-to-int v9, v0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcab/snapp/mapmodule/a/b/a;-><init>(IDDII)V

    .line 90
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$-5Q3fHdtZnXQAKm3ADx-gbAtyAI(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/GoogleMapView;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method public static synthetic lambda$OX1ogXTivd1YODtSxOl-pQkrQFg(Lcab/snapp/mapmodule/views/GoogleMapView;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->b()V

    return-void
.end method

.method public static synthetic lambda$TqreEar-i91hSvCbXAQwxSAEjO8(Lcab/snapp/mapmodule/views/GoogleMapView;Lcab/snapp/mapmodule/a/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/GoogleMapView;->a(Lcab/snapp/mapmodule/a/a/m;)V

    return-void
.end method

.method public static synthetic lambda$kQQQOmqwTcTihlUPW2WfuIccUac(Lcab/snapp/mapmodule/views/GoogleMapView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/GoogleMapView;->a(I)V

    return-void
.end method

.method public static synthetic lambda$syuPrJ96QH_z9ck1siLlnUsD7QU(Lcom/google/android/gms/maps/model/g;)Z
    .locals 0

    invoke-static {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->a(Lcom/google/android/gms/maps/model/g;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$x2W7iAPQLvnfmmT02O1hw7OUpqE(Lcab/snapp/mapmodule/views/GoogleMapView;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->c()V

    return-void
.end method

.method public static synthetic lambda$y9BXGuyN0qkfsnHHZzEHGAvPz-0(Lcab/snapp/mapmodule/views/GoogleMapView;Lcom/google/android/gms/maps/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/mapmodule/views/GoogleMapView;->a(Lcom/google/android/gms/maps/c;)V

    return-void
.end method


# virtual methods
.method public disableScrolling()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 178
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->f:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_5

    .line 1198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1205
    :cond_0
    iget v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->e:I

    goto :goto_0

    .line 1201
    :cond_1
    iget v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->e:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1213
    iput v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->e:I

    goto :goto_0

    .line 1209
    :cond_3
    iput v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->e:I

    .line 182
    :goto_0
    iget v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->e:I

    if-le v0, v1, :cond_4

    .line 184
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->disableScrolling()V

    .line 185
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->f:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->enableScrolling()V

    .line 193
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableScrolling()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public initScaleGestureDetector()V
    .locals 3

    .line 220
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcab/snapp/mapmodule/views/GoogleMapView$1;

    invoke-direct {v2, p0}, Lcab/snapp/mapmodule/views/GoogleMapView$1;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->f:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public onAttach(Landroid/os/Bundle;)V
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcab/snapp/mapmodule/views/GoogleMapView;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->onStart()V

    .line 161
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->onResume()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->onPause()V

    .line 170
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->onStop()V

    .line 171
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->onDestroy()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/google/android/gms/maps/MapView;->onDetachedFromWindow()V

    .line 292
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->d:Lio/reactivex/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/b/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->d:Lio/reactivex/b/b;

    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/maps/MapView;->onFinishInflate()V

    .line 142
    new-instance v0, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$y9BXGuyN0qkfsnHHZzEHGAvPz-0;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$y9BXGuyN0qkfsnHHZzEHGAvPz-0;-><init>(Lcab/snapp/mapmodule/views/GoogleMapView;)V

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getMapAsync(Lcom/google/android/gms/maps/f;)V

    return-void
.end method

.method public setupMap()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->setMapType(I)V

    .line 263
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/j;->setRotateGesturesEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/j;->setTiltGesturesEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/j;->setMyLocationButtonEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/android/gms/maps/c;->setPadding(IIII)V

    .line 268
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->setMaxZoomPreference(F)V

    .line 269
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->setMinZoomPreference(F)V

    .line 271
    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/e;->initialize(Landroid/content/Context;)I

    .line 273
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    sget-object v2, Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$syuPrJ96QH_z9ck1siLlnUsD7QU;->INSTANCE:Lcab/snapp/mapmodule/views/-$$Lambda$GoogleMapView$syuPrJ96QH_z9ck1siLlnUsD7QU;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->setOnMarkerClickListener(Lcom/google/android/gms/maps/c$q;)V

    .line 275
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/google/android/gms/maps/c;->setPadding(IIII)V

    .line 277
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->i:Lcom/google/android/gms/maps/c$d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->setOnCameraIdleListener(Lcom/google/android/gms/maps/c$d;)V

    .line 279
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->j:Lcom/google/android/gms/maps/c$g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/c$g;)V

    .line 281
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->k:Lcom/google/android/gms/maps/c$e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/c$e;)V

    .line 283
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    iget-object v1, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->l:Lcom/google/android/gms/maps/c$n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->setOnMapClickListener(Lcom/google/android/gms/maps/c$n;)V

    .line 285
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/a/b/c;

    invoke-virtual {p0}, Lcab/snapp/mapmodule/views/GoogleMapView;->getId()I

    move-result v2

    const/16 v3, 0x7dc

    invoke-direct {v1, v2, v3}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public zoom(F)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcab/snapp/mapmodule/views/GoogleMapView;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 302
    invoke-static {p1}, Lcom/google/android/gms/maps/b;->zoomBy(F)Lcom/google/android/gms/maps/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    :cond_0
    return-void
.end method
