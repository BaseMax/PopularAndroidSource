.class public final Lcom/yandex/metrica/impl/ob/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 403
    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    const/16 v0, 0x40

    .line 407
    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->i:I

    .line 416
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/a;->a:[B

    .line 417
    iput p2, p0, Lcom/yandex/metrica/impl/ob/a;->b:I

    add-int/2addr p3, p2

    .line 418
    iput p3, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    .line 419
    iput p2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    return-void
.end method

.method public static a([BII)Lcom/yandex/metrica/impl/ob/a;
    .locals 1

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/ob/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/a;-><init>([BII)V

    return-object v0
.end method

.method private u()V
    .locals 2

    .line 493
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    .line 494
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    .line 495
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 497
    iput v1, p0, Lcom/yandex/metrica/impl/ob/a;->d:I

    .line 498
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 500
    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->f:I

    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->f:I

    .line 77
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->f:I

    if-eqz v0, :cond_1

    return v0

    .line 79
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->d()Lcom/yandex/metrica/impl/ob/d;

    move-result-object v0

    throw v0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/d;
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->e()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    .line 218
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->h:I

    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->i:I

    if-ge v1, v2, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/a;->c(I)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yandex/metrica/impl/ob/a;->h:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;

    const/4 p1, 0x0

    .line 224
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/a;->a(I)V

    .line 225
    iget p1, p0, Lcom/yandex/metrica/impl/ob/a;->h:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/a;->h:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/a;->d(I)V

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->g()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final b(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/g;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->o()I

    return v1

    .line 128
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->f()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->b()V

    .line 118
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/g;->b(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/yandex/metrica/impl/ob/g;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/a;->a(I)V

    return v1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/a;->g(I)V

    return v1

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->p()J

    return v1

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->g()I

    return v1
.end method

.method public final c()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/d;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 480
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    add-int/2addr p1, v0

    .line 481
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    if-gt p1, v0, :cond_0

    .line 485
    iput p1, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    .line 487
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/a;->u()V

    return v0

    .line 483
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->a()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1

    .line 478
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->b()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1
.end method

.method public final d()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 510
    iput p1, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    .line 511
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/a;->u()V

    return-void
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(I)V
    .locals 3

    .line 564
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 571
    iput v1, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    return-void

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bad position "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->b:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 598
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    if-gt v1, v2, :cond_1

    .line 605
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    .line 607
    new-array v1, p1, [B

    .line 608
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/a;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    return-object v1

    .line 612
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->a()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 600
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/a;->g(I)V

    .line 602
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->a()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1

    .line 595
    :cond_2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->b()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1
.end method

.method public final g()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    return v0
.end method

.method public final g(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 627
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    if-gt v1, v2, :cond_1

    .line 634
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    .line 636
    iput v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    return-void

    .line 638
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->a()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 629
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/a;->g(I)V

    .line 631
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->a()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1

    .line 624
    :cond_2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->b()Lcom/yandex/metrica/impl/ob/d;

    move-result-object p1

    throw p1
.end method

.method public final h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    .line 190
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    sub-int/2addr v1, v2

    const-string v3, "UTF-8"

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/a;->a:[B

    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 194
    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    return-object v1

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/a;->f(I)[B

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final j()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    .line 232
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 235
    new-array v1, v0, [B

    .line 236
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/a;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    return-object v1

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/a;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final m()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 290
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 294
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 298
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 302
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->c()Lcom/yandex/metrica/impl/ob/d;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public final n()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->c()Lcom/yandex/metrica/impl/ob/d;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final o()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v0

    .line 336
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v1

    .line 337
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v2

    .line 338
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final p()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v0

    .line 348
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v1

    .line 349
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v2

    .line 350
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v3

    .line 351
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v4

    .line 352
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v5

    .line 353
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v6

    .line 354
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/a;->t()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final q()I
    .locals 2

    .line 519
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 523
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final r()Z
    .locals 2

    .line 533
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()I
    .locals 2

    .line 540
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final t()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget v0, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/a;->c:I

    if-eq v0, v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/a;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/yandex/metrica/impl/ob/a;->e:I

    aget-byte v0, v1, v0

    return v0

    .line 582
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/d;->a()Lcom/yandex/metrica/impl/ob/d;

    move-result-object v0

    throw v0
.end method
