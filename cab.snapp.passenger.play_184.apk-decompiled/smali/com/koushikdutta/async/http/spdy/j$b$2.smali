.class final Lcom/koushikdutta/async/http/spdy/j$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/j$b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/j$b;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 10

    .line 148
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->g:B

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->recycle()V

    goto/16 :goto_5

    .line 186
    :pswitch_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    .line 11237
    iget v2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->l:I

    if-ne v1, v2, :cond_0

    .line 11239
    invoke-virtual {p1, p2, v4, v0, v1}, Lcom/koushikdutta/async/http/spdy/j$b;->a(Lcom/koushikdutta/async/l;SBI)V

    goto/16 :goto_5

    .line 11238
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "continuation stream id mismatch"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :pswitch_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-ne v0, v1, :cond_2

    .line 10401
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p2

    int-to-long v0, p2

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v0, v5

    if-eqz p2, :cond_1

    .line 10403
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p1, v2, v0, v1}, Lcom/koushikdutta/async/http/spdy/e$a;->windowUpdate(IJ)V

    goto/16 :goto_5

    :cond_1
    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v3, [Ljava/lang/Object;

    .line 10402
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p2, v3, [Ljava/lang/Object;

    .line 10400
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 178
    :pswitch_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-lt v0, v2, :cond_6

    if-nez v1, :cond_5

    .line 9384
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v1

    .line 9385
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v5

    sub-int/2addr v0, v2

    .line 9387
    invoke-static {v5}, Lcom/koushikdutta/async/http/spdy/d;->fromHttp2(I)Lcom/koushikdutta/async/http/spdy/d;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9391
    sget-object v3, Lcom/koushikdutta/async/http/spdy/c;->EMPTY:Lcom/koushikdutta/async/http/spdy/c;

    if-lez v0, :cond_3

    .line 9393
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->getBytes(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/c;->of([B)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v3

    .line 9395
    :cond_3
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p1, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/e$a;->goAway(ILcom/koushikdutta/async/http/spdy/d;Lcom/koushikdutta/async/http/spdy/c;)V

    goto/16 :goto_5

    :cond_4
    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    new-array p2, v3, [Ljava/lang/Object;

    .line 9389
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v4, [Ljava/lang/Object;

    .line 9383
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    const-string p1, "TYPE_GOAWAY length < 8: %s"

    new-array p2, v3, [Ljava/lang/Object;

    .line 9382
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 174
    :pswitch_3
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v1, v1, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v5, v5, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-ne v0, v2, :cond_9

    if-nez v5, :cond_8

    .line 8374
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    .line 8375
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p2

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 8377
    :goto_0
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p1, v3, v0, p2}, Lcom/koushikdutta/async/http/spdy/e$a;->ping(ZII)V

    goto/16 :goto_5

    :cond_8
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v4, [Ljava/lang/Object;

    .line 8373
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "TYPE_PING length != 8: %s"

    new-array p2, v3, [Ljava/lang/Object;

    .line 8372
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 170
    :pswitch_4
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v3, v3, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v5, v5, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-eqz v5, :cond_b

    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_a

    .line 7362
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    .line 7363
    :cond_a
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iput v6, p1, Lcom/koushikdutta/async/http/spdy/j$b;->m:I

    sub-int/2addr v2, v1

    int-to-short v1, v2

    .line 7365
    invoke-static {v1, v3, v4}, Lcom/koushikdutta/async/http/spdy/j;->a(SBS)S

    .line 7366
    iput-byte v0, p1, Lcom/koushikdutta/async/http/spdy/j$b;->k:B

    .line 7367
    invoke-virtual {p1, p2, v4, v3, v5}, Lcom/koushikdutta/async/http/spdy/j$b;->a(Lcom/koushikdutta/async/l;SBI)V

    goto/16 :goto_5

    :cond_b
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v4, [Ljava/lang/Object;

    .line 7360
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 166
    :pswitch_5
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v5, v5, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    iget-object v6, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v6, v6, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-nez v6, :cond_17

    and-int/2addr v5, v3

    if-eqz v5, :cond_d

    if-nez v2, :cond_c

    .line 5316
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/spdy/e$a;->ackSettings()V

    goto/16 :goto_5

    :cond_c
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v4, [Ljava/lang/Object;

    .line 5315
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 5320
    :cond_d
    rem-int/lit8 v5, v2, 0x6

    if-nez v5, :cond_16

    .line 5321
    new-instance v5, Lcom/koushikdutta/async/http/spdy/m;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/spdy/m;-><init>()V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_15

    .line 5323
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getShort()S

    move-result v7

    .line 5324
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v8

    if-eq v7, v3, :cond_14

    const/4 v9, 0x2

    if-eq v7, v9, :cond_12

    const/4 v9, 0x3

    if-eq v7, v9, :cond_11

    if-eq v7, v1, :cond_f

    if-ne v7, v0, :cond_e

    goto :goto_2

    :cond_e
    const-string p1, "PROTOCOL_ERROR invalid settings id: %s"

    new-array p2, v3, [Ljava/lang/Object;

    .line 5346
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    const/4 v7, 0x7

    if-ltz v8, :cond_10

    goto :goto_2

    :cond_10
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v4, [Ljava/lang/Object;

    .line 5340
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_11
    const/4 v7, 0x4

    goto :goto_2

    :cond_12
    if-eqz v8, :cond_14

    if-ne v8, v3, :cond_13

    goto :goto_2

    :cond_13
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v4, [Ljava/lang/Object;

    .line 5331
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 5348
    :cond_14
    :goto_2
    invoke-virtual {v5, v7, v4, v8}, Lcom/koushikdutta/async/http/spdy/m;->set(III)Lcom/koushikdutta/async/http/spdy/m;

    add-int/lit8 v6, v6, 0x6

    goto :goto_1

    .line 5350
    :cond_15
    iget-object p2, p1, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p2, v4, v5}, Lcom/koushikdutta/async/http/spdy/e$a;->settings(ZLcom/koushikdutta/async/http/spdy/m;)V

    .line 5351
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/m;->a()I

    move-result p2

    if-ltz p2, :cond_24

    .line 5352
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->c:Lcom/koushikdutta/async/http/spdy/i$a;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/m;->a()I

    move-result p2

    .line 6157
    iput p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->c:I

    .line 6158
    iget p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->c:I

    iput p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    .line 6159
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->a()V

    goto/16 :goto_5

    :cond_16
    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array p2, v3, [Ljava/lang/Object;

    .line 5320
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_17
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v4, [Ljava/lang/Object;

    .line 5313
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 162
    :pswitch_6
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-ne v0, v1, :cond_1a

    if-eqz v2, :cond_19

    .line 4303
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p2

    .line 4304
    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/d;->fromHttp2(I)Lcom/koushikdutta/async/http/spdy/d;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 4308
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p1, v2, v0}, Lcom/koushikdutta/async/http/spdy/e$a;->rstStream(ILcom/koushikdutta/async/http/spdy/d;)V

    goto/16 :goto_5

    :cond_18
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v0, v3, [Ljava/lang/Object;

    .line 4306
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_19
    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v4, [Ljava/lang/Object;

    .line 4302
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1a
    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    new-array p2, v3, [Ljava/lang/Object;

    .line 4301
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 158
    :pswitch_7
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-ne v1, v0, :cond_1c

    if-eqz v2, :cond_1b

    .line 3288
    invoke-virtual {p1, p2, v2}, Lcom/koushikdutta/async/http/spdy/j$b;->a(Lcom/koushikdutta/async/l;I)V

    goto/16 :goto_5

    :cond_1b
    const-string p1, "TYPE_PRIORITY streamId == 0"

    new-array p2, v4, [Ljava/lang/Object;

    .line 3287
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1c
    const-string p1, "TYPE_PRIORITY length: %d != 5"

    new-array p2, v3, [Ljava/lang/Object;

    .line 3286
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 154
    :pswitch_8
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v1, v1, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    if-eqz v2, :cond_1f

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_1d

    .line 2220
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v4, v3

    :cond_1d
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_1e

    .line 2223
    invoke-virtual {p1, p2, v2}, Lcom/koushikdutta/async/http/spdy/j$b;->a(Lcom/koushikdutta/async/l;I)V

    add-int/lit8 v0, v0, -0x5

    int-to-short v0, v0

    .line 2227
    :cond_1e
    invoke-static {v0, v1, v4}, Lcom/koushikdutta/async/http/spdy/j;->a(SBS)S

    .line 2229
    iget-byte v0, p1, Lcom/koushikdutta/async/http/spdy/j$b;->g:B

    iput-byte v0, p1, Lcom/koushikdutta/async/http/spdy/j$b;->k:B

    .line 2230
    invoke-virtual {p1, p2, v4, v1, v2}, Lcom/koushikdutta/async/http/spdy/j$b;->a(Lcom/koushikdutta/async/l;SBI)V

    goto :goto_5

    :cond_1f
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v4, [Ljava/lang/Object;

    .line 2217
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 150
    :pswitch_9
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-short v0, v0, Lcom/koushikdutta/async/http/spdy/j$b;->h:S

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget-byte v1, v1, Lcom/koushikdutta/async/http/spdy/j$b;->f:B

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/j$b;->i:I

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_3

    :cond_20
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_21

    goto :goto_4

    :cond_21
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_23

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_22

    .line 1277
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v4, v3

    .line 1278
    :cond_22
    invoke-static {v0, v1, v4}, Lcom/koushikdutta/async/http/spdy/j;->a(SBS)S

    .line 1280
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {p1, v5, v2, p2}, Lcom/koushikdutta/async/http/spdy/e$a;->data(ZILcom/koushikdutta/async/l;)V

    .line 1281
    invoke-virtual {p2, v4}, Lcom/koushikdutta/async/l;->skip(I)Lcom/koushikdutta/async/l;

    goto :goto_5

    :cond_23
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v4, [Ljava/lang/Object;

    .line 1274
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/spdy/j;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 193
    :cond_24
    :goto_5
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    .line 12094
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/j$b;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 196
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$b$2;->a:Lcom/koushikdutta/async/http/spdy/j$b;

    .line 13094
    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    .line 196
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/spdy/e$a;->error(Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
