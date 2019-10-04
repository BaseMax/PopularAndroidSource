.class final Lcom/koushikdutta/async/http/spdy/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)Lcom/koushikdutta/async/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;)",
            "Lcom/koushikdutta/async/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    const/16 v1, 0x2000

    .line 442
    invoke-static {v1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 443
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 444
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_0

    .line 445
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 446
    invoke-virtual {v0, v4}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 447
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 449
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/g;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/c;->toAsciiLowercase()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v5

    .line 450
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/i;->b()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 453
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xf

    invoke-static {v4, v5, v6}, Lcom/koushikdutta/async/http/spdy/i$b;->a(Ljava/nio/ByteBuffer;II)V

    .line 454
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/g;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    invoke-static {v4, v5}, Lcom/koushikdutta/async/http/spdy/i$b;->a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/c;)V

    goto :goto_1

    .line 456
    :cond_1
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-static {v4, v5}, Lcom/koushikdutta/async/http/spdy/i$b;->a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/c;)V

    .line 458
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/http/spdy/g;

    iget-object v5, v5, Lcom/koushikdutta/async/http/spdy/g;->value:Lcom/koushikdutta/async/http/spdy/c;

    invoke-static {v4, v5}, Lcom/koushikdutta/async/http/spdy/i$b;->a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/c;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {v0, v4}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    return-object v0
.end method

.method private static a(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    or-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    .line 470
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    or-int/lit8 v0, p2, 0x0

    int-to-byte v0, v0

    .line 475
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 v0, p1, 0x7f

    or-int/2addr p2, v0

    int-to-byte p2, p2

    .line 481
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    int-to-byte p1, p1

    .line 484
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Lcom/koushikdutta/async/http/spdy/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/c;->size()I

    move-result v0

    const/16 v1, 0x7f

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/i$b;->a(Ljava/nio/ByteBuffer;II)V

    .line 489
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/c;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
