.class final Lcom/koushikdutta/async/http/spdy/n$a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/n$a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/n$a;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 211
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/l;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/l;

    .line 213
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/n$a;->e:I

    const/high16 v3, 0x7fff0000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x10

    .line 214
    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/n$a;->e:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    const/4 v2, 0x4

    const/16 v4, 0x8

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    .line 255
    :pswitch_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->recycle()V

    goto/16 :goto_5

    .line 251
    :pswitch_1
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-ne v3, v4, :cond_1

    .line 7314
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v3

    .line 7315
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    and-int/2addr v3, v5

    and-int/2addr v0, v5

    int-to-long v4, v0

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    .line 7319
    iget-object v0, v2, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {v0, v3, v4, v5}, Lcom/koushikdutta/async/http/spdy/e$a;->windowUpdate(IJ)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "windowSizeIncrement was 0"

    new-array v2, v7, [Ljava/lang/Object;

    .line 7318
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    .line 7313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 247
    :pswitch_2
    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v4, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    .line 6306
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v6

    and-int v10, v6, v5

    .line 6308
    iget-object v5, v3, Lcom/koushikdutta/async/http/spdy/n$a;->a:Lcom/koushikdutta/async/http/spdy/h;

    sub-int/2addr v4, v2

    invoke-virtual {v5, v0, v4}, Lcom/koushikdutta/async/http/spdy/h;->readHeader(Lcom/koushikdutta/async/l;I)Ljava/util/List;

    move-result-object v12

    .line 6309
    iget-object v7, v3, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    sget-object v13, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v7 .. v13}, Lcom/koushikdutta/async/http/spdy/e$a;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    goto/16 :goto_5

    .line 243
    :pswitch_3
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-ne v3, v4, :cond_3

    .line 5331
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v3

    and-int/2addr v3, v5

    .line 5332
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    .line 5333
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/d;->fromSpdyGoAway(I)Lcom/koushikdutta/async/http/spdy/d;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5337
    iget-object v0, v2, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    sget-object v2, Lcom/koushikdutta/async/http/spdy/c;->EMPTY:Lcom/koushikdutta/async/http/spdy/c;

    invoke-interface {v0, v3, v4, v2}, Lcom/koushikdutta/async/http/spdy/e$a;->goAway(ILcom/koushikdutta/async/http/spdy/d;Lcom/koushikdutta/async/http/spdy/c;)V

    goto/16 :goto_5

    :cond_2
    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    .line 5335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v0, "TYPE_GOAWAY length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    .line 5330
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 239
    :pswitch_4
    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v4, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-ne v4, v2, :cond_6

    .line 4324
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    .line 4325
    iget-boolean v2, v3, Lcom/koushikdutta/async/http/spdy/n$a;->b:Z

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v7, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    .line 4326
    :goto_1
    iget-object v2, v3, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {v2, v7, v0, v6}, Lcom/koushikdutta/async/http/spdy/e$a;->ping(ZII)V

    goto/16 :goto_5

    :cond_6
    const-string v0, "TYPE_PING length: %d != 4"

    new-array v2, v7, [Ljava/lang/Object;

    .line 4323
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 235
    :pswitch_5
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/n$a;->g:I

    iget-object v4, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    invoke-static {v2, v0, v3, v4}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Lcom/koushikdutta/async/http/spdy/n$a;Lcom/koushikdutta/async/l;II)V

    goto/16 :goto_5

    .line 231
    :pswitch_6
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-ne v3, v4, :cond_8

    .line 3296
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v3

    and-int/2addr v3, v5

    .line 3297
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    .line 3298
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/d;->fromSpdy3Rst(I)Lcom/koushikdutta/async/http/spdy/d;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3302
    iget-object v0, v2, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {v0, v3, v4}, Lcom/koushikdutta/async/http/spdy/e$a;->rstStream(ILcom/koushikdutta/async/http/spdy/d;)V

    goto/16 :goto_5

    :cond_7
    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    .line 3300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    .line 3295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 227
    :pswitch_7
    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v4, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/n$a;->g:I

    iget-object v8, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v8, v8, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    .line 2287
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v9

    and-int v13, v9, v5

    .line 2289
    iget-object v5, v3, Lcom/koushikdutta/async/http/spdy/n$a;->a:Lcom/koushikdutta/async/http/spdy/h;

    sub-int/2addr v8, v2

    invoke-virtual {v5, v0, v8}, Lcom/koushikdutta/async/http/spdy/h;->readHeader(Lcom/koushikdutta/async/l;I)Ljava/util/List;

    move-result-object v15

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_9

    const/4 v12, 0x1

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    .line 2291
    :goto_2
    iget-object v10, v3, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    const/4 v11, 0x0

    const/4 v14, -0x1

    sget-object v16, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_REPLY:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v10 .. v16}, Lcom/koushikdutta/async/http/spdy/e$a;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    goto :goto_5

    .line 223
    :pswitch_8
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget-object v3, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/n$a;->g:I

    iget-object v4, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    .line 1273
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v8

    .line 1274
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v9

    and-int v13, v8, v5

    and-int v14, v9, v5

    .line 1277
    invoke-virtual/range {p2 .. p2}, Lcom/koushikdutta/async/l;->getShort()S

    .line 1278
    iget-object v5, v2, Lcom/koushikdutta/async/http/spdy/n$a;->a:Lcom/koushikdutta/async/http/spdy/h;

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v5, v0, v4}, Lcom/koushikdutta/async/http/spdy/h;->readHeader(Lcom/koushikdutta/async/l;I)Ljava/util/List;

    move-result-object v15

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_a

    const/4 v12, 0x1

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    :goto_3
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_b

    const/4 v11, 0x1

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    .line 1282
    :goto_4
    iget-object v10, v2, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    sget-object v16, Lcom/koushikdutta/async/http/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v10 .. v16}, Lcom/koushikdutta/async/http/spdy/e$a;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 258
    :goto_5
    iget-object v0, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 8126
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/n$a;->a()V

    return-void

    .line 218
    :cond_c
    new-instance v0, Ljava/net/ProtocolException;

    const-string v3, "version != 3: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 261
    iget-object v2, v1, Lcom/koushikdutta/async/http/spdy/n$a$4;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 9126
    iget-object v2, v2, Lcom/koushikdutta/async/http/spdy/n$a;->c:Lcom/koushikdutta/async/http/spdy/e$a;

    .line 261
    invoke-interface {v2, v0}, Lcom/koushikdutta/async/http/spdy/e$a;->error(Ljava/lang/Exception;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
