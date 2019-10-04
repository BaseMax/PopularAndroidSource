.class final Lcom/koushikdutta/async/http/spdy/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/koushikdutta/async/l;

.field c:I

.field d:I

.field e:[Lcom/koushikdutta/async/http/spdy/g;

.field f:I

.field g:I

.field h:Lcom/koushikdutta/async/http/spdy/b;

.field i:Lcom/koushikdutta/async/http/spdy/b;

.field j:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->b:Lcom/koushikdutta/async/l;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/koushikdutta/async/http/spdy/g;

    .line 119
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    .line 128
    new-instance v1, Lcom/koushikdutta/async/http/spdy/b$a;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/b$a;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    .line 133
    new-instance v1, Lcom/koushikdutta/async/http/spdy/b$a;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/b$a;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    .line 134
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    const/16 v0, 0x1000

    .line 137
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->c:I

    .line 138
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    return-void
.end method

.method private d(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/g;->a:I

    sub-int/2addr p1, v2

    .line 189
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/g;->a:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    .line 190
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/spdy/b;->shiftLeft(I)V

    .line 194
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/spdy/b;->shiftLeft(I)V

    .line 195
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    :cond_1
    return v0
.end method

.method private f()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/i$a;->b()V

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    .line 177
    iput v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    return-void
.end method

.method private g()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .line 290
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method final a(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 391
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/i$a;->g()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method

.method final a()V
    .locals 2

    .line 163
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/i$a;->f()V

    return-void

    :cond_0
    sub-int/2addr v1, v0

    .line 167
    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/spdy/i$a;->d(I)I

    :cond_1
    return-void
.end method

.method final a(Lcom/koushikdutta/async/http/spdy/g;)V
    .locals 6

    .line 334
    iget v0, p1, Lcom/koushikdutta/async/http/spdy/g;->a:I

    .line 340
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->d:I

    if-le v0, v1, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/i$a;->f()V

    .line 343
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 348
    :cond_0
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 349
    invoke-direct {p0, v2}, Lcom/koushikdutta/async/http/spdy/i$a;->d(I)I

    .line 352
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v3, v2

    if-le v1, v3, :cond_2

    .line 353
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/koushikdutta/async/http/spdy/g;

    const/4 v3, 0x0

    .line 354
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    array-length v2, v1

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 356
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    check-cast v2, Lcom/koushikdutta/async/http/spdy/b$a;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/b$a;->toVariableCapacity()Lcom/koushikdutta/async/http/spdy/b;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    .line 357
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    check-cast v2, Lcom/koushikdutta/async/http/spdy/b$a;

    .line 358
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/b$a;->toVariableCapacity()Lcom/koushikdutta/async/http/spdy/b;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v3, v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/spdy/b;->shiftLeft(I)V

    .line 361
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v3, v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/spdy/b;->shiftLeft(I)V

    .line 362
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    .line 363
    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    .line 365
    :cond_2
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    .line 366
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/http/spdy/b;->set(I)V

    .line 367
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    aput-object p1, v2, v1

    .line 368
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    .line 374
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->j:I

    return-void
.end method

.method final b(I)Lcom/koushikdutta/async/http/spdy/c;
    .locals 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/i$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/i;->a()[Lcom/koushikdutta/async/http/spdy/g;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    return-object p1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/spdy/i$a;->a(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/g;->name:Lcom/koushikdutta/async/http/spdy/c;

    return-object p1
.end method

.method final b()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/b;->clear()V

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/b;->clear()V

    return-void
.end method

.method final c()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->f:I

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->h:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/b;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/b;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->e:[Lcom/koushikdutta/async/http/spdy/g;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final c(I)Z
    .locals 1

    .line 327
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->g:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/g;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 262
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->i:Lcom/koushikdutta/async/http/spdy/b;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/spdy/b;->clear()V

    return-object v0
.end method

.method final e()Lcom/koushikdutta/async/http/spdy/c;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/i$a;->g()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 409
    invoke-virtual {p0, v0, v2}, Lcom/koushikdutta/async/http/spdy/i$a;->a(II)I

    move-result v0

    if-eqz v1, :cond_5

    .line 412
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/k;->get()Lcom/koushikdutta/async/http/spdy/k;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/i$a;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/l;->getBytes(I)[B

    move-result-object v0

    .line 1127
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1128
    iget-object v4, v1, Lcom/koushikdutta/async/http/spdy/k;->a:Lcom/koushikdutta/async/http/spdy/k$a;

    move-object v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1131
    :goto_1
    array-length v7, v0

    const/16 v8, 0x8

    if-ge v3, v7, :cond_3

    .line 1132
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x8

    :goto_2
    if-lt v5, v8, :cond_2

    add-int/lit8 v7, v5, -0x8

    ushr-int v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    .line 1194
    iget-object v6, v6, Lcom/koushikdutta/async/http/spdy/k$a;->a:[Lcom/koushikdutta/async/http/spdy/k$a;

    .line 1137
    aget-object v6, v6, v7

    .line 2194
    iget-object v7, v6, Lcom/koushikdutta/async/http/spdy/k$a;->a:[Lcom/koushikdutta/async/http/spdy/k$a;

    if-nez v7, :cond_1

    .line 3194
    iget v7, v6, Lcom/koushikdutta/async/http/spdy/k$a;->b:I

    .line 1140
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4194
    iget v6, v6, Lcom/koushikdutta/async/http/spdy/k$a;->c:I

    sub-int/2addr v5, v6

    .line 1142
    iget-object v6, v1, Lcom/koushikdutta/async/http/spdy/k;->a:Lcom/koushikdutta/async/http/spdy/k$a;

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v5, :cond_4

    rsub-int/lit8 v0, v5, 0x8

    shl-int v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 5194
    iget-object v3, v6, Lcom/koushikdutta/async/http/spdy/k$a;->a:[Lcom/koushikdutta/async/http/spdy/k$a;

    .line 1152
    aget-object v0, v3, v0

    .line 6194
    iget-object v3, v0, Lcom/koushikdutta/async/http/spdy/k$a;->a:[Lcom/koushikdutta/async/http/spdy/k$a;

    if-nez v3, :cond_4

    .line 7194
    iget v3, v0, Lcom/koushikdutta/async/http/spdy/k$a;->c:I

    if-gt v3, v5, :cond_4

    .line 8194
    iget v3, v0, Lcom/koushikdutta/async/http/spdy/k$a;->b:I

    .line 1156
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9194
    iget v0, v0, Lcom/koushikdutta/async/http/spdy/k$a;->c:I

    sub-int/2addr v5, v0

    .line 1158
    iget-object v6, v1, Lcom/koushikdutta/async/http/spdy/k;->a:Lcom/koushikdutta/async/http/spdy/k$a;

    goto :goto_3

    .line 1161
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 412
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->of([B)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    return-object v0

    .line 414
    :cond_5
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/i$a;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/l;->getBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->of([B)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    return-object v0
.end method

.method public final refill(Lcom/koushikdutta/async/l;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/i$a;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    return-void
.end method
