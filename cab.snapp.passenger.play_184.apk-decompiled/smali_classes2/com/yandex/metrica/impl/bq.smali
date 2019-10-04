.class public Lcom/yandex/metrica/impl/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bq$a;,
        Lcom/yandex/metrica/impl/bq$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/bq$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 373
    new-instance v0, Lcom/yandex/metrica/impl/bq$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bq$1;-><init>()V

    .line 374
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/bq;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/a/c;)Lcom/yandex/metrica/impl/bq$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    const-string v0, "headers"

    .line 555
    invoke-virtual {p0, v0}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v0

    .line 556
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/a/c;->length()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    invoke-virtual {v0}, Lorg/a/c;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 558
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 560
    invoke-virtual {v0, v2}, Lorg/a/c;->getJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object v3

    const/4 v4, 0x0

    .line 561
    :goto_0
    invoke-virtual {v3}, Lorg/a/a;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 562
    new-instance v6, Landroid/util/Pair;

    .line 564
    invoke-virtual {v3, v4}, Lorg/a/a;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 569
    :cond_1
    new-instance v0, Lcom/yandex/metrica/impl/bq$a;

    const/4 v1, 0x0

    const-string v2, "id"

    .line 570
    invoke-virtual {p0, v2, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 571
    invoke-virtual {p0, v3, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "method"

    .line 572
    invoke-virtual {p0, v4, v1}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "delay_seconds"

    .line 574
    invoke-virtual {p0, v1}, Lorg/a/c;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 575
    invoke-static {p0}, Lcom/yandex/metrica/impl/bq;->b(Lorg/a/c;)Ljava/util/List;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/bq$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Lorg/a/c;Z)Lcom/yandex/metrica/impl/ob/kh$a$c;
    .locals 5

    .line 481
    new-instance v0, Lcom/yandex/metrica/impl/ob/kh$a$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kh$a$c;-><init>()V

    const-string v1, "min_update_interval_seconds"

    .line 484
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/ob/ne;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->b:J

    .line 483
    invoke-static {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->b:J

    const-string v1, "min_update_distance_meters"

    .line 489
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/ob/ne;->d(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iget v2, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->c:F

    .line 488
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Float;F)F

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->c:F

    const-string v1, "records_count_to_force_flush"

    .line 493
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/ob/ne;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->d:I

    .line 492
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Integer;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->d:I

    const-string v1, "max_records_count_in_batch"

    .line 497
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/ob/ne;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->e:I

    .line 496
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Integer;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->e:I

    const-string v1, "max_age_seconds_to_force_flush"

    .line 501
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/ob/ne;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->f:J

    .line 500
    invoke-static {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->f:J

    const-string v1, "max_records_to_store_locally"

    .line 506
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/ob/ne;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    iget v1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->g:I

    .line 505
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Integer;I)I

    move-result p0

    iput p0, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->g:I

    .line 509
    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/kh$a$c;->h:Z

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 794
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Date"

    .line 795
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 797
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 799
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 800
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 802
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 387
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/ne$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    const-string v0, "requests"

    .line 536
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    const-string v0, "list"

    .line 538
    invoke-virtual {p1, v0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    invoke-virtual {p1, v0}, Lorg/a/c;->getJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object p1

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/a/a;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 541
    :goto_0
    invoke-virtual {p1}, Lorg/a/a;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 543
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/a/a;->getJSONObject(I)Lorg/a/c;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;)Lcom/yandex/metrica/impl/bq$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 547
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bq$b;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/bq$b;Lorg/a/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 767
    invoke-virtual {p1}, Lorg/a/c;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 768
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 769
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 770
    invoke-virtual {p1, v2}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "value"

    .line 772
    invoke-virtual {v3, v4}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 773
    invoke-virtual {v3, v4}, Lorg/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 776
    :cond_1
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/no;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bq$b;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    .line 746
    invoke-static {p0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 750
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lorg/a/c;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 677
    invoke-virtual {p0, p1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0, p1}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p0

    const-string p1, "enabled"

    .line 679
    invoke-virtual {p0, p1, p2}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 395
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p0

    const-string p1, "urls"

    invoke-virtual {p0, p1}, Lorg/a/c;->getJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/a/a;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static b(Lorg/a/c;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "accept_network_types"

    .line 582
    invoke-virtual {p0, v1}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    invoke-virtual {p0, v1}, Lorg/a/c;->getJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object p0

    const/4 v1, 0x0

    .line 584
    :goto_0
    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 585
    sget-object v2, Lcom/yandex/metrica/impl/bq;->a:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lorg/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/ne$a;)V
    .locals 6

    const-string v0, "socket"

    .line 685
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "seconds_to_live"

    .line 687
    invoke-virtual {p1, v0}, Lorg/a/c;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "token"

    .line 688
    invoke-virtual {p1, v2}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ports"

    .line 689
    invoke-virtual {p1, v3}, Lorg/a/c;->optJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object p1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    .line 690
    invoke-static {v2}, Lcom/yandex/metrica/impl/bq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/a/a;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 691
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/a/a;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 692
    :goto_0
    invoke-virtual {p1}, Lorg/a/a;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 693
    invoke-virtual {p1, v4}, Lorg/a/a;->optInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 698
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 699
    new-instance p1, Lcom/yandex/metrica/impl/ob/lr;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/lr;-><init>(JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bq$b;->a(Lcom/yandex/metrica/impl/ob/lr;)V

    :cond_2
    return-void
.end method

.method private static c(Lorg/a/c;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 405
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p0

    const-string p1, "urls"

    invoke-virtual {p0, p1}, Lorg/a/c;->getJSONArray(Ljava/lang/String;)Lorg/a/a;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1296
    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 1297
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1298
    :goto_0
    invoke-virtual {p0}, Lorg/a/a;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1299
    invoke-virtual {p0, v1}, Lorg/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/yandex/metrica/impl/bq$b;
    .locals 9

    const-string v0, "list"

    .line 414
    new-instance v1, Lcom/yandex/metrica/impl/bq$b;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/bq$b;-><init>()V

    .line 417
    :try_start_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/ne$a;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/ne$a;-><init>(Ljava/lang/String;)V

    const-string p1, "device_id"

    .line 1462
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/ne$a;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "value"

    const-string v4, ""

    if-eqz p1, :cond_0

    :try_start_1
    const-string v5, "hash"

    .line 1464
    invoke-virtual {p1, v5}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1465
    invoke-virtual {p1, v3}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    move-object v5, p1

    .line 1467
    :goto_0
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->c(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->d(Ljava/lang/String;)V

    const-string p1, "uuid"

    .line 424
    invoke-static {v2, p1}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->e(Ljava/lang/String;)V

    const-string p1, "query_hosts"

    .line 1709
    new-instance v5, Lorg/a/c;

    invoke-direct {v5}, Lorg/a/c;-><init>()V

    invoke-virtual {v2, p1, v5}, Lcom/yandex/metrica/impl/ob/ne$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/c;

    .line 1710
    invoke-virtual {p1, v0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1711
    invoke-virtual {p1, v0}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    const-string v5, "get_ad"

    .line 1713
    invoke-static {p1, v5}, Lcom/yandex/metrica/impl/bq;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1714
    invoke-static {v5}, Lcom/yandex/metrica/impl/bq;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1715
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->a(Ljava/lang/String;)V

    :cond_1
    const-string v5, "report"

    .line 1718
    invoke-static {p1, v5}, Lcom/yandex/metrica/impl/bq;->c(Lorg/a/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1719
    invoke-static {v5}, Lcom/yandex/metrica/impl/bq;->a(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1720
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->b(Ljava/util/List;)V

    :cond_2
    const-string v5, "report_ad"

    .line 1723
    invoke-static {p1, v5}, Lcom/yandex/metrica/impl/bq;->b(Lorg/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1724
    invoke-static {v5}, Lcom/yandex/metrica/impl/bq;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1725
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->b(Ljava/lang/String;)V

    :cond_3
    const-string v5, "location"

    .line 1728
    invoke-static {p1, v5}, Lcom/yandex/metrica/impl/bq;->c(Lorg/a/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1729
    invoke-static {v5}, Lcom/yandex/metrica/impl/bq;->a(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1730
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->c(Ljava/util/List;)V

    :cond_4
    const-string v5, "startup"

    .line 1733
    invoke-static {p1, v5}, Lcom/yandex/metrica/impl/bq;->c(Lorg/a/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1734
    invoke-static {v5}, Lcom/yandex/metrica/impl/bq;->a(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1735
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->a(Ljava/util/List;)V

    :cond_5
    const-string v5, "diagnostic"

    .line 1738
    invoke-static {p1, v5}, Lcom/yandex/metrica/impl/bq;->c(Lorg/a/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1739
    invoke-static {p1}, Lcom/yandex/metrica/impl/bq;->a(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1740
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->e(Ljava/util/List;)V

    :cond_6
    const-string p1, "distribution_customization"

    .line 1755
    new-instance v5, Lorg/a/c;

    invoke-direct {v5}, Lorg/a/c;-><init>()V

    .line 1756
    invoke-virtual {v2, p1, v5}, Lcom/yandex/metrica/impl/ob/ne$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/c;

    const-string v5, "clids"

    .line 1758
    invoke-virtual {p1, v5}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1760
    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/bq;->a(Lcom/yandex/metrica/impl/bq$b;Lorg/a/c;)V

    :cond_7
    const-string p1, "features"

    .line 2593
    new-instance v5, Lorg/a/c;

    invoke-direct {v5}, Lorg/a/c;-><init>()V

    invoke-virtual {v2, p1, v5}, Lcom/yandex/metrica/impl/ob/ne$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/c;

    const/4 v5, 0x0

    .line 2594
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->a(Z)V

    .line 2595
    invoke-virtual {v1, v5}, Lcom/yandex/metrica/impl/bq$b;->b(Z)V

    .line 2596
    invoke-virtual {p1, v0}, Lorg/a/c;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "background_location_collection"

    const-string v8, "foreground_location_collection"

    if-eqz v6, :cond_8

    .line 2597
    :try_start_2
    invoke-virtual {p1, v0}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    const-string v0, "easy_collecting"

    .line 2599
    invoke-static {p1, v0, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bq$b;->a(Z)V

    const-string v0, "package_info"

    .line 2602
    invoke-static {p1, v0, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bq$b;->b(Z)V

    const-string v0, "socket"

    .line 2605
    invoke-static {p1, v0, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bq$b;->e(Z)V

    const-string v0, "permissions_collecting"

    .line 2607
    invoke-static {p1, v0, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bq$b;->f(Z)V

    const-string v0, "features_collecting"

    .line 2610
    invoke-static {p1, v0, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bq$b;->g(Z)V

    .line 2613
    invoke-static {p1, v8, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bq$b;->c(Z)V

    .line 2616
    invoke-static {p1, v7, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bq$b;->d(Z)V

    const-string v0, "telephony_restricted_to_location_tracking"

    .line 2619
    invoke-static {p1, v0, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    .line 2622
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bq$b;->b()Lcom/yandex/metrica/impl/ob/lp$a;

    move-result-object v0

    const-string v6, "android_id"

    .line 2660
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->e(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "google_aid"

    .line 2661
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->f(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "wifi_around"

    .line 2663
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    .line 2662
    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->h(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "wifi_connected"

    .line 2665
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    .line 2664
    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->i(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "own_macs"

    .line 2666
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->j(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "cells_around"

    .line 2668
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    .line 2667
    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->k(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "sim_info"

    .line 2669
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->l(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "sim_imei"

    .line 2670
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/lp$a;->m(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    const-string v6, "access_point"

    .line 2672
    invoke-static {p1, v6, v5}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Ljava/lang/String;Z)Z

    move-result p1

    .line 2671
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lp$a;->n(Z)Lcom/yandex/metrica/impl/ob/lp$a;

    :cond_8
    const-string p1, "locale"

    .line 3629
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/ne$a;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "country"

    .line 3633
    invoke-virtual {p1, v0}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "reliable"

    .line 3636
    invoke-virtual {p1, v0, v5}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3637
    invoke-virtual {p1, v3, v4}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3641
    :cond_9
    invoke-virtual {v1, v4}, Lcom/yandex/metrica/impl/bq$b;->g(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bq$b;->m()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 431
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bq;->b(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/ne$a;)V

    .line 435
    :cond_a
    invoke-virtual {v2, v8}, Lcom/yandex/metrica/impl/ob/ne$a;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    .line 436
    invoke-static {v1}, Lcom/yandex/metrica/impl/bq$b;->a(Lcom/yandex/metrica/impl/bq$b;)Z

    move-result v0

    .line 4474
    new-instance v3, Lcom/yandex/metrica/impl/ob/gt;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/gt;-><init>()V

    .line 4475
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Z)Lcom/yandex/metrica/impl/ob/kh$a$c;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/gt;->a(Lcom/yandex/metrica/impl/ob/kh$a$c;)Lcom/yandex/metrica/impl/ob/hq;

    move-result-object p1

    .line 434
    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/hq;

    .line 439
    invoke-virtual {v2, v7}, Lcom/yandex/metrica/impl/ob/ne$a;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    .line 440
    invoke-static {v1}, Lcom/yandex/metrica/impl/bq$b;->b(Lcom/yandex/metrica/impl/bq$b;)Z

    move-result v0

    .line 4516
    new-instance v3, Lcom/yandex/metrica/impl/ob/kh$a$a;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/kh$a$a;-><init>()V

    .line 4518
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bq;->a(Lorg/a/c;Z)Lcom/yandex/metrica/impl/ob/kh$a$c;

    move-result-object v0

    iput-object v0, v3, Lcom/yandex/metrica/impl/ob/kh$a$a;->b:Lcom/yandex/metrica/impl/ob/kh$a$c;

    const-string v0, "collection_duration_seconds"

    .line 4521
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/ne;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, v3, Lcom/yandex/metrica/impl/ob/kh$a$a;->c:J

    .line 4520
    invoke-static {v0, v4, v5, v6}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/yandex/metrica/impl/ob/kh$a$a;->c:J

    const-string v0, "collection_interval_seconds"

    .line 4527
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/ne;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v3, Lcom/yandex/metrica/impl/ob/kh$a$a;->d:J

    .line 4526
    invoke-static {p1, v0, v4, v5}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/yandex/metrica/impl/ob/kh$a$a;->d:J

    .line 4531
    new-instance p1, Lcom/yandex/metrica/impl/ob/gq;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/gq;-><init>()V

    invoke-virtual {p1, v3}, Lcom/yandex/metrica/impl/ob/gq;->a(Lcom/yandex/metrica/impl/ob/kh$a$a;)Lcom/yandex/metrica/impl/ob/hl;

    move-result-object p1

    .line 438
    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/hl;

    const-string p1, "time"

    .line 4780
    invoke-virtual {v2, p1}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p1, :cond_b

    :try_start_3
    const-string v0, "max_valid_difference_seconds"

    .line 4783
    invoke-virtual {p1, v0}, Lorg/a/c;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4784
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->a(Ljava/lang/Long;)V
    :try_end_3
    .catch Lorg/a/b; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 445
    :catch_0
    :cond_b
    :try_start_4
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bq;->a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/ne$a;)V

    .line 5646
    new-instance p1, Lcom/yandex/metrica/impl/ob/kh$a$f;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/kh$a$f;-><init>()V

    const-string v0, "stat_sending"

    .line 5647
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/ne$a;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v2, "disabled_reporting_interval_seconds"

    .line 5650
    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/ne;->a(Lorg/a/c;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p1, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    .line 5649
    invoke-static {v0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    .line 5655
    :cond_c
    new-instance v0, Lcom/yandex/metrica/impl/ob/gy;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/gy;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gy;->a(Lcom/yandex/metrica/impl/ob/kh$a$f;)Lcom/yandex/metrica/impl/ob/mc;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->a(Lcom/yandex/metrica/impl/ob/mc;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 453
    sget-object p1, Lcom/yandex/metrica/impl/bq$b$a;->b:Lcom/yandex/metrica/impl/bq$b$a;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/bq$b;->a(Lcom/yandex/metrica/impl/bq$b$a;)V

    return-object v1

    .line 449
    :catch_1
    new-instance p1, Lcom/yandex/metrica/impl/bq$b;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/bq$b;-><init>()V

    .line 450
    sget-object v0, Lcom/yandex/metrica/impl/bq$b$a;->a:Lcom/yandex/metrica/impl/bq$b$a;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/bq$b;->a(Lcom/yandex/metrica/impl/bq$b$a;)V

    return-object p1
.end method
