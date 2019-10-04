.class public final Lcom/yandex/metrica/impl/ob/ka$c$e;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ka$c$e$a;,
        Lcom/yandex/metrica/impl/ob/ka$c$e$b;
    }
.end annotation


# static fields
.field private static volatile e:[Lcom/yandex/metrica/impl/ob/ka$c$e;


# instance fields
.field public b:J

.field public c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

.field public d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1473
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 1474
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$e;->e()Lcom/yandex/metrica/impl/ob/ka$c$e;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/ka$c$e;
    .locals 2

    .line 1453
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$c$e;->e:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    if-nez v0, :cond_1

    .line 1454
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1456
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->e:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$c$e;

    .line 1457
    sput-object v1, Lcom/yandex/metrica/impl/ob/ka$c$e;->e:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    .line 1459
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1461
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$c$e;->e:[Lcom/yandex/metrica/impl/ob/ka$c$e;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$e;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1488
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1489
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1490
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1493
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1494
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    .line 1496
    invoke-virtual {p1, v2, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1500
    :cond_2
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1529
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 1534
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1552
    :cond_1
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 1553
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 1554
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    if-eqz v1, :cond_3

    .line 1557
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1559
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 1560
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$e$a;-><init>()V

    aput-object v2, v0, v1

    .line 1561
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 1562
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1565
    :cond_4
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$e$a;-><init>()V

    aput-object v2, v0, v1

    .line 1566
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 1567
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    goto :goto_0

    .line 1544
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    if-nez v0, :cond_6

    .line 1545
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    .line 1547
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    goto :goto_0

    .line 1540
    :cond_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->b:J

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method protected final c()I
    .locals 4

    .line 1505
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 1506
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->b:J

    const/4 v3, 0x1

    .line 1507
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1508
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 1510
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1512
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 1513
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1514
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    .line 1517
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/ka$c$e;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1478
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->b:J

    const/4 v0, 0x0

    .line 1479
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->c:Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    .line 1480
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->d()[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->d:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    const/4 v0, -0x1

    .line 1481
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e;->a:I

    return-object p0
.end method
