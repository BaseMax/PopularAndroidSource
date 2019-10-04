.class public final Lc/e/a/b/h/b/lc;
.super Lc/e/a/b/h/b/Sb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/Sb;-><init>(Lc/e/a/b/h/b/Tb;)V

    return-void
.end method

.method public static a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 469
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/math/BigDecimal;Lc/e/a/b/g/f/W;D)Ljava/lang/Boolean;
    .locals 9

    .line 506
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p1, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;->zztr:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    .line 508
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;->zztv:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-ne v0, v2, :cond_2

    .line 509
    iget-object v0, p1, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    .line 510
    :cond_2
    iget-object v0, p1, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    .line 511
    :cond_3
    iget-object v0, p1, Lc/e/a/b/g/f/W;->c:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    .line 512
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;->zztv:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-ne v0, v2, :cond_6

    .line 513
    iget-object v2, p1, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    invoke-static {v2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    .line 514
    invoke-static {v2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 515
    :cond_4
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p1, Lc/e/a/b/g/f/W;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 516
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lc/e/a/b/g/f/W;->g:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    move-object v2, v1

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    return-object v1

    .line 517
    :cond_6
    iget-object v2, p1, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    invoke-static {v2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    return-object v1

    .line 518
    :cond_7
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    iget-object p1, p1, Lc/e/a/b/g/f/W;->e:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v3, p1

    .line 519
    :goto_1
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;->zztv:Lcom/google/android/gms/internal/measurement/zzbl$zza$zzb;

    if-ne v0, v4, :cond_9

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    return-object v1

    :cond_9
    if-eqz v2, :cond_14

    .line 520
    :goto_2
    sget-object v4, Lc/e/a/b/h/b/mc;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_12

    const/4 v7, 0x2

    if-eq v0, v7, :cond_10

    const/4 v8, 0x3

    if-eq v0, v8, :cond_c

    const/4 p2, 0x4

    if-eq v0, p2, :cond_a

    goto :goto_3

    .line 521
    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v4, :cond_b

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_b

    const/4 v5, 0x1

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_e

    .line 522
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 523
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 524
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_d

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v7}, Ljava/math/BigDecimal;-><init>(I)V

    .line 525
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 526
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_d

    const/4 v5, 0x1

    .line 527
    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 528
    :cond_e
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v5, 0x1

    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 529
    :cond_10
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_11

    const/4 v5, 0x1

    :cond_11
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 530
    :cond_12
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v4, :cond_13

    const/4 v5, 0x1

    :cond_13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    :cond_14
    :goto_3
    return-object v1
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lc/e/a/b/g/f/I;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 531
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 532
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 533
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 534
    invoke-static {}, Lc/e/a/b/g/f/I;->u()Lc/e/a/b/g/f/I$a;

    move-result-object v3

    .line 535
    invoke-virtual {v3, v2}, Lc/e/a/b/g/f/I$a;->a(I)Lc/e/a/b/g/f/I$a;

    .line 536
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lc/e/a/b/g/f/I$a;->a(J)Lc/e/a/b/g/f/I$a;

    .line 537
    invoke-virtual {v3}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/I;

    .line 538
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/Map;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    .line 540
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x3e8

    .line 541
    div-long/2addr p2, v1

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 543
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static a(Lc/e/a/b/g/f/X;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 539
    iget-object p0, p0, Lc/e/a/b/g/f/X;->g:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Map;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;IJ)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 p0, 0x3e8

    .line 4
    div-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(DLc/e/a/b/g/f/W;)Ljava/lang/Boolean;
    .locals 1

    .line 503
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lc/e/a/b/h/b/lc;->a(Ljava/math/BigDecimal;Lc/e/a/b/g/f/W;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(JLc/e/a/b/g/f/W;)Ljava/lang/Boolean;
    .locals 1

    .line 502
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lc/e/a/b/h/b/lc;->a(Ljava/math/BigDecimal;Lc/e/a/b/g/f/W;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lc/e/a/b/g/f/T;Ljava/lang/String;Ljava/util/List;J)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/g/f/T;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/e/a/b/g/f/K;",
            ">;J)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 346
    iget-object v0, p1, Lc/e/a/b/g/f/T;->h:Lc/e/a/b/g/f/W;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p0, p4, p5, v0}, Lc/e/a/b/h/b/lc;->a(JLc/e/a/b/g/f/W;)Ljava/lang/Boolean;

    move-result-object p4

    if-nez p4, :cond_0

    return-object v3

    .line 348
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_1

    return-object v2

    .line 349
    :cond_1
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 350
    iget-object p5, p1, Lc/e/a/b/g/f/T;->f:[Lc/e/a/b/g/f/U;

    array-length v0, p5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, p5, v4

    .line 351
    iget-object v6, v5, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 354
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "null or empty param name in filter. event"

    .line 355
    invoke-virtual {p1, p3, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 356
    :cond_2
    iget-object v5, v5, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    :cond_3
    new-instance p5, Lb/f/b;

    invoke-direct {p5}, Lb/f/b;-><init>()V

    .line 358
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/K;

    .line 359
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->v()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 361
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->v()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    invoke-interface {p5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 362
    :cond_6
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->y()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 363
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->y()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->z()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    invoke-interface {p5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 364
    :cond_8
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->s()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 365
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 366
    :cond_9
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 369
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown value for param. event, param"

    .line 370
    invoke-virtual {p1, p4, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 371
    :cond_a
    iget-object p1, p1, Lc/e/a/b/g/f/T;->f:[Lc/e/a/b/g/f/U;

    array-length p3, p1

    :goto_4
    const/4 p4, 0x1

    if-ge v1, p3, :cond_19

    aget-object v0, p1, v1

    .line 372
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v0, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 373
    iget-object v5, v0, Lc/e/a/b/g/f/U;->g:Ljava/lang/String;

    .line 374
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 375
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 377
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Event has empty param name. event"

    .line 378
    invoke-virtual {p1, p3, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 379
    :cond_b
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 380
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_e

    .line 381
    iget-object v7, v0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-nez v7, :cond_c

    .line 382
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 384
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 385
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, v5}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for long param. event, param"

    .line 386
    invoke-virtual {p1, p4, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 387
    :cond_c
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {p0, v5, v6, v0}, Lc/e/a/b/h/b/lc;->a(JLc/e/a/b/g/f/W;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v3

    .line 388
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p4, v0

    xor-int/2addr p4, v4

    if-eqz p4, :cond_14

    return-object v2

    .line 389
    :cond_e
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_11

    .line 390
    iget-object v7, v0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-nez v7, :cond_f

    .line 391
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 393
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 394
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, v5}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No number filter for double param. event, param"

    .line 395
    invoke-virtual {p1, p4, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 396
    :cond_f
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v0, v0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {p0, v5, v6, v0}, Lc/e/a/b/h/b/lc;->a(DLc/e/a/b/g/f/W;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v3

    .line 397
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p4, v0

    xor-int/2addr p4, v4

    if-eqz p4, :cond_14

    return-object v2

    .line 398
    :cond_11
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 399
    iget-object v7, v0, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    if-eqz v7, :cond_12

    .line 400
    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/String;Lc/e/a/b/g/f/Y;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 401
    :cond_12
    iget-object v7, v0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-eqz v7, :cond_16

    .line 402
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 403
    iget-object v0, v0, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {p0, v6, v0}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/String;Lc/e/a/b/g/f/W;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_13

    return-object v3

    .line 404
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr p4, v0

    xor-int/2addr p4, v4

    if-eqz p4, :cond_14

    return-object v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 405
    :cond_15
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 407
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 408
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, v5}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Invalid param value for number filter. event, param"

    .line 409
    invoke-virtual {p1, p4, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 410
    :cond_16
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 412
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 413
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, v5}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "No filter for String param. event, param"

    .line 414
    invoke-virtual {p1, p4, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_17
    if-nez v6, :cond_18

    .line 415
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 417
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 418
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, v5}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Missing param for filter. event, param"

    .line 419
    invoke-virtual {p1, p4, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 420
    :cond_18
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 422
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 423
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object p3

    invoke-virtual {p3, v5}, Lc/e/a/b/h/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Unknown param type. event, param"

    .line 424
    invoke-virtual {p1, p4, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 425
    :cond_19
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/b/g/f/X;Lc/e/a/b/g/f/N;)Ljava/lang/Boolean;
    .locals 4

    .line 426
    iget-object p1, p1, Lc/e/a/b/g/f/X;->f:Lc/e/a/b/g/f/U;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 428
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 429
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Missing property filter. property"

    .line 430
    invoke-virtual {p1, v1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 431
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lc/e/a/b/g/f/U;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 432
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    iget-object v2, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-nez v2, :cond_1

    .line 434
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 436
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "No number filter for long property. property"

    .line 437
    invoke-virtual {p1, v1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 438
    :cond_1
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->w()J

    move-result-wide v2

    iget-object p1, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {p0, v2, v3, p1}, Lc/e/a/b/h/b/lc;->a(JLc/e/a/b/g/f/W;)Ljava/lang/Boolean;

    move-result-object p1

    .line 439
    invoke-static {p1, v1}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 440
    :cond_2
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->y()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    iget-object v2, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-nez v2, :cond_3

    .line 442
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 444
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "No number filter for double property. property"

    .line 445
    invoke-virtual {p1, v1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 446
    :cond_3
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->z()D

    move-result-wide v2

    iget-object p1, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {p0, v2, v3, p1}, Lc/e/a/b/h/b/lc;->a(DLc/e/a/b/g/f/W;)Ljava/lang/Boolean;

    move-result-object p1

    .line 447
    invoke-static {p1, v1}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 448
    :cond_4
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->s()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 449
    iget-object v2, p1, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    if-nez v2, :cond_7

    .line 450
    iget-object v2, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    if-nez v2, :cond_5

    .line 451
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 453
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "No string or number filter defined. property"

    .line 454
    invoke-virtual {p1, v1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_5
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 456
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->t()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lc/e/a/b/g/f/U;->e:Lc/e/a/b/g/f/W;

    invoke-virtual {p0, p2, p1}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/String;Lc/e/a/b/g/f/W;)Ljava/lang/Boolean;

    move-result-object p1

    .line 457
    invoke-static {p1, v1}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 458
    :cond_6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 459
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 460
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->t()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Invalid user property value for Numeric number filter. property, value"

    .line 462
    invoke-virtual {p1, v2, v1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 463
    :cond_7
    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->t()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lc/e/a/b/g/f/U;->d:Lc/e/a/b/g/f/Y;

    invoke-virtual {p0, p2, p1}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/String;Lc/e/a/b/g/f/Y;)Ljava/lang/Boolean;

    move-result-object p1

    .line 464
    invoke-static {p1, v1}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 465
    :cond_8
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 467
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v1

    invoke-virtual {p2}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "User property has no value, property"

    .line 468
    invoke-virtual {p1, v1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lc/e/a/b/g/f/W;)Ljava/lang/Boolean;
    .locals 4

    .line 504
    invoke-static {p1}, Lc/e/a/b/h/b/Zb;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 505
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lc/e/a/b/h/b/lc;->a(Ljava/math/BigDecimal;Lc/e/a/b/g/f/W;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Lc/e/a/b/g/f/Y;)Ljava/lang/Boolean;
    .locals 9

    .line 470
    invoke-static {p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 471
    :cond_0
    iget-object v1, p2, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-eqz v1, :cond_c

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzue:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-ne v1, v2, :cond_1

    goto/16 :goto_6

    .line 472
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuk:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-ne v1, v2, :cond_3

    .line 473
    iget-object v1, p2, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    return-object v0

    .line 474
    :cond_3
    iget-object v1, p2, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    return-object v0

    .line 475
    :cond_4
    iget-object v4, p2, Lc/e/a/b/g/f/Y;->c:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 476
    iget-object v1, p2, Lc/e/a/b/g/f/Y;->e:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_7

    .line 477
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuf:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-eq v4, v1, :cond_7

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuk:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-ne v4, v1, :cond_6

    goto :goto_1

    .line 478
    :cond_6
    iget-object v1, p2, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 479
    :cond_7
    :goto_1
    iget-object v1, p2, Lc/e/a/b/g/f/Y;->d:Ljava/lang/String;

    :goto_2
    move-object v6, v1

    .line 480
    iget-object p2, p2, Lc/e/a/b/g/f/Y;->f:[Ljava/lang/String;

    if-nez p2, :cond_8

    move-object v7, v0

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    .line 481
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v7, p2

    goto :goto_4

    .line 482
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    array-length v3, p2

    :goto_3
    if-ge v2, v3, :cond_a

    aget-object v7, p2, v2

    .line 484
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move-object v7, v1

    .line 485
    :goto_4
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuf:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-ne v4, p2, :cond_b

    move-object v8, v6

    goto :goto_5

    :cond_b
    move-object v8, v0

    :goto_5
    move-object v2, p0

    move-object v3, p1

    .line 486
    invoke-virtual/range {v2 .. v8}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_6
    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 487
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuk:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    .line 488
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    .line 489
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuf:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    if-ne p2, v1, :cond_4

    goto :goto_0

    .line 490
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 491
    :cond_5
    :goto_0
    sget-object v1, Lc/e/a/b/h/b/mc;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 492
    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 493
    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 494
    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 495
    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 496
    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_1

    :cond_6
    const/16 p2, 0x42

    .line 497
    :goto_1
    :try_start_0
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 498
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 499
    :catch_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    .line 501
    invoke-virtual {p1, p2, p6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;[Lc/e/a/b/g/f/ba;[Lc/e/a/b/g/f/N;)[Lc/e/a/b/g/f/H;
    .locals 66

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v12, Lb/f/b;

    invoke-direct {v12}, Lb/f/b;-><init>()V

    .line 4
    new-instance v10, Lb/f/b;

    invoke-direct {v10}, Lb/f/b;-><init>()V

    .line 5
    new-instance v9, Lb/f/b;

    invoke-direct {v9}, Lb/f/b;-><init>()V

    .line 6
    new-instance v8, Lb/f/b;

    invoke-direct {v8}, Lb/f/b;-><init>()V

    .line 7
    new-instance v6, Lb/f/b;

    invoke-direct {v6}, Lb/f/b;-><init>()V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    invoke-virtual {v0, v15}, Lc/e/a/b/h/b/pc;->o(Ljava/lang/String;)Z

    move-result v23

    .line 9
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 10
    sget-object v1, Lc/e/a/b/h/b/k;->Ea:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v15, v1}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v24

    .line 11
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0, v15}, Lc/e/a/b/h/b/sc;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/b/g/f/L;

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    if-eqz v23, :cond_4

    move-object/from16 v19, v0

    .line 16
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    if-eqz v4, :cond_3

    .line 17
    invoke-virtual {v4}, Lc/e/a/b/g/f/L;->v()I

    move-result v20

    if-nez v20, :cond_0

    goto :goto_4

    .line 18
    :cond_0
    invoke-virtual {v4}, Lc/e/a/b/g/f/L;->u()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lc/e/a/b/g/f/I;

    .line 19
    invoke-virtual/range {v21 .. v21}, Lc/e/a/b/g/f/I;->r()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 20
    invoke-virtual/range {v21 .. v21}, Lc/e/a/b/g/f/I;->q()I

    move-result v22

    move-object/from16 v25, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 21
    invoke-virtual/range {v21 .. v21}, Lc/e/a/b/g/f/I;->s()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 22
    invoke-virtual/range {v21 .. v21}, Lc/e/a/b/g/f/I;->t()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v65, v21

    move-object/from16 v21, v5

    move-object/from16 v5, v65

    goto :goto_2

    :cond_1
    move-object/from16 v21, v5

    const/4 v5, 0x0

    .line 23
    :goto_2
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move-object/from16 v25, v1

    move-object/from16 v21, v5

    :goto_3
    move-object/from16 v5, v21

    move-object/from16 v1, v25

    goto :goto_1

    :cond_3
    :goto_4
    move-object/from16 v25, v1

    move-object/from16 v21, v5

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 25
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    move-object/from16 v19, v0

    move-object/from16 v25, v1

    move-object/from16 v21, v5

    const/4 v0, 0x0

    :goto_5
    if-nez v3, :cond_5

    .line 26
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object/from16 v5, v21

    :goto_6
    const/4 v1, 0x0

    .line 30
    :goto_7
    invoke-virtual {v4}, Lc/e/a/b/g/f/L;->r()I

    move-result v20

    move-object/from16 v21, v8

    shl-int/lit8 v8, v20, 0x6

    if-ge v1, v8, :cond_9

    .line 31
    invoke-virtual {v4}, Lc/e/a/b/g/f/L;->q()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 32
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v8

    .line 33
    invoke-virtual {v8}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v8

    move-object/from16 v20, v9

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v22, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v26, v11

    const-string v11, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v8, v11, v9, v10}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->set(I)V

    .line 36
    invoke-virtual {v4}, Lc/e/a/b/g/f/L;->s()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v1}, Lc/e/a/b/h/b/Zb;->a(Ljava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 37
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v8, 0x1

    goto :goto_8

    :cond_6
    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v11

    :cond_7
    const/4 v8, 0x0

    :goto_8
    if-eqz v0, :cond_8

    if-nez v8, :cond_8

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v26

    goto :goto_7

    :cond_9
    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v11

    .line 39
    invoke-static {}, Lc/e/a/b/g/f/H;->y()Lc/e/a/b/g/f/H$a;

    move-result-object v1

    const/4 v8, 0x0

    .line 40
    invoke-virtual {v1, v8}, Lc/e/a/b/g/f/H$a;->a(Z)Lc/e/a/b/g/f/H$a;

    .line 41
    invoke-virtual {v1, v4}, Lc/e/a/b/g/f/H$a;->a(Lc/e/a/b/g/f/L;)Lc/e/a/b/g/f/H$a;

    .line 42
    invoke-static {}, Lc/e/a/b/g/f/L;->y()Lc/e/a/b/g/f/L$a;

    move-result-object v4

    .line 43
    invoke-static {v3}, Lc/e/a/b/h/b/Zb;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lc/e/a/b/g/f/L$a;->b(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;

    .line 44
    invoke-static {v5}, Lc/e/a/b/h/b/Zb;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lc/e/a/b/g/f/L$a;->a(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;

    if-eqz v23, :cond_a

    .line 45
    invoke-static {v0}, Lc/e/a/b/h/b/lc;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-virtual {v4, v0}, Lc/e/a/b/g/f/L$a;->c(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lb/f/b;

    invoke-direct {v3}, Lb/f/b;-><init>()V

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_a
    invoke-virtual {v1, v4}, Lc/e/a/b/g/f/H$a;->a(Lc/e/a/b/g/f/L$a;)Lc/e/a/b/g/f/H$a;

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v1

    check-cast v1, Lc/e/a/b/g/f/H;

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v22

    move-object/from16 v1, v25

    move-object/from16 v11, v26

    goto/16 :goto_0

    :cond_b
    move-object/from16 v21, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v11

    const-string v10, "Filter definition"

    const-string v8, "Skipping failed audience ID"

    const-string v25, "null"

    if-eqz v13, :cond_36

    .line 50
    new-instance v4, Lb/f/b;

    invoke-direct {v4}, Lb/f/b;-><init>()V

    .line 51
    array-length v5, v13

    const-wide/16 v27, 0x0

    move-wide/from16 v29, v27

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v5, :cond_36

    aget-object v2, v13, v3

    .line 52
    iget-object v9, v2, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    .line 53
    iget-object v11, v2, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move/from16 v32, v3

    .line 54
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v3

    move-object/from16 v33, v4

    .line 55
    sget-object v4, Lc/e/a/b/h/b/k;->ca:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v3, v15, v4}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v3

    const-wide/16 v34, 0x1

    if-eqz v3, :cond_1c

    .line 56
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    const-string v3, "_eid"

    invoke-static {v2, v3}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_c

    const/16 v36, 0x1

    goto :goto_a

    :cond_c
    const/16 v36, 0x0

    :goto_a
    if-eqz v36, :cond_d

    move/from16 v37, v5

    const-string v5, "_ep"

    .line 57
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_b

    :cond_d
    move/from16 v37, v5

    :cond_e
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_19

    .line 58
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    const-string v5, "_en"

    invoke-static {v2, v5}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 59
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 60
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Extra parameter without an event name. eventId"

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v38, v0

    move-object/from16 v43, v6

    move-object/from16 v42, v33

    move/from16 v33, v37

    goto/16 :goto_16

    :cond_f
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 61
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    cmp-long v5, v38, v40

    if-eqz v5, :cond_10

    goto :goto_d

    :cond_10
    :goto_c
    move-object v5, v0

    move-object/from16 v36, v1

    goto :goto_e

    .line 62
    :cond_11
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v5

    invoke-virtual {v5, v15, v4}, Lc/e/a/b/h/b/sc;->a(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_18

    move-object/from16 v38, v0

    .line 63
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_12

    goto/16 :goto_15

    .line 64
    :cond_12
    check-cast v0, Lc/e/a/b/g/f/ba;

    .line 65
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 66
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    invoke-static {v0, v3}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_c

    :goto_e
    sub-long v29, v29, v34

    cmp-long v0, v29, v27

    if-gtz v0, :cond_13

    .line 67
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->l()V

    .line 69
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Clearing complex main event info. appId"

    invoke-virtual {v0, v3, v15}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :try_start_0
    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "delete from main_event_params where app_id=?"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v2

    const/4 v4, 0x1

    .line 71
    :try_start_1
    new-array v2, v4, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v18, 0x0

    :try_start_2
    aput-object v15, v2, v18

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    const/4 v4, 0x1

    :goto_f
    const/16 v18, 0x0

    .line 72
    :goto_10
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Error clearing complex main event"

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    move-object/from16 v16, v5

    move-object/from16 v43, v6

    move-object/from16 v13, v17

    move-object/from16 v42, v33

    move/from16 v33, v37

    goto :goto_12

    :cond_13
    move-object/from16 v17, v2

    const/4 v3, 0x1

    const/16 v18, 0x0

    .line 73
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v1

    move-object/from16 v13, v17

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v16, v5

    move-object/from16 v42, v33

    move/from16 v33, v37

    move-wide/from16 v4, v29

    move-object/from16 v43, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lc/e/a/b/h/b/sc;->a(Ljava/lang/String;Ljava/lang/Long;JLc/e/a/b/g/f/ba;)Z

    .line 74
    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, v16

    .line 75
    iget-object v2, v1, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_15

    aget-object v5, v2, v4

    .line 76
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    invoke-virtual {v5}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v6

    if-nez v6, :cond_14

    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 78
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 79
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/b/g/f/K;

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_16
    move-object/from16 v37, v0

    move-object/from16 v38, v1

    move-object v0, v9

    goto/16 :goto_1a

    .line 81
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v2, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v38, v1

    goto/16 :goto_19

    :cond_18
    move-object/from16 v38, v0

    :goto_15
    move-object/from16 v43, v6

    move-object/from16 v42, v33

    move/from16 v33, v37

    .line 82
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 84
    invoke-virtual {v0, v2, v9, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_16
    move-object/from16 v46, v8

    move-object/from16 v48, v10

    move-object/from16 v16, v12

    move-object/from16 v64, v20

    move-object/from16 v47, v22

    move-object/from16 v11, v26

    move-object/from16 v0, v38

    move-object/from16 v26, v21

    goto/16 :goto_29

    :cond_19
    move-object/from16 v38, v0

    move-object v13, v2

    move-object/from16 v43, v6

    move-object/from16 v42, v33

    move/from16 v33, v37

    if-eqz v36, :cond_1d

    .line 85
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_epc"

    .line 86
    invoke-static {v13, v1}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_17

    :cond_1a
    move-object v0, v1

    .line 87
    :goto_17
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v0, v16, v27

    if-gtz v0, :cond_1b

    .line 88
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Complex event with zero extra param count. eventName"

    .line 90
    invoke-virtual {v0, v1, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_18

    .line 91
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v0, v4

    move-wide/from16 v4, v16

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lc/e/a/b/h/b/sc;->a(Ljava/lang/String;Ljava/lang/Long;JLc/e/a/b/g/f/ba;)Z

    :goto_18
    move-object/from16 v36, v0

    move-object v0, v9

    move-object/from16 v37, v11

    move-object/from16 v38, v13

    move-wide/from16 v29, v16

    goto :goto_1a

    :cond_1c
    move-object/from16 v38, v0

    move-object v13, v2

    move-object/from16 v43, v6

    move-object/from16 v42, v33

    move/from16 v33, v5

    :cond_1d
    move-object/from16 v36, v1

    :goto_19
    move-object v0, v9

    move-object/from16 v37, v11

    .line 92
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v1

    iget-object v2, v13, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/g;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 93
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 95
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 96
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 97
    invoke-virtual {v1, v4, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    new-instance v1, Lc/e/a/b/h/b/g;

    iget-object v2, v13, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    iget-object v9, v13, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 99
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v44, 0x0

    move-object v9, v8

    move-object/from16 v11, v21

    move-object v8, v1

    move-object/from16 v46, v9

    move-object/from16 v45, v20

    move-object/from16 v9, p1

    move-object/from16 v48, v10

    move-object/from16 v47, v22

    move-object v10, v2

    move-object v7, v11

    move-object/from16 v2, v26

    move-object/from16 v26, v12

    move-wide v11, v3

    move-object v3, v13

    move-object v4, v14

    move-wide v13, v5

    move-object v5, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v34

    move-object/from16 v19, v39

    move-object/from16 v20, v40

    move-object/from16 v21, v41

    move-object/from16 v22, v44

    invoke-direct/range {v8 .. v22}, Lc/e/a/b/h/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v17, v3

    goto :goto_1b

    :cond_1e
    move-object/from16 v46, v8

    move-object/from16 v48, v10

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v45, v20

    move-object/from16 v7, v21

    move-object/from16 v47, v22

    move-object/from16 v2, v26

    move-object/from16 v26, v12

    .line 100
    new-instance v6, Lc/e/a/b/h/b/g;

    iget-object v8, v1, Lc/e/a/b/h/b/g;->a:Ljava/lang/String;

    iget-object v9, v1, Lc/e/a/b/h/b/g;->b:Ljava/lang/String;

    iget-wide v10, v1, Lc/e/a/b/h/b/g;->c:J

    add-long v52, v10, v34

    iget-wide v10, v1, Lc/e/a/b/h/b/g;->d:J

    add-long v54, v10, v34

    iget-wide v10, v1, Lc/e/a/b/h/b/g;->e:J

    iget-wide v12, v1, Lc/e/a/b/h/b/g;->f:J

    iget-object v14, v1, Lc/e/a/b/h/b/g;->g:Ljava/lang/Long;

    iget-object v15, v1, Lc/e/a/b/h/b/g;->h:Ljava/lang/Long;

    move-object/from16 v17, v3

    iget-object v3, v1, Lc/e/a/b/h/b/g;->i:Ljava/lang/Long;

    iget-object v1, v1, Lc/e/a/b/h/b/g;->j:Ljava/lang/Boolean;

    move-object/from16 v49, v6

    move-object/from16 v50, v8

    move-object/from16 v51, v9

    move-wide/from16 v56, v10

    move-wide/from16 v58, v12

    move-object/from16 v60, v14

    move-object/from16 v61, v15

    move-object/from16 v62, v3

    move-object/from16 v63, v1

    invoke-direct/range {v49 .. v63}, Lc/e/a/b/h/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v1, v6

    .line 101
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/g;)V

    .line 102
    iget-wide v8, v1, Lc/e/a/b/h/b/g;->c:J

    move-object/from16 v10, v42

    .line 103
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_20

    .line 104
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lc/e/a/b/h/b/sc;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 105
    new-instance v1, Lb/f/b;

    invoke-direct {v1}, Lb/f/b;-><init>()V

    .line 106
    :cond_1f
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    move-object v11, v1

    .line 107
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 108
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 109
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v14, v46

    invoke-virtual {v1, v14, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_21
    move-object/from16 v14, v46

    .line 110
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v15, v47

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 111
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v45

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    if-eqz v23, :cond_22

    move-object/from16 v16, v1

    .line 112
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object/from16 v18, v1

    .line 113
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v42, v10

    move-object/from16 v10, v43

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object/from16 v19, v1

    goto :goto_1d

    :cond_22
    move-object/from16 v16, v1

    move-object/from16 v42, v10

    move-object/from16 v10, v43

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 114
    :goto_1d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v12

    move-object/from16 v12, v26

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/g/f/H;

    if-nez v1, :cond_23

    .line 115
    invoke-static {}, Lc/e/a/b/g/f/H;->y()Lc/e/a/b/g/f/H$a;

    move-result-object v1

    const/4 v3, 0x1

    .line 116
    invoke-virtual {v1, v3}, Lc/e/a/b/g/f/H$a;->a(Z)Lc/e/a/b/g/f/H$a;

    .line 117
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v1

    check-cast v1, Lc/e/a/b/g/f/H;

    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 119
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v16, v1

    .line 121
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v23, :cond_23

    .line 122
    new-instance v1, Lb/f/b;

    invoke-direct {v1}, Lb/f/b;-><init>()V

    move-object/from16 v26, v2

    .line 123
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v2, Lb/f/b;

    invoke-direct {v2}, Lb/f/b;-><init>()V

    move-object/from16 v18, v1

    .line 126
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 127
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    move-object/from16 v43, v10

    move-object/from16 v3, v16

    move-object v10, v2

    goto :goto_1e

    :cond_23
    move-object/from16 v26, v2

    move-object v1, v3

    move-object/from16 v43, v10

    move-object/from16 v3, v16

    move-object/from16 v10, v19

    :goto_1e
    move-object/from16 v16, v12

    move-object/from16 v12, v18

    .line 128
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/T;

    move-object/from16 v19, v1

    .line 130
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    move-object/from16 v21, v11

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lc/e/a/b/h/b/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 131
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 133
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v4, v2, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v5

    move-object/from16 v45, v6

    iget-object v6, v2, Lc/e/a/b/g/f/T;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Evaluating filter. audience, filter, event"

    .line 135
    invoke-virtual {v1, v6, v11, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 138
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/T;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v11, v48

    invoke-virtual {v1, v11, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_20

    :cond_24
    move-object/from16 v45, v6

    move-object/from16 v11, v48

    .line 139
    :goto_20
    iget-object v1, v2, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x100

    if-le v1, v5, :cond_25

    goto/16 :goto_26

    :cond_25
    const-string v6, "Event filter result"

    if-eqz v23, :cond_2d

    if-eqz v2, :cond_26

    .line 140
    iget-object v1, v2, Lc/e/a/b/g/f/T;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v22, 0x1

    goto :goto_21

    :cond_26
    const/16 v22, 0x0

    :goto_21
    if-eqz v2, :cond_27

    .line 141
    iget-object v1, v2, Lc/e/a/b/g/f/T;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v31, 0x1

    goto :goto_22

    :cond_27
    const/16 v31, 0x0

    .line 142
    :goto_22
    iget-object v1, v2, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_28

    if-nez v22, :cond_28

    if-nez v31, :cond_28

    .line 143
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 145
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v2, v2, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    const-string v6, "Event filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"

    .line 146
    invoke-virtual {v1, v6, v4, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object/from16 v48, v11

    move-object/from16 v1, v19

    move-object/from16 v11, v21

    move-object/from16 v6, v45

    goto/16 :goto_1f

    :cond_28
    move-object/from16 v4, v19

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object/from16 v48, v11

    move-object/from16 v11, v26

    move-object/from16 v26, v7

    move-object/from16 v47, v15

    move-object/from16 v7, v17

    move-object v15, v3

    move-object v3, v0

    move-object/from16 v46, v14

    move-object v14, v4

    move-object/from16 v4, v37

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v64, v45

    move-wide v5, v8

    .line 147
    invoke-virtual/range {v1 .. v6}, Lc/e/a/b/h/b/lc;->a(Lc/e/a/b/g/f/T;Ljava/lang/String;Ljava/util/List;J)Ljava/lang/Boolean;

    move-result-object v1

    .line 148
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v2

    if-nez v1, :cond_29

    move-object/from16 v3, v25

    goto :goto_23

    :cond_29
    move-object v3, v1

    .line 150
    :goto_23
    invoke-virtual {v2, v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_2a

    .line 151
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_2a
    move-object/from16 v5, v19

    .line 152
    iget-object v0, v5, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/util/BitSet;->set(I)V

    .line 153
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 154
    iget-object v0, v5, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/util/BitSet;->set(I)V

    if-nez v22, :cond_2b

    if-eqz v31, :cond_2e

    .line 155
    :cond_2b
    iget-object v0, v7, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    if-eqz v0, :cond_2e

    if-eqz v31, :cond_2c

    .line 156
    iget-object v0, v5, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v7, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 158
    invoke-static {v10, v0, v1, v2}, Lc/e/a/b/h/b/lc;->b(Ljava/util/Map;IJ)V

    goto :goto_24

    .line 159
    :cond_2c
    iget-object v0, v5, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v7, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 161
    invoke-static {v12, v0, v1, v2}, Lc/e/a/b/h/b/lc;->a(Ljava/util/Map;IJ)V

    goto :goto_24

    :cond_2d
    move-object v5, v2

    move-object/from16 v48, v11

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v14, v19

    move-object/from16 v11, v26

    move-object/from16 v64, v45

    move-object v15, v3

    move-object/from16 v26, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v0

    move-object v0, v6

    .line 162
    iget-object v1, v5, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 163
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 165
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v5, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    const-string v3, "Event filter already evaluated true. audience ID, filter ID"

    .line 166
    invoke-virtual {v0, v3, v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    :goto_24
    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object v1, v14

    move-object v3, v15

    move-object/from16 v0, v17

    move-object/from16 v14, v46

    move-object/from16 v15, v47

    move-object/from16 v6, v64

    move-object/from16 v17, v7

    move-object/from16 v7, v26

    goto/16 :goto_28

    :cond_2f
    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, v17

    move-object/from16 v4, v37

    move-object/from16 v19, v7

    move-object v7, v5

    move-wide v5, v8

    .line 167
    invoke-virtual/range {v1 .. v6}, Lc/e/a/b/h/b/lc;->a(Lc/e/a/b/g/f/T;Ljava/lang/String;Ljava/util/List;J)Ljava/lang/Boolean;

    move-result-object v1

    .line 168
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v2

    if-nez v1, :cond_30

    move-object/from16 v3, v25

    goto :goto_25

    :cond_30
    move-object v3, v1

    .line 170
    :goto_25
    invoke-virtual {v2, v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_31

    .line 171
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 172
    :cond_31
    iget-object v0, v7, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/util/BitSet;->set(I)V

    .line 173
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 174
    iget-object v0, v7, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_27

    :cond_32
    :goto_26
    move-object/from16 v48, v11

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v14, v19

    move-object/from16 v11, v26

    move-object/from16 v64, v45

    move-object v15, v3

    move-object/from16 v26, v7

    move-object/from16 v19, v17

    move-object/from16 v17, v0

    move-object v7, v2

    .line 175
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 177
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v7, Lc/e/a/b/g/f/T;->d:Ljava/lang/Integer;

    .line 178
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid event filter ID. appId, id"

    .line 179
    invoke-virtual {v0, v3, v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    :goto_27
    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object v1, v14

    move-object v3, v15

    move-object/from16 v0, v17

    move-object/from16 v17, v19

    move-object/from16 v7, v26

    move-object/from16 v14, v46

    move-object/from16 v15, v47

    move-object/from16 v6, v64

    :goto_28
    move-object/from16 v26, v11

    move-object/from16 v11, v21

    goto/16 :goto_1f

    :cond_34
    move-object/from16 v21, v11

    move-object/from16 v19, v17

    move-object/from16 v11, v26

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object/from16 v45, v6

    move-object v2, v11

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v26, v16

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    move-object/from16 v10, v42

    goto/16 :goto_1c

    :cond_35
    move-object v11, v2

    move-object/from16 v42, v10

    move-object/from16 v16, v26

    move-object/from16 v64, v45

    move-object/from16 v26, v7

    move-object/from16 v1, v36

    move-object/from16 v0, v38

    :goto_29
    add-int/lit8 v3, v32, 0x1

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v12, v16

    move-object/from16 v21, v26

    move/from16 v5, v33

    move-object/from16 v4, v42

    move-object/from16 v6, v43

    move-object/from16 v8, v46

    move-object/from16 v22, v47

    move-object/from16 v10, v48

    move-object/from16 v20, v64

    move-object/from16 v26, v11

    goto/16 :goto_9

    :cond_36
    move-object/from16 v43, v6

    move-object/from16 v46, v8

    move-object/from16 v48, v10

    move-object/from16 v16, v12

    move-object/from16 v64, v20

    move-object/from16 v47, v22

    move-object/from16 v11, v26

    move-object/from16 v26, v21

    move-object/from16 v1, p3

    if-eqz v1, :cond_50

    .line 180
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    .line 181
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    .line 182
    invoke-virtual {v4}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_38

    .line 183
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v5

    invoke-virtual {v4}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v5, v7, v6}, Lc/e/a/b/h/b/sc;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_37

    .line 184
    new-instance v5, Lb/f/b;

    invoke-direct {v5}, Lb/f/b;-><init>()V

    .line 185
    :cond_37
    invoke-virtual {v4}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_38
    move-object/from16 v7, p1

    .line 186
    :goto_2b
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 187
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 188
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v9

    invoke-virtual {v9}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v10, v46

    invoke-virtual {v9, v10, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    :cond_39
    move-object/from16 v10, v46

    .line 189
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v12, v47

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    .line 190
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, v64

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    if-eqz v23, :cond_3a

    .line 191
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v1, v26

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    move-object/from16 p2, v0

    .line 192
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v17, v2

    move-object/from16 v2, v43

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object/from16 v18, v0

    goto :goto_2d

    :cond_3a
    move-object/from16 p2, v0

    move/from16 v17, v2

    move-object/from16 v1, v26

    move-object/from16 v2, v43

    const/4 v15, 0x0

    const/16 v18, 0x0

    .line 193
    :goto_2d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/H;

    if-nez v0, :cond_3c

    .line 194
    invoke-static {}, Lc/e/a/b/g/f/H;->y()Lc/e/a/b/g/f/H$a;

    move-result-object v0

    const/4 v9, 0x1

    .line 195
    invoke-virtual {v0, v9}, Lc/e/a/b/g/f/H$a;->a(Z)Lc/e/a/b/g/f/H$a;

    .line 196
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-interface {v6, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 198
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v13, Ljava/util/BitSet;

    invoke-direct {v13}, Ljava/util/BitSet;-><init>()V

    .line 200
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v23, :cond_3b

    .line 201
    new-instance v15, Lb/f/b;

    invoke-direct {v15}, Lb/f/b;-><init>()V

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 203
    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v9, Lb/f/b;

    invoke-direct {v9}, Lb/f/b;-><init>()V

    move-object/from16 v16, v0

    .line 205
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v26, v6

    move-object v0, v9

    move-object/from16 v9, v16

    goto :goto_2e

    :cond_3b
    move-object/from16 v16, v0

    move-object/from16 v26, v6

    move-object/from16 v9, v16

    move-object/from16 v0, v18

    :goto_2e
    const/16 v16, 0x1

    goto :goto_2f

    :cond_3c
    const/16 v16, 0x1

    move-object/from16 v26, v6

    move-object/from16 v0, v18

    .line 207
    :goto_2f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 208
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    check-cast v5, Lc/e/a/b/g/f/X;

    move-object/from16 v18, v6

    .line 209
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    move-object/from16 v46, v10

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lc/e/a/b/h/b/t;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 210
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v6

    .line 212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v7, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    move-object/from16 v43, v2

    .line 213
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v2

    move-object/from16 v21, v1

    iget-object v1, v5, Lc/e/a/b/g/f/X;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Evaluating filter. audience, filter, property"

    .line 214
    invoke-virtual {v6, v2, v10, v7, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 217
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->n()Lc/e/a/b/h/b/Zb;

    move-result-object v2

    invoke-virtual {v2, v5}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/X;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v48

    invoke-virtual {v1, v6, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    :cond_3d
    move-object/from16 v21, v1

    move-object/from16 v43, v2

    move-object/from16 v6, v48

    .line 218
    :goto_31
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_3e

    goto/16 :goto_38

    :cond_3e
    const-string v1, "Property filter result"

    if-eqz v23, :cond_48

    .line 219
    invoke-static {v5}, Lc/e/a/b/h/b/lc;->a(Lc/e/a/b/g/f/X;)Z

    move-result v7

    if-eqz v5, :cond_3f

    .line 220
    iget-object v10, v5, Lc/e/a/b/g/f/X;->h:Ljava/lang/Boolean;

    if-eqz v10, :cond_3f

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3f

    const/4 v10, 0x1

    goto :goto_32

    :cond_3f
    const/4 v10, 0x0

    .line 221
    :goto_32
    iget-object v2, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_40

    if-nez v7, :cond_40

    if-nez v10, :cond_40

    .line 222
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 224
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    const-string v7, "Property filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"

    .line 225
    invoke-virtual {v1, v7, v2, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v7, p1

    move-object/from16 v48, v6

    move-object/from16 v6, v18

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v43

    goto/16 :goto_36

    :cond_40
    move-object/from16 v2, p0

    move-object/from16 v48, v6

    move-object/from16 v6, v26

    .line 226
    invoke-virtual {v2, v5, v4}, Lc/e/a/b/h/b/lc;->a(Lc/e/a/b/g/f/X;Lc/e/a/b/g/f/N;)Ljava/lang/Boolean;

    move-result-object v22

    .line 227
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v26

    move-object/from16 v45, v14

    .line 228
    invoke-virtual/range {v26 .. v26}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v14

    if-nez v22, :cond_41

    move-object/from16 v26, v6

    move-object/from16 v6, v25

    goto :goto_33

    :cond_41
    move-object/from16 v26, v6

    move-object/from16 v6, v22

    .line 229
    :goto_33
    invoke-virtual {v14, v1, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v22, :cond_42

    .line 230
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 231
    :cond_42
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->set(I)V

    if-eqz v24, :cond_44

    .line 232
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {v5}, Lc/e/a/b/h/b/lc;->a(Lc/e/a/b/g/f/X;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 233
    :cond_43
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v9, v1, v6}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_34

    .line 234
    :cond_44
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v9, v1, v6}, Ljava/util/BitSet;->set(IZ)V

    .line 235
    :cond_45
    :goto_34
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_49

    if-nez v7, :cond_46

    if-eqz v10, :cond_49

    .line 236
    :cond_46
    invoke-virtual {v4}, Lc/e/a/b/g/f/N;->B()Z

    move-result v1

    if-eqz v1, :cond_49

    if-eqz v10, :cond_47

    .line 237
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 239
    invoke-virtual {v4}, Lc/e/a/b/g/f/N;->C()J

    move-result-wide v5

    .line 240
    invoke-static {v0, v1, v5, v6}, Lc/e/a/b/h/b/lc;->b(Ljava/util/Map;IJ)V

    goto :goto_35

    .line 241
    :cond_47
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    .line 242
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    invoke-virtual {v4}, Lc/e/a/b/g/f/N;->C()J

    move-result-wide v5

    .line 244
    invoke-static {v15, v1, v5, v6}, Lc/e/a/b/h/b/lc;->a(Ljava/util/Map;IJ)V

    goto :goto_35

    :cond_48
    move-object/from16 v2, p0

    move-object/from16 v48, v6

    move-object/from16 v45, v14

    .line 245
    iget-object v6, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 246
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 248
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    const-string v7, "Property filter already evaluated true. audience ID, filter ID"

    .line 249
    invoke-virtual {v1, v7, v6, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    :goto_35
    move-object/from16 v7, p1

    move-object/from16 v6, v18

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v43

    move-object/from16 v14, v45

    :goto_36
    move-object/from16 v10, v46

    goto/16 :goto_30

    .line 250
    :cond_4a
    invoke-virtual {v2, v5, v4}, Lc/e/a/b/h/b/lc;->a(Lc/e/a/b/g/f/X;Lc/e/a/b/g/f/N;)Ljava/lang/Boolean;

    move-result-object v6

    .line 251
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 252
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v7

    if-nez v6, :cond_4b

    move-object/from16 v10, v25

    goto :goto_37

    :cond_4b
    move-object v10, v6

    .line 253
    :goto_37
    invoke-virtual {v7, v1, v10}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v6, :cond_4c

    .line 254
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 255
    :cond_4c
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->set(I)V

    .line 256
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 257
    iget-object v1, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_35

    :cond_4d
    :goto_38
    move-object/from16 v2, p0

    move-object/from16 v48, v6

    move-object/from16 v45, v14

    .line 258
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 260
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, v5, Lc/e/a/b/g/f/X;->d:Ljava/lang/Integer;

    .line 261
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid property filter ID. appId, id"

    .line 262
    invoke-virtual {v0, v6, v1, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v47, v12

    move/from16 v2, v17

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v16, v26

    move-object/from16 v64, v45

    move-object/from16 v26, v21

    goto/16 :goto_2c

    :cond_4e
    move-object/from16 v43, v2

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v46, v10

    move-object/from16 v47, v12

    move-object/from16 v64, v14

    move/from16 v2, v17

    move-object/from16 v6, v19

    move-object/from16 v16, v26

    move-object/from16 v26, v1

    move-object/from16 v1, p3

    goto/16 :goto_2c

    :cond_4f
    move-object/from16 p2, v0

    move/from16 v17, v2

    move-object/from16 v21, v26

    move-object/from16 v12, v47

    move-object/from16 v45, v64

    move-object/from16 v2, p0

    move-object/from16 v26, v16

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p3

    move/from16 v2, v17

    move-object/from16 v16, v26

    move-object/from16 v26, v21

    goto/16 :goto_2a

    :cond_50
    move-object/from16 v2, p0

    move-object/from16 v21, v26

    move-object/from16 v12, v47

    move-object/from16 v45, v64

    move-object/from16 v26, v16

    const/16 v16, 0x1

    .line 264
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Lc/e/a/b/g/f/H;

    .line 265
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v6, v26

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/b/g/f/H;

    if-nez v4, :cond_51

    .line 268
    invoke-static {}, Lc/e/a/b/g/f/H;->y()Lc/e/a/b/g/f/H$a;

    move-result-object v4

    goto :goto_3a

    .line 269
    :cond_51
    invoke-virtual {v4}, Lc/e/a/b/g/f/nb;->k()Lc/e/a/b/g/f/nb$a;

    move-result-object v4

    .line 270
    check-cast v4, Lc/e/a/b/g/f/H$a;

    .line 271
    :goto_3a
    invoke-virtual {v4, v0}, Lc/e/a/b/g/f/H$a;->a(I)Lc/e/a/b/g/f/H$a;

    .line 272
    invoke-static {}, Lc/e/a/b/g/f/L;->y()Lc/e/a/b/g/f/L$a;

    move-result-object v7

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lc/e/a/b/h/b/Zb;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc/e/a/b/g/f/L$a;->b(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v45

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lc/e/a/b/h/b/Zb;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc/e/a/b/g/f/L$a;->a(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;

    if-eqz v23, :cond_5e

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v10, v21

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 276
    invoke-static {v8}, Lc/e/a/b/h/b/lc;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    .line 277
    invoke-virtual {v7, v8}, Lc/e/a/b/g/f/L$a;->c(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v13, v43

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_52

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object/from16 p2, v3

    move-object v14, v8

    :goto_3b
    move-object/from16 v45, v9

    goto/16 :goto_3e

    .line 280
    :cond_52
    new-instance v14, Ljava/util/ArrayList;

    .line 281
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_54

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 p2, v3

    .line 283
    invoke-static {}, Lc/e/a/b/g/f/M;->w()Lc/e/a/b/g/f/M$a;

    move-result-object v3

    move-object/from16 v45, v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v9}, Lc/e/a/b/g/f/M$a;->a(I)Lc/e/a/b/g/f/M$a;

    .line 284
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_53

    .line 285
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    move-object/from16 p3, v8

    .line 287
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lc/e/a/b/g/f/M$a;->a(J)Lc/e/a/b/g/f/M$a;

    move-object/from16 v8, p3

    goto :goto_3d

    :cond_53
    move-object/from16 p3, v8

    .line 288
    invoke-virtual {v3}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/M;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v45

    goto :goto_3c

    :cond_54
    move-object/from16 p2, v3

    goto :goto_3b

    :goto_3e
    if-eqz v24, :cond_55

    .line 289
    invoke-virtual {v4}, Lc/e/a/b/g/f/H$a;->k()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 290
    invoke-virtual {v4}, Lc/e/a/b/g/f/H$a;->m()Lc/e/a/b/g/f/L;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/g/f/L;->w()Ljava/util/List;

    move-result-object v2

    .line 291
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_56

    :cond_55
    move-object/from16 v21, v10

    move-object/from16 v26, v11

    goto/16 :goto_44

    .line 292
    :cond_56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    new-instance v8, Lb/f/b;

    invoke-direct {v8}, Lb/f/b;-><init>()V

    .line 294
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_57
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/a/b/g/f/M;

    .line 295
    invoke-virtual {v9}, Lc/e/a/b/g/f/M;->r()Z

    move-result v14

    if-eqz v14, :cond_57

    .line 296
    invoke-virtual {v9}, Lc/e/a/b/g/f/M;->t()I

    move-result v14

    if-lez v14, :cond_57

    .line 297
    invoke-virtual {v9}, Lc/e/a/b/g/f/M;->q()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 298
    invoke-virtual {v9}, Lc/e/a/b/g/f/M;->t()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 299
    invoke-virtual {v9, v15}, Lc/e/a/b/g/f/M;->c(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 300
    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_58
    const/4 v2, 0x0

    .line 301
    :goto_40
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5c

    .line 302
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/a/b/g/f/M;

    .line 303
    invoke-virtual {v9}, Lc/e/a/b/g/f/M;->r()Z

    move-result v14

    if-eqz v14, :cond_59

    .line 304
    invoke-virtual {v9}, Lc/e/a/b/g/f/M;->q()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_41

    :cond_59
    const/4 v14, 0x0

    .line 305
    :goto_41
    invoke-interface {v8, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-eqz v14, :cond_5b

    .line 306
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lc/e/a/b/g/f/M;->c(I)J

    move-result-wide v19

    cmp-long v22, v17, v19

    if-gez v22, :cond_5a

    .line 308
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_5a
    invoke-virtual {v9}, Lc/e/a/b/g/f/M;->s()Ljava/util/List;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    invoke-virtual {v9}, Lc/e/a/b/g/f/nb;->k()Lc/e/a/b/g/f/nb$a;

    move-result-object v9

    .line 311
    check-cast v9, Lc/e/a/b/g/f/M$a;

    .line 312
    invoke-virtual {v9}, Lc/e/a/b/g/f/M$a;->j()Lc/e/a/b/g/f/M$a;

    .line 313
    invoke-virtual {v9, v15}, Lc/e/a/b/g/f/M$a;->a(Ljava/lang/Iterable;)Lc/e/a/b/g/f/M$a;

    .line 314
    invoke-virtual {v9}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v9

    check-cast v9, Lc/e/a/b/g/f/M;

    .line 315
    invoke-interface {v3, v2, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_5b
    move-object/from16 v21, v10

    const/4 v10, 0x0

    :goto_42
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, v21

    goto :goto_40

    :cond_5c
    move-object/from16 v21, v10

    const/4 v10, 0x0

    .line 316
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 317
    invoke-static {}, Lc/e/a/b/g/f/M;->w()Lc/e/a/b/g/f/M$a;

    move-result-object v14

    .line 318
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Lc/e/a/b/g/f/M$a;->a(I)Lc/e/a/b/g/f/M$a;

    .line 319
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    move-object/from16 v26, v11

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Lc/e/a/b/g/f/M$a;->a(J)Lc/e/a/b/g/f/M$a;

    .line 320
    invoke-virtual {v14}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v9

    check-cast v9, Lc/e/a/b/g/f/M;

    .line 321
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v26

    const/4 v10, 0x0

    goto :goto_43

    :cond_5d
    move-object/from16 v26, v11

    move-object v14, v3

    .line 322
    :goto_44
    invoke-virtual {v7, v14}, Lc/e/a/b/g/f/L$a;->d(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;

    goto :goto_45

    :cond_5e
    move-object/from16 p2, v3

    move-object/from16 v45, v9

    move-object/from16 v26, v11

    move-object/from16 v13, v43

    .line 323
    :goto_45
    invoke-virtual {v4, v7}, Lc/e/a/b/g/f/H$a;->a(Lc/e/a/b/g/f/L$a;)Lc/e/a/b/g/f/H$a;

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v3

    check-cast v3, Lc/e/a/b/g/f/H;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v5, 0x1

    .line 325
    invoke-virtual {v4}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v3

    check-cast v3, Lc/e/a/b/g/f/H;

    aput-object v3, v1, v5

    .line 326
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v3

    .line 327
    invoke-virtual {v4}, Lc/e/a/b/g/f/H$a;->j()Lc/e/a/b/g/f/L;

    move-result-object v4

    .line 328
    invoke-virtual {v3}, Lc/e/a/b/h/b/Sb;->s()V

    .line 329
    invoke-virtual {v3}, Lc/e/a/b/h/b/ua;->l()V

    .line 330
    invoke-static/range {p1 .. p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    invoke-static {v4}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {v4}, Lc/e/a/b/g/f/Ca;->g()[B

    move-result-object v4

    .line 333
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    move-object/from16 v8, p1

    .line 334
    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "audience_id"

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    .line 336
    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 337
    :try_start_3
    invoke-virtual {v3}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "audience_filter_values"
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v7, 0x5

    const/4 v9, 0x0

    .line 338
    :try_start_4
    invoke-virtual {v0, v4, v9, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-nez v0, :cond_5f

    .line 339
    invoke-virtual {v3}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    .line 341
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_47

    :catch_3
    move-exception v0

    goto :goto_46

    :catch_4
    move-exception v0

    const/4 v9, 0x0

    .line 342
    :goto_46
    invoke-virtual {v3}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 344
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error storing filter results. appId"

    invoke-virtual {v3, v5, v4, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    :goto_47
    move-object/from16 v3, p2

    move v5, v2

    move-object/from16 v43, v13

    move-object/from16 v11, v26

    move-object/from16 v2, p0

    move-object/from16 v26, v6

    goto/16 :goto_39

    :cond_60
    move-object/from16 v8, p1

    move-object/from16 v2, p0

    goto/16 :goto_39

    .line 345
    :cond_61
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/a/b/g/f/H;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
