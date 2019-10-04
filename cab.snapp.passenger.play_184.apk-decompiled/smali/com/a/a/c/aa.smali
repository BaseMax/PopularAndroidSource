.class final Lcom/a/a/c/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/aa$c;,
        Lcom/a/a/c/aa$b;,
        Lcom/a/a/c/aa$l;,
        Lcom/a/a/c/aa$g;,
        Lcom/a/a/c/aa$m;,
        Lcom/a/a/c/aa$f;,
        Lcom/a/a/c/aa$a;,
        Lcom/a/a/c/aa$h;,
        Lcom/a/a/c/aa$d;,
        Lcom/a/a/c/aa$e;,
        Lcom/a/a/c/aa$i;,
        Lcom/a/a/c/aa$k;,
        Lcom/a/a/c/aa$j;
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/c/a/a/e;

.field private static final b:[Lcom/a/a/c/aa$j;

.field private static final c:[Lcom/a/a/c/aa$m;

.field private static final d:[Lcom/a/a/c/aa$g;

.field private static final e:[Lcom/a/a/c/aa$b;

.field private static final f:[Lcom/a/a/c/aa$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/a/a/c/a/a/e;

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/a/a/c/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/a/a/c/aa;->a:Lcom/a/a/c/a/a/e;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/a/a/c/aa$j;

    .line 29
    sput-object v1, Lcom/a/a/c/aa;->b:[Lcom/a/a/c/aa$j;

    new-array v1, v0, [Lcom/a/a/c/aa$m;

    .line 30
    sput-object v1, Lcom/a/a/c/aa;->c:[Lcom/a/a/c/aa$m;

    new-array v1, v0, [Lcom/a/a/c/aa$g;

    .line 31
    sput-object v1, Lcom/a/a/c/aa;->d:[Lcom/a/a/c/aa$g;

    new-array v1, v0, [Lcom/a/a/c/aa$b;

    .line 32
    sput-object v1, Lcom/a/a/c/aa;->e:[Lcom/a/a/c/aa$b;

    new-array v0, v0, [Lcom/a/a/c/aa$c;

    .line 34
    sput-object v0, Lcom/a/a/c/aa;->f:[Lcom/a/a/c/aa$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Lcom/a/a/c/a/a/b;)Lcom/a/a/c/aa$k;
    .locals 4

    .line 601
    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/c/aa$c;

    const/4 v1, 0x0

    .line 604
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 605
    new-instance v2, Lcom/a/a/c/aa$c;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/c/aa$c;-><init>(Lcom/a/a/c/a/a/b;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_0
    new-instance p0, Lcom/a/a/c/aa$k;

    invoke-direct {p0, v0}, Lcom/a/a/c/aa$k;-><init>([Lcom/a/a/c/aa$j;)V

    return-object p0
.end method

.method private static a([Lcom/a/a/c/a/a/f$a;)Lcom/a/a/c/aa$k;
    .locals 4

    if-eqz p0, :cond_0

    .line 582
    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/c/aa$g;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/a/a/c/aa;->d:[Lcom/a/a/c/aa$g;

    :goto_0
    const/4 v1, 0x0

    .line 584
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 585
    new-instance v2, Lcom/a/a/c/aa$g;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/c/aa$g;-><init>(Lcom/a/a/c/a/a/f$a;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 587
    :cond_1
    new-instance p0, Lcom/a/a/c/aa$k;

    invoke-direct {p0, v0}, Lcom/a/a/c/aa$k;-><init>([Lcom/a/a/c/aa$j;)V

    return-object p0
.end method

.method static synthetic a()[Lcom/a/a/c/aa$j;
    .locals 1

    .line 19
    sget-object v0, Lcom/a/a/c/aa;->b:[Lcom/a/a/c/aa$j;

    return-object v0
.end method

.method public static writeNativeCrash(Lcom/a/a/c/a/a/d;Lcom/a/a/c/v;Ljava/util/Map;Lcom/a/a/c/e;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/a/a/d;",
            "Lcom/a/a/c/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/a/a/c/e;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1501
    iget-object v1, v0, Lcom/a/a/c/a/a/d;->signal:Lcom/a/a/c/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/a/a/c/a/a/d;->signal:Lcom/a/a/c/a/a/e;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/a/a/c/aa;->a:Lcom/a/a/c/a/a/e;

    .line 1503
    :goto_0
    new-instance v2, Lcom/a/a/c/aa$l;

    invoke-direct {v2, v1}, Lcom/a/a/c/aa$l;-><init>(Lcom/a/a/c/a/a/e;)V

    .line 1505
    iget-object v1, v0, Lcom/a/a/c/a/a/d;->threads:[Lcom/a/a/c/a/a/f;

    if-eqz v1, :cond_1

    .line 1571
    array-length v3, v1

    new-array v3, v3, [Lcom/a/a/c/aa$m;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/a/a/c/aa;->c:[Lcom/a/a/c/aa$m;

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1573
    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 1574
    aget-object v6, v1, v5

    .line 1575
    new-instance v7, Lcom/a/a/c/aa$m;

    iget-object v8, v6, Lcom/a/a/c/a/a/f;->frames:[Lcom/a/a/c/a/a/f$a;

    .line 1576
    invoke-static {v8}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/a/a/f$a;)Lcom/a/a/c/aa$k;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/a/a/c/aa$m;-><init>(Lcom/a/a/c/a/a/f;Lcom/a/a/c/aa$k;)V

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1578
    :cond_2
    new-instance v1, Lcom/a/a/c/aa$k;

    invoke-direct {v1, v3}, Lcom/a/a/c/aa$k;-><init>([Lcom/a/a/c/aa$j;)V

    .line 1506
    iget-object v3, v0, Lcom/a/a/c/a/a/d;->binaryImages:[Lcom/a/a/c/a/a/a;

    if-eqz v3, :cond_3

    .line 1591
    array-length v5, v3

    new-array v5, v5, [Lcom/a/a/c/aa$b;

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/a/a/c/aa;->e:[Lcom/a/a/c/aa$b;

    :goto_3
    const/4 v6, 0x0

    .line 1593
    :goto_4
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 1594
    new-instance v7, Lcom/a/a/c/aa$b;

    aget-object v8, v3, v6

    invoke-direct {v7, v8}, Lcom/a/a/c/aa$b;-><init>(Lcom/a/a/c/a/a/a;)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1596
    :cond_4
    new-instance v3, Lcom/a/a/c/aa$k;

    invoke-direct {v3, v5}, Lcom/a/a/c/aa$k;-><init>([Lcom/a/a/c/aa$j;)V

    .line 1509
    new-instance v5, Lcom/a/a/c/aa$f;

    invoke-direct {v5, v2, v1, v3}, Lcom/a/a/c/aa$f;-><init>(Lcom/a/a/c/aa$l;Lcom/a/a/c/aa$k;Lcom/a/a/c/aa$k;)V

    .line 1511
    iget-object v1, v0, Lcom/a/a/c/a/a/d;->customAttributes:[Lcom/a/a/c/a/a/b;

    .line 2538
    new-instance v2, Ljava/util/TreeMap;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    if-eqz v1, :cond_5

    .line 2540
    array-length v3, v1

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_5

    aget-object v7, v1, v6

    .line 2541
    iget-object v8, v7, Lcom/a/a/c/a/a/b;->key:Ljava/lang/String;

    iget-object v7, v7, Lcom/a/a/c/a/a/b;->value:Ljava/lang/String;

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2547
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 2548
    array-length v2, v1

    new-array v2, v2, [Lcom/a/a/c/a/a/b;

    const/4 v3, 0x0

    .line 2549
    :goto_6
    array-length v6, v2

    if-ge v3, v6, :cond_6

    .line 2550
    new-instance v6, Lcom/a/a/c/a/a/b;

    aget-object v7, v1, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v8, v1, v3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/a/a/c/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1512
    :cond_6
    invoke-static {v2}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/a/a/b;)Lcom/a/a/c/aa$k;

    move-result-object v1

    .line 1515
    new-instance v2, Lcom/a/a/c/aa$a;

    invoke-direct {v2, v5, v1}, Lcom/a/a/c/aa$a;-><init>(Lcom/a/a/c/aa$f;Lcom/a/a/c/aa$k;)V

    .line 1517
    iget-object v1, v0, Lcom/a/a/c/a/a/d;->deviceData:Lcom/a/a/c/a/a/c;

    if-nez v1, :cond_7

    .line 2558
    new-instance v1, Lcom/a/a/c/aa$i;

    invoke-direct {v1}, Lcom/a/a/c/aa$i;-><init>()V

    goto :goto_7

    .line 2560
    :cond_7
    new-instance v3, Lcom/a/a/c/aa$d;

    iget v5, v1, Lcom/a/a/c/a/a/c;->batteryCapacity:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v6, v5, v6

    iget v7, v1, Lcom/a/a/c/a/a/c;->batteryVelocity:I

    iget-boolean v8, v1, Lcom/a/a/c/a/a/c;->proximity:Z

    iget v9, v1, Lcom/a/a/c/a/a/c;->orientation:I

    iget-wide v10, v1, Lcom/a/a/c/a/a/c;->totalPhysicalMemory:J

    iget-wide v12, v1, Lcom/a/a/c/a/a/c;->availablePhysicalMemory:J

    sub-long/2addr v10, v12

    iget-wide v12, v1, Lcom/a/a/c/a/a/c;->totalInternalStorage:J

    iget-wide v14, v1, Lcom/a/a/c/a/a/c;->availableInternalStorage:J

    sub-long/2addr v12, v14

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/a/a/c/aa$d;-><init>(FIZIJJ)V

    move-object v1, v3

    .line 1519
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/a/a/c/v;->a()Lcom/a/a/c/b;

    move-result-object v3

    if-nez v3, :cond_8

    .line 1522
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    const-string v7, "No log data to include with this event."

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/a/a/c/v;->b()V

    if-eqz v3, :cond_9

    .line 1528
    new-instance v5, Lcom/a/a/c/aa$h;

    invoke-direct {v5, v3}, Lcom/a/a/c/aa$h;-><init>(Lcom/a/a/c/b;)V

    goto :goto_8

    :cond_9
    new-instance v5, Lcom/a/a/c/aa$i;

    invoke-direct {v5}, Lcom/a/a/c/aa$i;-><init>()V

    .line 1531
    :goto_8
    new-instance v3, Lcom/a/a/c/aa$e;

    iget-wide v6, v0, Lcom/a/a/c/a/a/d;->timestamp:J

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const-string v1, "ndk-crash"

    invoke-direct {v3, v6, v7, v1, v0}, Lcom/a/a/c/aa$e;-><init>(JLjava/lang/String;[Lcom/a/a/c/aa$j;)V

    move-object/from16 v0, p3

    .line 624
    invoke-virtual {v3, v0}, Lcom/a/a/c/aa$e;->write(Lcom/a/a/c/e;)V

    return-void
.end method
