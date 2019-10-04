.class final Lcom/koushikdutta/async/http/spdy/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/koushikdutta/async/http/spdy/e$a;

.field final b:Lcom/koushikdutta/async/p;

.field final c:Lcom/koushikdutta/async/http/spdy/i$a;

.field d:I

.field e:I

.field f:B

.field g:B

.field h:S

.field i:I

.field final j:Lcom/koushikdutta/async/a/d;

.field k:B

.field l:I

.field m:I

.field private final n:Lcom/koushikdutta/async/n;

.field private final o:Z

.field private final p:Lcom/koushikdutta/async/a/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/spdy/e$a;Z)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/koushikdutta/async/http/spdy/j$b$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/j$b$1;-><init>(Lcom/koushikdutta/async/http/spdy/j$b;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b;->p:Lcom/koushikdutta/async/a/d;

    .line 144
    new-instance v0, Lcom/koushikdutta/async/http/spdy/j$b$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/j$b$2;-><init>(Lcom/koushikdutta/async/http/spdy/j$b;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b;->j:Lcom/koushikdutta/async/a/d;

    .line 104
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->n:Lcom/koushikdutta/async/n;

    .line 105
    iput-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/j$b;->o:Z

    .line 106
    new-instance p1, Lcom/koushikdutta/async/http/spdy/i$a;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/spdy/i$a;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->c:Lcom/koushikdutta/async/http/spdy/i$a;

    .line 107
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    .line 108
    new-instance p1, Lcom/koushikdutta/async/p;

    invoke-direct {p1}, Lcom/koushikdutta/async/p;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->b:Lcom/koushikdutta/async/p;

    .line 110
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/j$b;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b;->n:Lcom/koushikdutta/async/n;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->b:Lcom/koushikdutta/async/p;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/j$b;->b:Lcom/koushikdutta/async/p;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->p:Lcom/koushikdutta/async/a/d;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method final a(Lcom/koushikdutta/async/l;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 295
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p1, v2

    .line 296
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    invoke-interface {v2, p2, v0, p1, v1}, Lcom/koushikdutta/async/http/spdy/e$a;->priority(IIIZ)V

    return-void
.end method

.method final a(Lcom/koushikdutta/async/l;SBI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/l;->skip(I)Lcom/koushikdutta/async/l;

    .line 246
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/j$b;->c:Lcom/koushikdutta/async/http/spdy/i$a;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/spdy/i$a;->refill(Lcom/koushikdutta/async/l;)V

    .line 247
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->c:Lcom/koushikdutta/async/http/spdy/i$a;

    .line 1208
    :goto_0
    iget-object p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    .line 1209
    iget-object p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 v1, 0x80

    if-eq p2, v1, :cond_d

    and-int/lit16 v2, p2, 0x80

    if-ne v2, v1, :cond_4

    const/16 v1, 0x7f

    .line 1213
    invoke-virtual {p1, p2, v1}, Lcom/koushikdutta/async/http/spdy/i$a;->a(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 1267
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/i$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1268
    iget v1, p1, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    sub-int/2addr p2, v1

    .line 1269
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/i;->a()[Lcom/koushikdutta/async/http/spdy/g;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_1

    .line 1272
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/i;->a()[Lcom/koushikdutta/async/http/spdy/g;

    move-result-object v0

    aget-object p2, v0, p2

    .line 1273
    iget v0, p1, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    if-nez v0, :cond_0

    .line 1274
    iget-object v0, p1, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1276
    :cond_0
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/i$a;->a(Lcom/koushikdutta/async/http/spdy/g;)V

    goto :goto_0

    .line 1270
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Header index too large "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p2, v0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1279
    :cond_2
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/i$a;->a(I)I

    move-result p2

    .line 1280
    iget-object v0, p1, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/http/spdy/b;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1281
    iget-object v0, p1, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    iget-object v0, p1, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/http/spdy/b;->set(I)V

    .line 1284
    :cond_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/http/spdy/b;->toggle(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x40

    if-ne p2, v1, :cond_5

    .line 1313
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->e()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/i;->a(Lcom/koushikdutta/async/http/spdy/c;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    .line 1314
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->e()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    .line 1315
    new-instance v1, Lcom/koushikdutta/async/http/spdy/g;

    invoke-direct {v1, p2, v0}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Lcom/koushikdutta/async/http/spdy/c;)V

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/spdy/i$a;->a(Lcom/koushikdutta/async/http/spdy/g;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v2, p2, 0x40

    if-ne v2, v1, :cond_6

    const/16 v1, 0x3f

    .line 1218
    invoke-virtual {p1, p2, v1}, Lcom/koushikdutta/async/http/spdy/i$a;->a(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 2307
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/i$a;->b(I)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    .line 2308
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->e()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    .line 2309
    new-instance v1, Lcom/koushikdutta/async/http/spdy/g;

    invoke-direct {v1, p2, v0}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Lcom/koushikdutta/async/http/spdy/c;)V

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/spdy/i$a;->a(Lcom/koushikdutta/async/http/spdy/g;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v1, p2, 0x20

    const/16 v2, 0x20

    const/16 v3, 0xf

    const/16 v4, 0x10

    if-ne v1, v2, :cond_a

    and-int/lit8 v0, p2, 0x10

    if-ne v0, v4, :cond_8

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_7

    .line 1224
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->b()V

    goto/16 :goto_0

    .line 1223
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid header table state change "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1226
    :cond_8
    invoke-virtual {p1, p2, v3}, Lcom/koushikdutta/async/http/spdy/i$a;->a(II)I

    move-result p2

    iput p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    .line 1227
    iget p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    if-ltz p2, :cond_9

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/i$a;->c:I

    if-gt p2, v0, :cond_9

    .line 1231
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->a()V

    goto/16 :goto_0

    .line 1229
    :cond_9
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid header table byte count "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    if-eq p2, v4, :cond_c

    if-nez p2, :cond_b

    goto :goto_1

    .line 1236
    :cond_b
    invoke-virtual {p1, p2, v3}, Lcom/koushikdutta/async/http/spdy/i$a;->a(II)I

    move-result p2

    sub-int/2addr p2, v0

    .line 4294
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/spdy/i$a;->b(I)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    .line 4295
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->e()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    .line 4296
    iget-object v1, p1, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    new-instance v2, Lcom/koushikdutta/async/http/spdy/g;

    invoke-direct {v2, p2, v0}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Lcom/koushikdutta/async/http/spdy/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3300
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->e()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/i;->a(Lcom/koushikdutta/async/http/spdy/c;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p2

    .line 3301
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->e()Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    .line 3302
    iget-object v1, p1, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    new-instance v2, Lcom/koushikdutta/async/http/spdy/g;

    invoke-direct {v2, p2, v0}, Lcom/koushikdutta/async/http/spdy/g;-><init>(Lcom/koushikdutta/async/http/spdy/c;Lcom/koushikdutta/async/http/spdy/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1211
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_e
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->c:Lcom/koushikdutta/async/http/spdy/i$a;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->c()V

    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_12

    .line 252
    iget-byte p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->k:B

    if-ne p1, v0, :cond_10

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_f

    const/4 v3, 0x1

    goto :goto_2

    :cond_f
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 254
    :goto_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    const/4 v2, 0x0

    const/4 v5, -0x1

    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->c:Lcom/koushikdutta/async/http/spdy/i$a;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/i$a;->d()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/koushikdutta/async/http/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    move v4, p4

    invoke-interface/range {v1 .. v7}, Lcom/koushikdutta/async/http/spdy/e$a;->headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    return-void

    :cond_10
    const/4 p2, 0x5

    if-ne p1, p2, :cond_11

    .line 257
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/j$b;->a:Lcom/koushikdutta/async/http/spdy/e$a;

    iget p2, p0, Lcom/koushikdutta/async/http/spdy/j$b;->m:I

    iget-object p3, p0, Lcom/koushikdutta/async/http/spdy/j$b;->c:Lcom/koushikdutta/async/http/spdy/i$a;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/spdy/i$a;->d()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p4, p2, p3}, Lcom/koushikdutta/async/http/spdy/e$a;->pushPromise(IILjava/util/List;)V

    return-void

    .line 260
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "unknown header type"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 264
    :cond_12
    iput p4, p0, Lcom/koushikdutta/async/http/spdy/j$b;->l:I

    return-void
.end method
