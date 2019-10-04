.class public final Lcom/yandex/metrica/impl/ob/ka$c;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ka$c$f;,
        Lcom/yandex/metrica/impl/ob/ka$c$c;,
        Lcom/yandex/metrica/impl/ob/ka$c$a;,
        Lcom/yandex/metrica/impl/ob/ka$c$d;,
        Lcom/yandex/metrica/impl/ob/ka$c$e;,
        Lcom/yandex/metrica/impl/ob/ka$c$b;,
        Lcom/yandex/metrica/impl/ob/ka$c$g;
    }
.end annotation


# instance fields
.field public b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

.field public c:Lcom/yandex/metrica/impl/ob/ka$c$d;

.field public d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

.field public e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

.field public f:[Ljava/lang/String;

.field public g:[Lcom/yandex/metrica/impl/ob/ka$c$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2340
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 2341
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c;->d()Lcom/yandex/metrica/impl/ob/ka$c;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2358
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2359
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2360
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 2362
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2366
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->c:Lcom/yandex/metrica/impl/ob/ka$c$d;

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    .line 2367
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    .line 2369
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 2370
    :goto_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 2371
    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x7

    .line 2373
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2377
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 2378
    :goto_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 2379
    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/16 v3, 0x8

    .line 2381
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2385
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 2386
    :goto_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 2387
    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/16 v3, 0x9

    .line 2389
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2393
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    .line 2394
    :goto_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 2395
    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    const/16 v2, 0xa

    .line 2397
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2401
    :cond_a
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2469
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_17

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/16 v1, 0x22

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_d

    const/16 v1, 0x42

    if-eq v0, v1, :cond_9

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x52

    if-eq v0, v1, :cond_1

    .line 2474
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2565
    :cond_1
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 2566
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 2567
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$f;

    if-eqz v1, :cond_3

    .line 2570
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2572
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 2573
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$f;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$f;-><init>()V

    aput-object v2, v0, v1

    .line 2574
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2575
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2578
    :cond_4
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$f;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$f;-><init>()V

    aput-object v2, v0, v1

    .line 2579
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2580
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    goto :goto_0

    .line 2548
    :cond_5
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 2549
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 2550
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 2552
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2554
    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 2555
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2556
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2559
    :cond_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2560
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2528
    :cond_9
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 2529
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 2530
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$c;

    if-eqz v1, :cond_b

    .line 2533
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2535
    :cond_b
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 2536
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$c;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$c;-><init>()V

    aput-object v2, v0, v1

    .line 2537
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2538
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2541
    :cond_c
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$c;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$c;-><init>()V

    aput-object v2, v0, v1

    .line 2542
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2543
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    goto/16 :goto_0

    .line 2508
    :cond_d
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 2509
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_7

    :cond_e
    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    .line 2510
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$a;

    if-eqz v1, :cond_f

    .line 2513
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2515
    :cond_f
    :goto_8
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_10

    .line 2516
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$a;-><init>()V

    aput-object v2, v0, v1

    .line 2517
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2518
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2521
    :cond_10
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$a;-><init>()V

    aput-object v2, v0, v1

    .line 2522
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2523
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    goto/16 :goto_0

    .line 2500
    :cond_11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->c:Lcom/yandex/metrica/impl/ob/ka$c$d;

    if-nez v0, :cond_12

    .line 2501
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$d;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$d;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->c:Lcom/yandex/metrica/impl/ob/ka$c$d;

    .line 2503
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->c:Lcom/yandex/metrica/impl/ob/ka$c$d;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    goto/16 :goto_0

    .line 2481
    :cond_13
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 2482
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_9

    :cond_14
    array-length v1, v1

    :goto_9
    add-int/2addr v0, v1

    .line 2483
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$e;

    if-eqz v1, :cond_15

    .line 2486
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2488
    :cond_15
    :goto_a
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    .line 2489
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$e;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$e;-><init>()V

    aput-object v2, v0, v1

    .line 2490
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2491
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2494
    :cond_16
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$e;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$e;-><init>()V

    aput-object v2, v0, v1

    .line 2495
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 2496
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    goto/16 :goto_0

    :cond_17
    return-object p0
.end method

.method protected final c()I
    .locals 7

    .line 2406
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 2407
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 2408
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2409
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 2412
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2416
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->c:Lcom/yandex/metrica/impl/ob/ka$c$d;

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    .line 2418
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2420
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    const/4 v0, 0x0

    .line 2421
    :goto_1
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 2422
    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/4 v4, 0x7

    .line 2425
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2429
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    const/4 v0, 0x0

    .line 2430
    :goto_2
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    array-length v4, v3

    if-ge v0, v4, :cond_8

    .line 2431
    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    const/16 v4, 0x8

    .line 2434
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    .line 2438
    :cond_9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    if-eqz v1, :cond_c

    array-length v1, v1

    if-lez v1, :cond_c

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2441
    :goto_3
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_b

    .line 2442
    aget-object v5, v5, v1

    if-eqz v5, :cond_a

    add-int/lit8 v4, v4, 0x1

    .line 2446
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 2452
    :cond_c
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    if-eqz v1, :cond_e

    array-length v1, v1

    if-lez v1, :cond_e

    .line 2453
    :goto_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    array-length v3, v1

    if-ge v2, v3, :cond_e

    .line 2454
    aget-object v1, v1, v2

    if-eqz v1, :cond_d

    const/16 v3, 0xa

    .line 2457
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$c;
    .locals 1

    .line 2345
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$c$e;->d()[Lcom/yandex/metrica/impl/ob/ka$c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->b:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    const/4 v0, 0x0

    .line 2346
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->c:Lcom/yandex/metrica/impl/ob/ka$c$d;

    .line 2347
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$c$a;->d()[Lcom/yandex/metrica/impl/ob/ka$c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->d:[Lcom/yandex/metrica/impl/ob/ka$c$a;

    .line 2348
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$c$c;->d()[Lcom/yandex/metrica/impl/ob/ka$c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->e:[Lcom/yandex/metrica/impl/ob/ka$c$c;

    .line 2349
    sget-object v0, Lcom/yandex/metrica/impl/ob/g;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->f:[Ljava/lang/String;

    .line 2350
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$c$f;->d()[Lcom/yandex/metrica/impl/ob/ka$c$f;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    const/4 v0, -0x1

    .line 2351
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c;->a:I

    return-object p0
.end method
