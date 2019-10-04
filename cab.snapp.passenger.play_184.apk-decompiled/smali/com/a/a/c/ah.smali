.class final Lcom/a/a/c/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/a/a/c/b;

.field private static final b:Lcom/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    .line 23
    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/ah;->a:Lcom/a/a/c/b;

    const-string v0, "Unity"

    .line 25
    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    sput-object v0, Lcom/a/a/c/ah;->b:Lcom/a/a/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 4

    .line 650
    sget-object v0, Lcom/a/a/c/ah;->a:Lcom/a/a/c/b;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 651
    sget-object v1, Lcom/a/a/c/ah;->a:Lcom/a/a/c/b;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    .line 652
    invoke-static {v1, v2, v3}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/a/a/c/ak;II)I
    .locals 9

    .line 607
    iget-object v0, p0, Lcom/a/a/c/ak;->className:Ljava/lang/String;

    .line 608
    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x1

    .line 607
    invoke-static {v1, v0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    .line 611
    iget-object v3, p0, Lcom/a/a/c/ak;->localizedMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 613
    invoke-static {v3}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v3

    add-int/2addr v0, v3

    .line 616
    :cond_0
    iget-object v3, p0, Lcom/a/a/c/ak;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v4, v3

    move v5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v6, v3, v0

    .line 617
    invoke-static {v6, v1}, Lcom/a/a/c/ah;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v6

    const/4 v7, 0x4

    .line 618
    invoke-static {v7}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v7

    .line 619
    invoke-static {v6}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_1
    iget-object p0, p0, Lcom/a/a/c/ak;->cause:Lcom/a/a/c/ak;

    if-eqz p0, :cond_4

    if-ge p1, p2, :cond_2

    add-int/2addr p1, v1

    .line 627
    invoke-static {p0, p1, p2}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/ak;II)I

    move-result p0

    const/4 p1, 0x6

    .line 629
    invoke-static {p1}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p1

    .line 630
    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v5, p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 636
    iget-object p0, p0, Lcom/a/a/c/ak;->cause:Lcom/a/a/c/ak;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x7

    .line 640
    invoke-static {p0, v2}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v5, p0

    :cond_4
    :goto_2
    return v5
.end method

.method private static a(Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lcom/a/a/c/b;Lcom/a/a/c/b;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/ak;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Lcom/a/a/c/b;",
            "Lcom/a/a/c/b;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 545
    invoke-static {p1, p2, v1, v0}, Lcom/a/a/c/ah;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result p1

    .line 546
    invoke-static {v0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p2

    .line 547
    invoke-static {p1}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    const/4 p1, 0x0

    add-int/2addr p2, p1

    .line 549
    array-length v1, p3

    move v2, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_0

    .line 551
    aget-object v3, p3, p2

    .line 552
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-static {v3, v4, p1, p1}, Lcom/a/a/c/ah;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v3

    .line 553
    invoke-static {v0}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v4

    .line 554
    invoke-static {v3}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 557
    invoke-static {p0, v0, p1}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/ak;II)I

    move-result p0

    const/4 p1, 0x2

    .line 559
    invoke-static {p1}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p1

    .line 560
    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v2, p1

    .line 562
    invoke-static {}, Lcom/a/a/c/ah;->a()I

    move-result p0

    const/4 p1, 0x3

    .line 563
    invoke-static {p1}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p2

    .line 564
    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, p0

    add-int/2addr v2, p2

    .line 566
    invoke-static {p5, p6}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/b;Lcom/a/a/c/b;)I

    move-result p0

    .line 567
    invoke-static {p1}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p1

    .line 568
    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v2, p1

    return v2
.end method

.method private static a(Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lcom/a/a/c/b;Lcom/a/a/c/b;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/ak;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Lcom/a/a/c/b;",
            "Lcom/a/a/c/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)I"
        }
    .end annotation

    .line 513
    invoke-static/range {p0 .. p6}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lcom/a/a/c/b;Lcom/a/a/c/b;)I

    move-result p0

    const/4 p1, 0x1

    .line 516
    invoke-static {p1}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p2

    .line 517
    invoke-static {p0}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, p0

    const/4 p0, 0x0

    add-int/2addr p2, p0

    if-eqz p7, :cond_0

    .line 520
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 522
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 521
    invoke-static {p5, p4}, Lcom/a/a/c/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x2

    .line 523
    invoke-static {p5}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result p5

    .line 524
    invoke-static {p4}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result p6

    add-int/2addr p5, p6

    add-int/2addr p5, p4

    add-int/2addr p2, p5

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_2

    const/4 p3, 0x3

    .line 530
    iget p4, p8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p5, 0x64

    if-eq p4, p5, :cond_1

    const/4 p0, 0x1

    :cond_1
    invoke-static {p3, p0}, Lcom/a/a/c/e;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr p2, p0

    :cond_2
    const/4 p0, 0x4

    .line 534
    invoke-static {p0, p9}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method private static a(Lcom/a/a/c/b;Lcom/a/a/c/b;)I
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 463
    invoke-static {v2, v0, v1}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const/4 v3, 0x2

    .line 464
    invoke-static {v3, v0, v1}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    const/4 v0, 0x3

    .line 465
    invoke-static {v0, p0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result p0

    add-int/2addr v2, p0

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    .line 467
    invoke-static {p0, p1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result p0

    add-int/2addr v2, p0

    :cond_0
    return v2
.end method

.method private static a(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I
    .locals 1

    .line 426
    iget p0, p0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/a/a/c/e;->computeEnumSize(II)I

    move-result p0

    .line 427
    invoke-static {p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static a(Ljava/lang/Float;IZIJJ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 585
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {v1, p0}, Lcom/a/a/c/e;->computeFloatSize(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    const/4 p0, 0x2

    .line 587
    invoke-static {p0, p1}, Lcom/a/a/c/e;->computeSInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 588
    invoke-static {p0, p2}, Lcom/a/a/c/e;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x4

    .line 589
    invoke-static {p0, p3}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x5

    .line 590
    invoke-static {p0, p4, p5}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x6

    .line 591
    invoke-static {p0, p6, p7}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static a(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    .line 660
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 664
    invoke-static {v1, v3, v4}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v3, 0x2

    .line 667
    invoke-static {v3, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 672
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v4

    .line 671
    invoke-static {v1, v4}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 675
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x4

    .line 677
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v1, v4, v5}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    const/4 p0, 0x5

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    .line 679
    :cond_3
    invoke-static {p0, v2}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 574
    invoke-static {p0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result p0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 576
    :cond_0
    invoke-static {p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p1

    const/4 v0, 0x2

    .line 575
    invoke-static {v0, p1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 4

    .line 686
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result p0

    const/4 v0, 0x2

    .line 687
    invoke-static {v0, p2}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result p2

    add-int/2addr p0, p2

    .line 689
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 690
    invoke-static {v1, p3}, Lcom/a/a/c/ah;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v1

    const/4 v2, 0x3

    .line 691
    invoke-static {v2}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v2

    .line 692
    invoke-static {v1}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private static a(Ljava/lang/String;)Lcom/a/a/c/b;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 699
    :cond_0
    invoke-static {p0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/a/a/c/e;ILjava/lang/StackTraceElement;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 330
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 331
    invoke-static {p2, p3}, Lcom/a/a/c/ah;->a(Ljava/lang/StackTraceElement;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 333
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p0, v2, v3, v4}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 338
    invoke-virtual {p0, v2, v3, v4}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 341
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p1

    .line 341
    invoke-virtual {p0, v0, p1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 344
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 345
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 350
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    if-lez p1, :cond_2

    .line 351
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    :cond_2
    const/4 p1, 0x5

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 357
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/a/a/c/e;->writeUInt32(II)V

    return-void
.end method

.method private static a(Lcom/a/a/c/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p0, v1, v0}, Lcom/a/a/c/e;->writeTag(II)V

    .line 318
    invoke-static {p1, p2, p3, p4}, Lcom/a/a/c/ah;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v2

    .line 319
    invoke-virtual {p0, v2}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 321
    invoke-virtual {p0, v0, p3}, Lcom/a/a/c/e;->writeUInt32(II)V

    .line 323
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p2, p3

    const/4 v1, 0x3

    .line 324
    invoke-static {p0, v1, v0, p4}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/e;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeBeginSession(Lcom/a/a/c/e;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-static {p2}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 32
    invoke-static {p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    const/4 p1, 0x3

    .line 33
    invoke-virtual {p0, p1, p3, p4}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    return-void
.end method

.method public static writeSessionApp(Lcom/a/a/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v2

    .line 40
    invoke-static/range {p2 .. p2}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v3

    .line 41
    invoke-static/range {p3 .. p3}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v4

    .line 42
    invoke-static/range {p4 .. p4}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v5

    .line 43
    invoke-static/range {p5 .. p5}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v6

    if-eqz p7, :cond_0

    .line 45
    invoke-static/range {p7 .. p7}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x7

    const/4 v9, 0x2

    .line 48
    invoke-virtual {v0, v8, v9}, Lcom/a/a/c/e;->writeTag(II)V

    const/4 v8, 0x1

    .line 1390
    invoke-static {v8, v2}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v10

    add-int/lit8 v10, v10, 0x0

    .line 1391
    invoke-static {v9, v4}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x3

    .line 1392
    invoke-static {v11, v5}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v12

    add-int/2addr v10, v12

    .line 1410
    invoke-static {v8, v3}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v12

    add-int/lit8 v12, v12, 0x0

    const/4 v13, 0x5

    .line 1394
    invoke-static {v13}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v14

    .line 1395
    invoke-static {v12}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v12

    add-int/2addr v10, v14

    const/4 v12, 0x6

    .line 1396
    invoke-static {v12, v6}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v14

    add-int/2addr v10, v14

    const/16 v14, 0x9

    const/16 v15, 0x8

    if-eqz v7, :cond_1

    .line 1399
    sget-object v12, Lcom/a/a/c/ah;->b:Lcom/a/a/c/b;

    invoke-static {v15, v12}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v12

    add-int/2addr v10, v12

    .line 1400
    invoke-static {v14, v7}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v12

    add-int/2addr v10, v12

    :cond_1
    const/16 v12, 0xa

    .line 1403
    invoke-static {v12, v1}, Lcom/a/a/c/e;->computeEnumSize(II)I

    move-result v16

    add-int v10, v10, v16

    .line 49
    invoke-virtual {v0, v10}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 51
    invoke-virtual {v0, v8, v2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 52
    invoke-virtual {v0, v9, v4}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 53
    invoke-virtual {v0, v11, v5}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 56
    invoke-virtual {v0, v13, v9}, Lcom/a/a/c/e;->writeTag(II)V

    .line 2410
    invoke-static {v8, v3}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    .line 57
    invoke-virtual {v0, v2}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 58
    invoke-virtual {v0, v8, v3}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    const/4 v2, 0x6

    .line 61
    invoke-virtual {v0, v2, v6}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    if-eqz v7, :cond_2

    .line 64
    sget-object v2, Lcom/a/a/c/ah;->b:Lcom/a/a/c/b;

    invoke-virtual {v0, v15, v2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 65
    invoke-virtual {v0, v14, v7}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 68
    :cond_2
    invoke-virtual {v0, v12, v1}, Lcom/a/a/c/e;->writeEnum(II)V

    return-void
.end method

.method public static writeSessionDevice(Lcom/a/a/c/e;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/e;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IJJZ",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move/from16 v7, p9

    move/from16 v8, p11

    .line 87
    invoke-static/range {p1 .. p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v9

    .line 88
    invoke-static/range {p3 .. p3}, Lcom/a/a/c/ah;->a(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v10

    .line 89
    invoke-static/range {p13 .. p13}, Lcom/a/a/c/ah;->a(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v11

    .line 90
    invoke-static/range {p12 .. p12}, Lcom/a/a/c/ah;->a(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v12

    const/4 v13, 0x2

    const/16 v14, 0x9

    .line 92
    invoke-virtual {v0, v14, v13}, Lcom/a/a/c/e;->writeTag(II)V

    const/4 v14, 0x1

    .line 2438
    invoke-static {v14, v9}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v15

    const/16 v16, 0x0

    add-int/lit8 v15, v15, 0x0

    const/4 v13, 0x3

    .line 2439
    invoke-static {v13, v1}, Lcom/a/a/c/e;->computeEnumSize(II)I

    move-result v17

    add-int v15, v15, v17

    const/4 v13, 0x4

    if-nez v10, :cond_0

    const/16 v17, 0x0

    goto :goto_0

    .line 2440
    :cond_0
    invoke-static {v13, v10}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v17

    :goto_0
    add-int v15, v15, v17

    const/4 v13, 0x5

    .line 2441
    invoke-static {v13, v2}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result v17

    add-int v15, v15, v17

    const/4 v13, 0x6

    .line 2442
    invoke-static {v13, v3, v4}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v17

    add-int v15, v15, v17

    const/4 v13, 0x7

    .line 2443
    invoke-static {v13, v5, v6}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v18

    add-int v15, v15, v18

    const/16 v13, 0xa

    .line 2444
    invoke-static {v13, v7}, Lcom/a/a/c/e;->computeBoolSize(IZ)I

    move-result v19

    add-int v15, v15, v19

    const/16 v13, 0xb

    if-eqz p10, :cond_1

    .line 2446
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 2447
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v14, v22

    check-cast v14, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, Ljava/lang/String;

    invoke-static {v14, v7}, Lcom/a/a/c/ah;->a(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v7

    .line 2448
    invoke-static {v13}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v14

    .line 2449
    invoke-static {v7}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v21

    add-int v14, v14, v21

    add-int/2addr v14, v7

    add-int/2addr v15, v14

    move/from16 v7, p9

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0xc

    .line 2452
    invoke-static {v7, v8}, Lcom/a/a/c/e;->computeUInt32Size(II)I

    move-result v14

    add-int/2addr v15, v14

    const/16 v14, 0xd

    if-nez v12, :cond_2

    const/16 v20, 0x0

    goto :goto_2

    .line 2453
    :cond_2
    invoke-static {v14, v12}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v20

    :goto_2
    add-int v15, v15, v20

    const/16 v14, 0xe

    if-nez v11, :cond_3

    goto :goto_3

    .line 2454
    :cond_3
    invoke-static {v14, v11}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v16

    :goto_3
    add-int v15, v15, v16

    .line 94
    invoke-virtual {v0, v15}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    const/4 v15, 0x1

    .line 98
    invoke-virtual {v0, v15, v9}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    const/4 v9, 0x3

    .line 100
    invoke-virtual {v0, v9, v1}, Lcom/a/a/c/e;->writeEnum(II)V

    const/4 v1, 0x4

    .line 101
    invoke-virtual {v0, v1, v10}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    const/4 v1, 0x5

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/a/a/c/e;->writeUInt32(II)V

    const/4 v1, 0x6

    .line 103
    invoke-virtual {v0, v1, v3, v4}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    const/4 v1, 0x7

    .line 104
    invoke-virtual {v0, v1, v5, v6}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    move/from16 v1, p9

    const/16 v2, 0xa

    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/a/a/c/e;->writeBool(IZ)V

    .line 107
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x2

    .line 108
    invoke-virtual {v0, v13, v3}, Lcom/a/a/c/e;->writeTag(II)V

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/a/a/c/ah;->a(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    iget v3, v3, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/a/a/c/e;->writeEnum(II)V

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    goto :goto_4

    .line 114
    :cond_4
    invoke-virtual {v0, v7, v8}, Lcom/a/a/c/e;->writeUInt32(II)V

    if-eqz v12, :cond_5

    const/16 v1, 0xd

    .line 117
    invoke-virtual {v0, v1, v12}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    :cond_5
    if-eqz v11, :cond_6

    .line 120
    invoke-virtual {v0, v14, v11}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    :cond_6
    return-void
.end method

.method public static writeSessionEvent(Lcom/a/a/c/e;JLjava/lang/String;Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/a/a/c/v;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/e;",
            "J",
            "Ljava/lang/String;",
            "Lcom/a/a/c/ak;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/a/a/c/v;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "IZJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v13, p7

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v3, p14

    .line 160
    invoke-static/range {p13 .. p13}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v12

    const-string v11, ""

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "-"

    .line 162
    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v3

    :goto_0
    move-object v10, v3

    .line 164
    invoke-virtual/range {p10 .. p10}, Lcom/a/a/c/v;->a()Lcom/a/a/c/b;

    move-result-object v9

    if-nez v9, :cond_1

    .line 167
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "No log data to include with this event."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    invoke-virtual/range {p10 .. p10}, Lcom/a/a/c/v;->b()V

    const/16 v3, 0xa

    const/4 v8, 0x2

    .line 180
    invoke-virtual {v0, v3, v8}, Lcom/a/a/c/e;->writeTag(II)V

    const/4 v7, 0x1

    .line 2484
    invoke-static {v7, v1, v2}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v3

    const/4 v6, 0x0

    add-int/2addr v3, v6

    .line 2485
    invoke-static/range {p3 .. p3}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v4

    add-int v16, v3, v4

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const/4 v15, 0x0

    move-object/from16 v6, p7

    const/4 v15, 0x1

    move-object/from16 v7, p8

    move-object v8, v12

    move-object v15, v9

    move-object v9, v10

    move-object/from16 p14, v10

    move-object/from16 v10, p9

    move-object/from16 v17, v11

    move-object/from16 v11, p11

    move-object/from16 v18, v12

    move/from16 v12, p12

    .line 2486
    invoke-static/range {v3 .. v12}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lcom/a/a/c/b;Lcom/a/a/c/b;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v3

    const/4 v11, 0x3

    .line 2489
    invoke-static {v11}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v4

    .line 2490
    invoke-static {v3}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int v16, v16, v4

    move-object/from16 v3, p15

    move/from16 v4, p16

    move/from16 v5, p17

    move/from16 v6, p12

    move-wide/from16 v7, p18

    move-wide/from16 v9, p20

    .line 2491
    invoke-static/range {v3 .. v10}, Lcom/a/a/c/ah;->a(Ljava/lang/Float;IZIJJ)I

    move-result v3

    const/4 v12, 0x5

    .line 2493
    invoke-static {v12}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v4

    .line 2494
    invoke-static {v3}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int v16, v16, v4

    const/4 v10, 0x6

    const/4 v3, 0x1

    if-eqz v15, :cond_2

    .line 2600
    invoke-static {v3, v15}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v4

    .line 2498
    invoke-static {v10}, Lcom/a/a/c/e;->computeTagSize(I)I

    move-result v5

    .line 2499
    invoke-static {v4}, Lcom/a/a/c/e;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    add-int v16, v16, v5

    :cond_2
    move/from16 v4, v16

    .line 181
    invoke-virtual {v0, v4}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 186
    invoke-virtual {v0, v3, v1, v2}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 187
    invoke-static/range {p3 .. p3}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 3204
    invoke-virtual {v0, v11, v9}, Lcom/a/a/c/e;->writeTag(II)V

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, v18

    move-object/from16 v7, p14

    move-object/from16 v8, p9

    const/4 v12, 0x2

    move-object/from16 v9, p11

    move/from16 v10, p12

    .line 3205
    invoke-static/range {v1 .. v10}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lcom/a/a/c/b;Lcom/a/a/c/b;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    const/4 v8, 0x1

    .line 3232
    invoke-virtual {v0, v8, v12}, Lcom/a/a/c/e;->writeTag(II)V

    move-object/from16 v1, p4

    .line 3233
    invoke-static/range {v1 .. v7}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/ak;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lcom/a/a/c/b;Lcom/a/a/c/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    const/4 v1, 0x4

    .line 3237
    invoke-static {v0, v2, v3, v1, v8}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 3241
    array-length v2, v13

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 3243
    aget-object v4, v13, v3

    move-object/from16 v5, p8

    .line 3244
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    const/4 v7, 0x0

    invoke-static {v0, v4, v6, v7, v7}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/e;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move-object/from16 v3, p4

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 3282
    :goto_2
    invoke-virtual {v0, v2, v12}, Lcom/a/a/c/e;->writeTag(II)V

    const/16 v2, 0x8

    const/4 v5, 0x1

    .line 3284
    invoke-static {v3, v5, v2}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/ak;II)I

    move-result v6

    .line 3283
    invoke-virtual {v0, v6}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 3286
    iget-object v6, v3, Lcom/a/a/c/ak;->className:Ljava/lang/String;

    invoke-static {v6}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 3287
    iget-object v5, v3, Lcom/a/a/c/ak;->localizedMessage:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 3289
    invoke-static {v5}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 3292
    :cond_4
    iget-object v5, v3, Lcom/a/a/c/ak;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v6, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_5

    aget-object v9, v5, v8

    const/4 v10, 0x1

    .line 3293
    invoke-static {v0, v1, v9, v10}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/e;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3296
    :cond_5
    iget-object v3, v3, Lcom/a/a/c/ak;->cause:Lcom/a/a/c/ak;

    if-eqz v3, :cond_8

    if-ge v4, v2, :cond_6

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v3, :cond_7

    .line 3306
    iget-object v3, v3, Lcom/a/a/c/ak;->cause:Lcom/a/a/c/ak;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x7

    .line 3309
    invoke-virtual {v0, v3, v2}, Lcom/a/a/c/e;->writeUInt32(II)V

    .line 3249
    :cond_8
    invoke-virtual {v0, v11, v12}, Lcom/a/a/c/e;->writeTag(II)V

    .line 3250
    invoke-static {}, Lcom/a/a/c/ah;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 3251
    sget-object v2, Lcom/a/a/c/ah;->a:Lcom/a/a/c/b;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 3252
    sget-object v2, Lcom/a/a/c/ah;->a:Lcom/a/a/c/b;

    invoke-virtual {v0, v12, v2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    const-wide/16 v4, 0x0

    .line 3253
    invoke-virtual {v0, v11, v4, v5}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 3255
    invoke-virtual {v0, v1, v12}, Lcom/a/a/c/e;->writeTag(II)V

    move-object/from16 v6, p14

    move-object/from16 v2, v18

    .line 3256
    invoke-static {v2, v6}, Lcom/a/a/c/ah;->a(Lcom/a/a/c/b;Lcom/a/a/c/b;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 3257
    invoke-virtual {v0, v3, v4, v5}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 3258
    invoke-virtual {v0, v12, v4, v5}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 3259
    invoke-virtual {v0, v11, v2}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    if-eqz v6, :cond_9

    .line 3261
    invoke-virtual {v0, v1, v6}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    :cond_9
    if-eqz p9, :cond_b

    .line 3213
    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4268
    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4269
    invoke-virtual {v0, v12, v12}, Lcom/a/a/c/e;->writeTag(II)V

    .line 4270
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4271
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4270
    invoke-static {v4, v5}, Lcom/a/a/c/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 4273
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 4274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_a

    move-object/from16 v3, v17

    .line 4275
    :cond_a
    invoke-static {v3}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    goto :goto_5

    :cond_b
    if-eqz v14, :cond_d

    .line 3220
    iget v2, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_c

    const/4 v7, 0x1

    :cond_c
    invoke-virtual {v0, v11, v7}, Lcom/a/a/c/e;->writeBool(IZ)V

    :cond_d
    move/from16 v2, p12

    .line 3224
    invoke-virtual {v0, v1, v2}, Lcom/a/a/c/e;->writeUInt32(II)V

    const/4 v3, 0x5

    .line 4363
    invoke-virtual {v0, v3, v12}, Lcom/a/a/c/e;->writeTag(II)V

    move-object/from16 p1, p15

    move/from16 p2, p16

    move/from16 p3, p17

    move/from16 p4, p12

    move-wide/from16 p5, p18

    move-wide/from16 p7, p20

    .line 4364
    invoke-static/range {p1 .. p8}, Lcom/a/a/c/ah;->a(Ljava/lang/Float;IZIJJ)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    if-eqz p15, :cond_e

    .line 4367
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/a/a/c/e;->writeFloat(IF)V

    goto :goto_6

    :cond_e
    const/4 v4, 0x1

    :goto_6
    move/from16 v3, p16

    .line 4369
    invoke-virtual {v0, v12, v3}, Lcom/a/a/c/e;->writeSInt32(II)V

    move/from16 v3, p17

    .line 4370
    invoke-virtual {v0, v11, v3}, Lcom/a/a/c/e;->writeBool(IZ)V

    .line 4371
    invoke-virtual {v0, v1, v2}, Lcom/a/a/c/e;->writeUInt32(II)V

    move-wide/from16 v1, p18

    const/4 v3, 0x5

    .line 4372
    invoke-virtual {v0, v3, v1, v2}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    move-wide/from16 v1, p20

    const/4 v3, 0x6

    .line 4373
    invoke-virtual {v0, v3, v1, v2}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    if-eqz v15, :cond_f

    .line 4379
    invoke-virtual {v0, v3, v12}, Lcom/a/a/c/e;->writeTag(II)V

    .line 4600
    invoke-static {v4, v15}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    .line 4380
    invoke-virtual {v0, v1}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 4381
    invoke-virtual {v0, v4, v15}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    :cond_f
    return-void
.end method

.method public static writeSessionOS(Lcom/a/a/c/e;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    .line 73
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    .line 75
    invoke-virtual {p0, v3, v2}, Lcom/a/a/c/e;->writeTag(II)V

    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 2417
    invoke-static {v3, v4}, Lcom/a/a/c/e;->computeEnumSize(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    .line 2418
    invoke-static {v2, v0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2419
    invoke-static {v4, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    .line 2420
    invoke-static {v6, p1}, Lcom/a/a/c/e;->computeBoolSize(IZ)I

    move-result v7

    add-int/2addr v5, v7

    .line 76
    invoke-virtual {p0, v5}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 77
    invoke-virtual {p0, v3, v4}, Lcom/a/a/c/e;->writeEnum(II)V

    .line 78
    invoke-virtual {p0, v2, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 79
    invoke-virtual {p0, v4, v1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 80
    invoke-virtual {p0, v6, p1}, Lcom/a/a/c/e;->writeBool(IZ)V

    return-void
.end method

.method public static writeSessionUser(Lcom/a/a/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object p1

    .line 128
    invoke-static {p2}, Lcom/a/a/c/ah;->a(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    .line 129
    invoke-static {p3}, Lcom/a/a/c/ah;->a(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v2, 0x1

    .line 132
    invoke-static {v2, p1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    .line 134
    invoke-static {v4, v0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1
    const/4 v5, 0x3

    if-eqz p3, :cond_2

    .line 137
    invoke-static {v5, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_2
    const/4 v6, 0x6

    .line 140
    invoke-virtual {p0, v6, v4}, Lcom/a/a/c/e;->writeTag(II)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/a/a/c/e;->writeRawVarint32(I)V

    .line 142
    invoke-virtual {p0, v2, p1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p0, v4, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 147
    invoke-virtual {p0, v5, v1}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    :cond_4
    return-void
.end method
