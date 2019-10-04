.class public final Lcom/google/zxing/qrcode/decoder/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/b/c;

    sget-object v1, Lcom/google/zxing/common/b/a;->QR_CODE_FIELD_256:Lcom/google/zxing/common/b/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/b/c;-><init>(Lcom/google/zxing/common/b/a;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/e;->a:Lcom/google/zxing/common/b/c;

    return-void
.end method

.method private a(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lcom/google/zxing/common/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/a;",
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

    .line 132
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->b()Lcom/google/zxing/qrcode/decoder/h;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->a()Lcom/google/zxing/qrcode/decoder/f;

    move-result-object v1

    .line 3135
    iget-object v1, v1, Lcom/google/zxing/qrcode/decoder/f;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 136
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/a;->c()[B

    move-result-object p1

    .line 138
    invoke-static {p1, v0, v1}, Lcom/google/zxing/qrcode/decoder/b;->a([BLcom/google/zxing/qrcode/decoder/h;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/b;

    move-result-object p1

    .line 142
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    .line 4115
    iget v6, v6, Lcom/google/zxing/qrcode/decoder/b;->a:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-array v2, v5, [B

    .line 149
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p1, v5

    .line 4119
    iget-object v8, v7, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 5115
    iget v7, v7, Lcom/google/zxing/qrcode/decoder/b;->a:I

    .line 152
    invoke-direct {p0, v8, v7}, Lcom/google/zxing/qrcode/decoder/e;->a([BI)V

    move v9, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 154
    aget-byte v11, v8, v6

    aput-byte v11, v2, v9

    add-int/lit8 v6, v6, 0x1

    move v9, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_1

    .line 159
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/d;->a([BLcom/google/zxing/qrcode/decoder/h;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method

.method private a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;
        }
    .end annotation

    .line 171
    array-length v0, p1

    .line 173
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 175
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/e;->a:Lcom/google/zxing/common/b/c;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/common/b/c;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/b/d; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 185
    aget v0, v1, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 180
    :catch_0
    invoke-static {}, Lcom/google/zxing/c;->getChecksumInstance()Lcom/google/zxing/c;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
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

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/e;->decode(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method

.method public final decode(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;
    .locals 7
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

    .line 80
    new-instance v0, Lcom/google/zxing/qrcode/decoder/a;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/a;-><init>(Lcom/google/zxing/common/b;)V

    const/4 p1, 0x0

    .line 84
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/e;->a(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, p1

    .line 1211
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/a;->c:Lcom/google/zxing/qrcode/decoder/f;

    if-eqz v3, :cond_0

    .line 1214
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/c;->values()[Lcom/google/zxing/qrcode/decoder/c;

    move-result-object v3

    iget-object v4, v0, Lcom/google/zxing/qrcode/decoder/a;->c:Lcom/google/zxing/qrcode/decoder/f;

    .line 2139
    iget-byte v4, v4, Lcom/google/zxing/qrcode/decoder/f;->b:B

    .line 1214
    aget-object v3, v3, v4

    .line 1215
    iget-object v4, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v4}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v4

    .line 1216
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/c;->a(Lcom/google/zxing/common/b;I)V

    .line 2228
    :cond_0
    iput-object p1, v0, Lcom/google/zxing/qrcode/decoder/a;->b:Lcom/google/zxing/qrcode/decoder/h;

    .line 2229
    iput-object p1, v0, Lcom/google/zxing/qrcode/decoder/a;->c:Lcom/google/zxing/qrcode/decoder/f;

    const/4 p1, 0x1

    .line 2230
    iput-boolean p1, v0, Lcom/google/zxing/qrcode/decoder/a;->d:Z

    .line 100
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->b()Lcom/google/zxing/qrcode/decoder/h;

    .line 103
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/a;->a()Lcom/google/zxing/qrcode/decoder/f;

    const/4 p1, 0x0

    .line 2235
    :goto_1
    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v3}, Lcom/google/zxing/common/b;->getWidth()I

    move-result v3

    if-ge p1, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    move v4, v3

    .line 2236
    :goto_2
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v5}, Lcom/google/zxing/common/b;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2237
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v5

    iget-object v6, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v6, v4, p1}, Lcom/google/zxing/common/b;->get(II)Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 2238
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v5, v4, p1}, Lcom/google/zxing/common/b;->flip(II)V

    .line 2239
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v5, p1, v4}, Lcom/google/zxing/common/b;->flip(II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/e;->a(Lcom/google/zxing/qrcode/decoder/a;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/google/zxing/qrcode/decoder/g;

    invoke-direct {p2}, Lcom/google/zxing/qrcode/decoder/g;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/zxing/common/d;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/c; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    nop

    if-eqz v1, :cond_4

    .line 124
    throw v1

    .line 126
    :cond_4
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public final decode([[Z)Lcom/google/zxing/common/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/e;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method

.method public final decode([[ZLjava/util/Map;)Lcom/google/zxing/common/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/google/zxing/common/b;->parse([[Z)Lcom/google/zxing/common/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/decoder/e;->decode(Lcom/google/zxing/common/b;Ljava/util/Map;)Lcom/google/zxing/common/d;

    move-result-object p1

    return-object p1
.end method
