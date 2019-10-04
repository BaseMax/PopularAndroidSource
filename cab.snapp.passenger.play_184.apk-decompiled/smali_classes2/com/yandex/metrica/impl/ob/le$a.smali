.class public final Lcom/yandex/metrica/impl/ob/le$a;
.super Lcom/yandex/metrica/impl/ob/kz$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final e:Ljava/lang/Boolean;

.field public final f:Landroid/location/Location;

.field public final g:Ljava/lang/Boolean;

.field public final h:Ljava/lang/Boolean;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Boolean;

.field public final m:Ljava/lang/Boolean;

.field public final n:Lcom/yandex/metrica/CounterConfiguration$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/yandex/metrica/CounterConfiguration$a;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/kz$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/le$a;->a:Ljava/lang/String;

    .line 333
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/le$a;->e:Ljava/lang/Boolean;

    .line 334
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/le$a;->f:Landroid/location/Location;

    .line 335
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/le$a;->g:Ljava/lang/Boolean;

    .line 336
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/le$a;->h:Ljava/lang/Boolean;

    .line 337
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/le$a;->n:Lcom/yandex/metrica/CounterConfiguration$a;

    .line 338
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/le$a;->i:Ljava/lang/Integer;

    .line 339
    iput-object p11, p0, Lcom/yandex/metrica/impl/ob/le$a;->j:Ljava/lang/Integer;

    .line 340
    iput-object p12, p0, Lcom/yandex/metrica/impl/ob/le$a;->k:Ljava/lang/Integer;

    .line 341
    iput-object p13, p0, Lcom/yandex/metrica/impl/ob/le$a;->l:Ljava/lang/Boolean;

    .line 342
    iput-object p14, p0, Lcom/yandex/metrica/impl/ob/le$a;->m:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_a

    .line 404
    :cond_1
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/kz$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 406
    :cond_2
    check-cast p1, Lcom/yandex/metrica/impl/ob/le$a;

    .line 408
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 409
    :cond_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->e:Ljava/lang/Boolean;

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 413
    :cond_6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->g:Ljava/lang/Boolean;

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 417
    :cond_8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->h:Ljava/lang/Boolean;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 421
    :cond_a
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->n:Lcom/yandex/metrica/CounterConfiguration$a;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->n:Lcom/yandex/metrica/CounterConfiguration$a;

    if-eq v2, v3, :cond_b

    return v1

    .line 423
    :cond_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->i:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_c
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    :goto_4
    return v1

    .line 425
    :cond_d
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->j:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_5

    :cond_e
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    :goto_5
    return v1

    .line 427
    :cond_f
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->k:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_6

    :cond_10
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    :goto_6
    return v1

    .line 429
    :cond_11
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->l:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->l:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_7

    :cond_12
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->l:Ljava/lang/Boolean;

    if-eqz v2, :cond_13

    :goto_7
    return v1

    .line 431
    :cond_13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/le$a;->m:Ljava/lang/Boolean;

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_8

    :cond_14
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/le$a;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    :goto_8
    return v1

    .line 435
    :cond_15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/le$a;->f:Landroid/location/Location;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/le$a;->f:Landroid/location/Location;

    if-ne v2, p1, :cond_16

    return v0

    :cond_16
    if-eqz v2, :cond_26

    if-nez p1, :cond_17

    goto/16 :goto_a

    .line 1262
    :cond_17
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_18

    return v1

    :cond_18
    const/16 v3, 0x11

    .line 1263
    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1264
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_19

    return v1

    .line 1266
    :cond_19
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_1a

    return v1

    .line 1267
    :cond_1a
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_1b

    return v1

    .line 1268
    :cond_1b
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_1c

    return v1

    .line 1269
    :cond_1c
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1d

    return v1

    .line 1270
    :cond_1d
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1e

    return v1

    .line 1271
    :cond_1e
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1f

    return v1

    :cond_1f
    const/16 v3, 0x1a

    .line 1272
    invoke-static {v3}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1273
    invoke-virtual {p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v3

    .line 1274
    invoke-virtual {v2}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v4

    .line 1273
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_20

    return v1

    .line 1277
    :cond_20
    invoke-virtual {p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v3

    .line 1278
    invoke-virtual {v2}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v4

    .line 1277
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_21

    return v1

    .line 1281
    :cond_21
    invoke-virtual {p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v3

    .line 1282
    invoke-virtual {v2}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v4

    .line 1281
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_22

    return v1

    .line 1286
    :cond_22
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 1287
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_9

    .line 1288
    :cond_23
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    :goto_9
    return v1

    .line 1289
    :cond_24
    invoke-virtual {v2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1290
    invoke-virtual {v2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1291
    :cond_25
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_26

    return v0

    :cond_26
    :goto_a
    return v1
.end method

.method public final hashCode()I
    .locals 9

    .line 440
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/kz$a;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 441
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 443
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->f:Landroid/location/Location;

    if-eqz v1, :cond_c

    .line 2220
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    mul-int/lit8 v3, v3, 0x1f

    .line 2221
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v3, v5

    const/16 v4, 0x11

    .line 2223
    invoke-static {v4}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    mul-int/lit8 v3, v3, 0x1f

    .line 2225
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v3, v5

    .line 2227
    :cond_3
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    mul-int/lit8 v3, v3, 0x1f

    ushr-long v6, v4, v8

    xor-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v3, v5

    .line 2229
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    mul-int/lit8 v3, v3, 0x1f

    ushr-long v6, v4, v8

    xor-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v3, v5

    .line 2231
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    mul-int/lit8 v3, v3, 0x1f

    ushr-long v6, v4, v8

    xor-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x1f

    .line 2234
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1f

    .line 2236
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1f

    .line 2238
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    add-int/2addr v3, v4

    const/16 v4, 0x1a

    .line 2239
    invoke-static {v4}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v4

    if-eqz v4, :cond_a

    mul-int/lit8 v3, v3, 0x1f

    .line 2240
    invoke-virtual {v1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    .line 2241
    invoke-virtual {v1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1f

    .line 2243
    invoke-virtual {v1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 2244
    invoke-virtual {v1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1f

    .line 2246
    invoke-virtual {v1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 2247
    invoke-virtual {v1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    add-int/2addr v3, v4

    :cond_a
    mul-int/lit8 v3, v3, 0x1f

    .line 2250
    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v1, v3

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 444
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 445
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 446
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->n:Lcom/yandex/metrica/CounterConfiguration$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 447
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_f
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 448
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_10
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 449
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 450
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 451
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$a;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_13
    add-int/2addr v0, v2

    return v0
.end method
