.class public Lcab/snapp/mapmodule/units/googlemap/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/mapmodule/units/googlemap/c;",
        "Lcab/snapp/mapmodule/units/googlemap/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/google/android/gms/maps/c;

.field private d:Lio/reactivex/b/c;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/maps/model/g;

.field private h:Lcom/google/android/gms/maps/model/g;

.field private i:Lcom/google/android/gms/maps/model/g;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/16 v0, 0x12

    .line 62
    iput v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->a:I

    const/16 v0, 0x8

    .line 63
    iput v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->b:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->j:I

    .line 86
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    .line 91
    :cond_0
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcab/snapp/mapmodule/units/googlemap/a;)I
    .locals 0

    .line 59
    iget p0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->j:I

    return p0
.end method

.method static synthetic a(Lcab/snapp/mapmodule/units/googlemap/a;Lcab/snapp/mapmodule/a/a/m;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1254
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1256
    iget v2, v1, Lcab/snapp/mapmodule/a/a/m;->commandType:I

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

    .line 1327
    :pswitch_0
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->i:Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_0

    .line 1329
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1332
    :cond_0
    check-cast v1, Lcab/snapp/mapmodule/a/a/c;

    .line 1334
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1335
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v1, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    iget-wide v7, v1, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1339
    iget v4, v1, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v4}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1340
    iget v4, v1, Lcab/snapp/mapmodule/a/a/c;->anchorX:F

    iget v1, v1, Lcab/snapp/mapmodule/a/a/c;->anchorY:F

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1341
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->i:Lcom/google/android/gms/maps/model/g;

    .line 1342
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->i:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/g;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1306
    :pswitch_1
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->h:Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_1

    .line 1308
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1311
    :cond_1
    check-cast v1, Lcab/snapp/mapmodule/a/a/c;

    .line 1313
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1314
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v1, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    iget-wide v7, v1, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1318
    iget v3, v1, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1319
    iget v3, v1, Lcab/snapp/mapmodule/a/a/c;->anchorX:F

    iget v1, v1, Lcab/snapp/mapmodule/a/a/c;->anchorY:F

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1320
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->h:Lcom/google/android/gms/maps/model/g;

    .line 1321
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->h:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/g;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1285
    :pswitch_2
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->g:Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_2

    .line 1287
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1290
    :cond_2
    check-cast v1, Lcab/snapp/mapmodule/a/a/c;

    .line 1292
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1293
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v1, Lcab/snapp/mapmodule/a/a/c;->latitude:D

    iget-wide v8, v1, Lcab/snapp/mapmodule/a/a/c;->longitude:D

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1297
    iget v3, v1, Lcab/snapp/mapmodule/a/a/c;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1298
    iget v3, v1, Lcab/snapp/mapmodule/a/a/c;->anchorX:F

    iget v1, v1, Lcab/snapp/mapmodule/a/a/c;->anchorY:F

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1299
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->g:Lcom/google/android/gms/maps/model/g;

    .line 1300
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->g:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/g;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1687
    :pswitch_3
    check-cast v1, Lcab/snapp/mapmodule/a/a/t;

    .line 1689
    iget-object v2, v1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    .line 1690
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v13, :cond_1b

    .line 1697
    :cond_3
    :try_start_0
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$a;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;-><init>()V

    .line 1698
    :goto_0
    iget-object v3, v1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_4

    .line 1700
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v1, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v1, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1703
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 1705
    iget v3, v1, Lcab/snapp/mapmodule/a/a/t;->paddingLeft:I

    iget v4, v1, Lcab/snapp/mapmodule/a/a/t;->paddingTop:I

    add-int/2addr v3, v4

    iget v4, v1, Lcab/snapp/mapmodule/a/a/t;->paddingRight:I

    add-int/2addr v3, v4

    iget v1, v1, Lcab/snapp/mapmodule/a/a/t;->paddingBottom:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x4

    .line 1710
    invoke-static {v2, v3}, Lcom/google/android/gms/maps/b;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1712
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1716
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1880
    :pswitch_4
    check-cast v1, Lcab/snapp/mapmodule/a/a/g;

    .line 1882
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_1b

    .line 1884
    iget v2, v1, Lcab/snapp/mapmodule/a/a/g;->startPadding:I

    iget v3, v1, Lcab/snapp/mapmodule/a/a/g;->topPadding:I

    iget v4, v1, Lcab/snapp/mapmodule/a/a/g;->endPadding:I

    iget v1, v1, Lcab/snapp/mapmodule/a/a/g;->bottomPadding:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/android/gms/maps/c;->setPadding(IIII)V

    goto/16 :goto_a

    .line 1348
    :pswitch_5
    check-cast v1, Lcab/snapp/mapmodule/a/a/b;

    .line 1350
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 1352
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1353
    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1356
    iget v2, v1, Lcab/snapp/mapmodule/a/a/b;->icon:I

    invoke-static {v2}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1357
    iget v2, v1, Lcab/snapp/mapmodule/a/a/b;->anchorX:F

    iget v4, v1, Lcab/snapp/mapmodule/a/a/b;->anchorY:F

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1358
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v1, v1, Lcab/snapp/mapmodule/a/a/b;->markerTag:Ljava/lang/String;

    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    .line 1360
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v0

    .line 1358
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1446
    :pswitch_6
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    .line 1448
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    goto :goto_1

    .line 1451
    :cond_5
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    .line 1555
    :pswitch_7
    check-cast v1, Lcab/snapp/mapmodule/a/a/o;

    .line 1557
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v1, Lcab/snapp/mapmodule/a/a/o;->latitude:D

    iget-wide v5, v1, Lcab/snapp/mapmodule/a/a/o;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v1, v1, Lcab/snapp/mapmodule/a/a/o;->zoom:F

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1562
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/units/googlemap/a$16;

    invoke-direct {v3, v0}, Lcab/snapp/mapmodule/units/googlemap/a$16;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {v2, v1, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1622
    :pswitch_8
    check-cast v1, Lcab/snapp/mapmodule/a/a/f;

    .line 1624
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v1, Lcab/snapp/mapmodule/a/a/f;->latitude:D

    iget-wide v5, v1, Lcab/snapp/mapmodule/a/a/f;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v1, v1, Lcab/snapp/mapmodule/a/a/f;->zoom:F

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1629
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    return-void

    .line 1870
    :pswitch_9
    :try_start_1
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/c;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1874
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 1847
    :pswitch_a
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 1858
    :cond_6
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/c;->setMyLocationEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 1862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 1840
    :pswitch_b
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/c;->setTrafficEnabled(Z)V

    return-void

    .line 1835
    :pswitch_c
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/c;->setTrafficEnabled(Z)V

    return-void

    .line 1797
    :pswitch_d
    check-cast v1, Lcab/snapp/mapmodule/a/a/k;

    .line 1799
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v13, [Ljava/lang/Object;

    .line 1800
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1801
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1803
    iget-object v3, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v4, v1, Lcab/snapp/mapmodule/a/a/k;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/g;

    if-eqz v3, :cond_7

    .line 1806
    new-instance v1, Lcab/snapp/mapmodule/units/googlemap/a$7;

    invoke-direct {v1, v0, v3}, Lcab/snapp/mapmodule/units/googlemap/a$7;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    .line 1817
    :cond_7
    iget-object v3, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    iget-object v1, v1, Lcab/snapp/mapmodule/a/a/k;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/g;

    if-eqz v1, :cond_8

    .line 1820
    new-instance v3, Lcab/snapp/mapmodule/units/googlemap/a$8;

    invoke-direct {v3, v0, v1}, Lcab/snapp/mapmodule/units/googlemap/a$8;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1830
    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1739
    :pswitch_e
    check-cast v1, Lcab/snapp/mapmodule/a/a/l;

    .line 1741
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v3, v13, [Ljava/lang/Object;

    .line 1742
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1743
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1745
    iget-object v3, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v4, v1, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/g;

    if-eqz v3, :cond_9

    .line 1748
    new-instance v4, Lcab/snapp/mapmodule/units/googlemap/a$3;

    invoke-direct {v4, v0, v3}, Lcab/snapp/mapmodule/units/googlemap/a$3;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1756
    new-instance v4, Lcab/snapp/mapmodule/units/googlemap/a$4;

    invoke-direct {v4, v0, v3, v1}, Lcab/snapp/mapmodule/units/googlemap/a$4;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;Lcab/snapp/mapmodule/a/a/l;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 1769
    :cond_9
    iget-object v3, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    iget-object v4, v1, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/g;

    if-eqz v3, :cond_a

    .line 1772
    new-instance v4, Lcab/snapp/mapmodule/units/googlemap/a$5;

    invoke-direct {v4, v0, v3}, Lcab/snapp/mapmodule/units/googlemap/a$5;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1780
    new-instance v4, Lcab/snapp/mapmodule/units/googlemap/a$6;

    invoke-direct {v4, v0, v3, v1}, Lcab/snapp/mapmodule/units/googlemap/a$6;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;Lcab/snapp/mapmodule/a/a/l;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1792
    :cond_a
    :goto_3
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1731
    :pswitch_f
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/g;

    .line 1733
    invoke-virtual {v1, v11}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    goto :goto_4

    :cond_b
    return-void

    .line 1723
    :pswitch_10
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/g;

    .line 1725
    invoke-virtual {v1, v10}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    goto :goto_5

    :cond_c
    return-void

    .line 1658
    :pswitch_11
    check-cast v1, Lcab/snapp/mapmodule/a/a/s;

    .line 1660
    iget-object v2, v1, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_d

    iget-object v2, v1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    .line 1661
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v13, :cond_1b

    .line 1668
    :cond_d
    :try_start_3
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds$a;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;-><init>()V

    .line 1669
    :goto_6
    iget-object v3, v1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_e

    .line 1671
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v1, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v1, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1674
    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 1675
    iget v1, v1, Lcab/snapp/mapmodule/a/a/s;->padding:I

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/b;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1676
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 1680
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void

    .line 1652
    :pswitch_12
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    .line 1653
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/j;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1646
    :pswitch_13
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    .line 1647
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/maps/j;->setZoomGesturesEnabled(Z)V

    return-void

    .line 1634
    :pswitch_14
    check-cast v1, Lcab/snapp/mapmodule/a/a/r;

    .line 1636
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget v2, v1, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_1b

    iget v2, v1, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    const/high16 v3, 0x41900000    # 18.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1b

    .line 1638
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget v1, v1, Lcab/snapp/mapmodule/a/a/r;->zoomLevel:F

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1639
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    return-void

    .line 1609
    :pswitch_15
    check-cast v1, Lcab/snapp/mapmodule/a/a/e;

    .line 1611
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v1, Lcab/snapp/mapmodule/a/a/e;->latitude:D

    iget-wide v5, v1, Lcab/snapp/mapmodule/a/a/e;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcom/google/android/gms/maps/b;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1616
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    return-void

    .line 1584
    :pswitch_16
    check-cast v1, Lcab/snapp/mapmodule/a/a/q;

    .line 1586
    iget v2, v1, Lcab/snapp/mapmodule/a/a/q;->x:F

    iget v1, v1, Lcab/snapp/mapmodule/a/a/q;->y:F

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/b;->scrollBy(FF)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1587
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/units/googlemap/a$2;

    invoke-direct {v3, v0}, Lcab/snapp/mapmodule/units/googlemap/a$2;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {v2, v1, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1528
    :pswitch_17
    check-cast v1, Lcab/snapp/mapmodule/a/a/n;

    .line 1530
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v1, Lcab/snapp/mapmodule/a/a/n;->latitude:D

    iget-wide v5, v1, Lcab/snapp/mapmodule/a/a/n;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcom/google/android/gms/maps/b;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1533
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/units/googlemap/a$15;

    invoke-direct {v3, v0}, Lcab/snapp/mapmodule/units/googlemap/a$15;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {v2, v1, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1497
    :pswitch_18
    check-cast v1, Lcab/snapp/mapmodule/a/a/j;

    .line 1499
    iget v2, v1, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    const/high16 v3, 0x41900000    # 18.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1b

    iget v2, v1, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_1b

    .line 1501
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v1, Lcab/snapp/mapmodule/a/a/j;->latitude:D

    iget-wide v5, v1, Lcab/snapp/mapmodule/a/a/j;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v1, v1, Lcab/snapp/mapmodule/a/a/j;->zoomLevel:F

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/b;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    .line 1504
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcab/snapp/mapmodule/units/googlemap/a$14;

    invoke-direct {v3, v0}, Lcab/snapp/mapmodule/units/googlemap/a$14;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {v2, v1, v14, v3}, Lcom/google/android/gms/maps/c;->animateCamera(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/c$a;)V

    return-void

    .line 1477
    :pswitch_19
    check-cast v1, Lcab/snapp/mapmodule/a/a/i;

    .line 1479
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v3, v1, Lcab/snapp/mapmodule/a/a/i;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_f

    .line 1482
    iget v0, v1, Lcab/snapp/mapmodule/a/a/i;->rotation:F

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/g;->setRotation(F)V

    return-void

    .line 1486
    :cond_f
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    iget-object v2, v1, Lcab/snapp/mapmodule/a/a/i;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/g;

    if-eqz v0, :cond_1b

    .line 1489
    iget v1, v1, Lcab/snapp/mapmodule/a/a/i;->rotation:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/g;->setRotation(F)V

    return-void

    .line 1457
    :pswitch_1a
    check-cast v1, Lcab/snapp/mapmodule/a/a/h;

    .line 1459
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v3, v1, Lcab/snapp/mapmodule/a/a/h;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_10

    .line 1462
    iget v0, v1, Lcab/snapp/mapmodule/a/a/h;->alpha:F

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    return-void

    .line 1466
    :cond_10
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    iget-object v2, v1, Lcab/snapp/mapmodule/a/a/h;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/g;

    if-eqz v0, :cond_1b

    .line 1469
    iget v1, v1, Lcab/snapp/mapmodule/a/a/h;->alpha:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    return-void

    .line 1387
    :pswitch_1b
    check-cast v1, Lcab/snapp/mapmodule/a/a/p;

    .line 1389
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v6, v1, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_11

    .line 1392
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1393
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v1, v1, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1397
    :cond_11
    iget-object v2, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    iget-object v6, v1, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/g;

    if-eqz v2, :cond_12

    .line 1400
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1401
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    iget-object v1, v1, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1405
    :cond_12
    iget-object v1, v1, Lcab/snapp/mapmodule/a/a/p;->markerTag:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4c4770ef

    if-eq v6, v7, :cond_15

    const v3, 0x14a92ae6

    if-eq v6, v3, :cond_14

    const v3, 0x650dacae

    if-eq v6, v3, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_8

    :cond_14
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v15, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

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

    .line 1429
    :cond_17
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->i:Lcom/google/android/gms/maps/model/g;

    if-eqz v1, :cond_1a

    .line 1431
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1432
    iput-object v12, v0, Lcab/snapp/mapmodule/units/googlemap/a;->i:Lcom/google/android/gms/maps/model/g;

    goto :goto_9

    .line 1419
    :cond_18
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->h:Lcom/google/android/gms/maps/model/g;

    if-eqz v1, :cond_1a

    .line 1421
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1422
    iput-object v12, v0, Lcab/snapp/mapmodule/units/googlemap/a;->h:Lcom/google/android/gms/maps/model/g;

    return-void

    .line 1409
    :cond_19
    iget-object v1, v0, Lcab/snapp/mapmodule/units/googlemap/a;->g:Lcom/google/android/gms/maps/model/g;

    if-eqz v1, :cond_1a

    .line 1411
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 1412
    iput-object v12, v0, Lcab/snapp/mapmodule/units/googlemap/a;->g:Lcom/google/android/gms/maps/model/g;

    :cond_1a
    :goto_9
    return-void

    .line 1367
    :pswitch_1c
    check-cast v1, Lcab/snapp/mapmodule/a/a/d;

    .line 1369
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1370
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcab/snapp/mapmodule/a/a/d;->latitude:D

    iget-wide v6, v1, Lcab/snapp/mapmodule/a/a/d;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1374
    iget v3, v1, Lcab/snapp/mapmodule/a/a/d;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1375
    iget v3, v1, Lcab/snapp/mapmodule/a/a/d;->anchorX:F

    iget v4, v1, Lcab/snapp/mapmodule/a/a/d;->anchorY:F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1376
    iget v3, v1, Lcab/snapp/mapmodule/a/a/d;->alpha:F

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1377
    iget v3, v1, Lcab/snapp/mapmodule/a/a/d;->rotation:F

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1378
    iget-object v3, v0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    iget-object v1, v1, Lcab/snapp/mapmodule/a/a/d;->markerTag:Ljava/lang/String;

    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    .line 1380
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v0

    .line 1378
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1267
    :pswitch_1d
    check-cast v1, Lcab/snapp/mapmodule/a/a/a;

    .line 1269
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1270
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcab/snapp/mapmodule/a/a/a;->latitude:D

    iget-wide v6, v1, Lcab/snapp/mapmodule/a/a/a;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1274
    iget v3, v1, Lcab/snapp/mapmodule/a/a/a;->icon:I

    invoke-static {v3}, Lcom/google/android/gms/maps/model/b;->fromResource(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1275
    iget v3, v1, Lcab/snapp/mapmodule/a/a/a;->anchorX:F

    iget v4, v1, Lcab/snapp/mapmodule/a/a/a;->anchorY:F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 1276
    iget-object v3, v0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    iget-object v1, v1, Lcab/snapp/mapmodule/a/a/a;->markerTag:Ljava/lang/String;

    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    .line 1278
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/c;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/g;

    move-result-object v0

    .line 1276
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1261
    :pswitch_1e
    iget-object v0, v0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

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

.method static synthetic b(Lcab/snapp/mapmodule/units/googlemap/a;)Lcom/google/android/gms/maps/c;
    .locals 0

    .line 59
    iget-object p0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/mapmodule/units/googlemap/a;)Ljava/util/Map;
    .locals 0

    .line 59
    iget-object p0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/mapmodule/units/googlemap/a;)Ljava/util/Map;
    .locals 0

    .line 59
    iget-object p0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->f:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public disableScrolling()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableScrolling()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/j;->setScrollGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->j:I

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 105
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->d:Lio/reactivex/b/c;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getCommandsPublishSubject()Lio/reactivex/j/b;

    move-result-object v0

    new-instance v1, Lcab/snapp/mapmodule/units/googlemap/a$1;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/units/googlemap/a$1;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->d:Lio/reactivex/b/c;

    .line 116
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->d:Lio/reactivex/b/c;

    invoke-virtual {p0, v0}, Lcab/snapp/mapmodule/units/googlemap/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public setMap(Lcom/google/android/gms/maps/c;)V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->init()V

    .line 149
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    .line 151
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->setMapType(I)V

    .line 152
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/j;->setRotateGesturesEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/j;->setTiltGesturesEnabled(Z)V

    .line 154
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->getUiSettings()Lcom/google/android/gms/maps/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/j;->setMyLocationButtonEnabled(Z)V

    .line 155
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/google/android/gms/maps/c;->setPadding(IIII)V

    .line 157
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/c;->setMaxZoomPreference(F)V

    .line 158
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/c;->setMinZoomPreference(F)V

    .line 160
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/e;->initialize(Landroid/content/Context;)I

    .line 165
    :cond_0
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v1, Lcab/snapp/mapmodule/units/googlemap/a$9;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/units/googlemap/a$9;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/c;->setOnMarkerClickListener(Lcom/google/android/gms/maps/c$q;)V

    .line 173
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/google/android/gms/maps/c;->setPadding(IIII)V

    .line 175
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v0, Lcab/snapp/mapmodule/units/googlemap/a$10;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/googlemap/a$10;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->setOnCameraIdleListener(Lcom/google/android/gms/maps/c$d;)V

    .line 196
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v0, Lcab/snapp/mapmodule/units/googlemap/a$11;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/googlemap/a$11;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/c$g;)V

    .line 205
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v0, Lcab/snapp/mapmodule/units/googlemap/a$12;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/googlemap/a$12;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/c$e;)V

    .line 214
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    new-instance v0, Lcab/snapp/mapmodule/units/googlemap/a$13;

    invoke-direct {v0, p0}, Lcab/snapp/mapmodule/units/googlemap/a$13;-><init>(Lcab/snapp/mapmodule/units/googlemap/a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->setOnMapClickListener(Lcom/google/android/gms/maps/c$n;)V

    .line 223
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/mapmodule/a;->getEventsPublishSubject()Lio/reactivex/j/b;

    move-result-object p1

    new-instance v0, Lcab/snapp/mapmodule/a/b/c;

    iget v1, p0, Lcab/snapp/mapmodule/units/googlemap/a;->j:I

    const/16 v2, 0x7dc

    invoke-direct {v0, v1, v2}, Lcab/snapp/mapmodule/a/b/c;-><init>(II)V

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public zoom(F)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p1}, Lcom/google/android/gms/maps/b;->zoomBy(F)Lcom/google/android/gms/maps/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/c;->moveCamera(Lcom/google/android/gms/maps/a;)V

    :cond_0
    return-void
.end method
