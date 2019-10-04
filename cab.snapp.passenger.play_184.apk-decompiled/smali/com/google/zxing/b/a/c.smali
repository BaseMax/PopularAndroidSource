.class public final Lcom/google/zxing/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/common/b/c;

    sget-object v1, Lcom/google/zxing/common/b/a;->MAXICODE_FIELD_64:Lcom/google/zxing/common/b/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/b/c;-><init>(Lcom/google/zxing/common/b/a;)V

    iput-object v0, p0, Lcom/google/zxing/b/a/c;->a:Lcom/google/zxing/common/b/c;

    return-void
.end method

.method private a([BIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;
        }
    .end annotation

    add-int v0, p3, p4

    if-nez p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 94
    :goto_0
    div-int v2, v0, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    if-eqz p5, :cond_1

    .line 96
    rem-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_2

    .line 97
    :cond_1
    div-int v5, v4, v1

    add-int v6, v4, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/b/a/c;->a:Lcom/google/zxing/common/b/c;

    div-int/2addr p4, v1

    invoke-virtual {v0, v2, p4}, Lcom/google/zxing/common/b/c;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/b/d; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-ge v3, p3, :cond_6

    if-eqz p5, :cond_4

    .line 108
    rem-int/lit8 p4, v3, 0x2

    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_5

    :cond_4
    add-int p4, v3, p2

    .line 109
    div-int v0, v3, v1

    aget v0, v2, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 103
    :catch_0
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/b/a/c;->decode(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/b;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/d;,
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 54
    new-instance p2, Lcom/google/zxing/b/a/a;

    invoke-direct {p2, p1}, Lcom/google/zxing/b/a/a;-><init>(Lcom/google/zxing/common/b;)V

    const/16 p1, 0x90

    new-array p1, p1, [B

    .line 1074
    iget-object v0, p2, Lcom/google/zxing/b/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v0}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v0

    .line 1075
    iget-object v1, p2, Lcom/google/zxing/b/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v1}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v2, v0, :cond_2

    .line 1077
    sget-object v3, Lcom/google/zxing/b/a/a;->a:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    .line 1079
    aget v5, v3, v4

    if-ltz v5, :cond_0

    .line 1080
    iget-object v8, p2, Lcom/google/zxing/b/a/a;->b:Lcom/google/zxing/common/b;

    invoke-virtual {v8, v4, v2}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1081
    div-int/lit8 v8, v5, 0x6

    aget-byte v9, p1, v8

    rem-int/lit8 v5, v5, 0x6

    rsub-int/lit8 v5, v5, 0x5

    const/4 v10, 0x1

    shl-int v5, v10, v5

    int-to-byte v5, v5

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, p1, v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/b/a/c;->a([BIIII)V

    .line 58
    aget-byte p2, p1, v6

    and-int/lit8 p2, p2, 0xf

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    if-ne p2, v7, :cond_3

    const/16 v2, 0x14

    const/16 v3, 0x44

    const/16 v4, 0x38

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/b/a/c;->a([BIIII)V

    const/4 v5, 0x2

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/b/a/c;->a([BIIII)V

    const/16 v0, 0x4e

    new-array v0, v0, [B

    goto :goto_2

    .line 74
    :cond_3
    invoke-static {}, Lcom/google/zxing/d;->getFormatInstance()Lcom/google/zxing/d;

    move-result-object p1

    throw p1

    :cond_4
    const/16 v2, 0x14

    const/16 v3, 0x54

    const/16 v4, 0x28

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/b/a/c;->a([BIIII)V

    const/4 v5, 0x2

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/b/a/c;->a([BIIII)V

    const/16 v0, 0x5e

    new-array v0, v0, [B

    :goto_2
    const/16 v1, 0xa

    .line 77
    invoke-static {p1, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x14

    .line 78
    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-static {v0, p2}, Lcom/google/zxing/b/a/b;->a([BI)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method
