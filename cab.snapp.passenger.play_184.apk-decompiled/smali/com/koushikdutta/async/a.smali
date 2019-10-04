.class public Lcom/koushikdutta/async/a;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/t;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/a$b;,
        Lcom/koushikdutta/async/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Lcom/koushikdutta/async/t<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private transient b:[Ljava/lang/Object;

.field private transient c:I

.field private transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    iput-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 173
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/a;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/a;->a(I)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/a;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/a;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/koushikdutta/async/a;->c:I

    return p0
.end method

.method private a()V
    .locals 6

    .line 125
    sget-boolean v0, Lcom/koushikdutta/async/a;->a:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_1
    :goto_0
    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    .line 127
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    shl-int/lit8 v4, v2, 0x1

    if-ltz v4, :cond_2

    .line 132
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 133
    invoke-static {v1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    invoke-static {v1, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iput-object v4, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    .line 136
    iput v5, p0, Lcom/koushikdutta/async/a;->c:I

    .line 137
    iput v2, p0, Lcom/koushikdutta/async/a;->d:I

    return-void

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    if-gez v0, :cond_0

    ushr-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/a;I)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/a;->b(I)Z

    move-result p0

    return p0
.end method

.method private a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 148
    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->size()I

    move-result v3

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v3, v1

    sub-int/2addr v3, v0

    .line 152
    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/a;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/koushikdutta/async/a;->d:I

    return p0
.end method

.method private b()V
    .locals 3

    .line 494
    sget-boolean v0, Lcom/koushikdutta/async/a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 495
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/koushikdutta/async/a;->a:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    aget-object v0, v2, v0

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    aget-object v0, v2, v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 498
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/koushikdutta/async/a;->a:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->c:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method private b(I)Z
    .locals 8

    .line 512
    invoke-direct {p0}, Lcom/koushikdutta/async/a;->b()V

    .line 513
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    .line 514
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 515
    iget v3, p0, Lcom/koushikdutta/async/a;->c:I

    .line 516
    iget v4, p0, Lcom/koushikdutta/async/a;->d:I

    sub-int v5, p1, v3

    and-int/2addr v5, v1

    sub-int v6, v4, p1

    and-int/2addr v6, v1

    sub-int v7, v4, v3

    and-int/2addr v7, v1

    if-ge v5, v7, :cond_3

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    if-gt v3, p1, :cond_0

    add-int/lit8 p1, v3, 0x1

    .line 527
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 529
    :cond_0
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    aget-object p1, v0, v1

    aput-object p1, v0, v7

    add-int/lit8 p1, v3, 0x1

    sub-int v4, v1, v3

    .line 531
    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x0

    .line 533
    aput-object p1, v0, v3

    add-int/2addr v3, v2

    and-int p1, v3, v1

    .line 534
    iput p1, p0, Lcom/koushikdutta/async/a;->c:I

    return v7

    :cond_1
    if-ge p1, v4, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 538
    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    .line 539
    iput v4, p0, Lcom/koushikdutta/async/a;->d:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    sub-int v5, v1, p1

    .line 541
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    aget-object p1, v0, v7

    aput-object p1, v0, v1

    .line 543
    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    and-int p1, v4, v1

    .line 544
    iput p1, p0, Lcom/koushikdutta/async/a;->d:I

    :goto_1
    return v2

    .line 522
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method static synthetic c(Lcom/koushikdutta/async/a;)[Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 391
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/a;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->c:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/a;->c:I

    aput-object p1, v0, v1

    .line 205
    iget p1, p0, Lcom/koushikdutta/async/a;->c:I

    iget v0, p0, Lcom/koushikdutta/async/a;->d:I

    if-ne p1, v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/koushikdutta/async/a;->a()V

    :cond_0
    return-void

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "e == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 221
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/koushikdutta/async/a;->d:I

    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    if-ne p1, v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/koushikdutta/async/a;->a()V

    :cond_0
    return-void

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "e == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 5

    .line 712
    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    .line 713
    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x0

    .line 715
    iput v2, p0, Lcom/koushikdutta/async/a;->d:I

    iput v2, p0, Lcom/koushikdutta/async/a;->c:I

    .line 717
    iget-object v2, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 719
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public clone()Lcom/koushikdutta/async/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/a<",
            "TE;>;"
        }
    .end annotation

    .line 800
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/a;

    .line 801
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 805
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->clone()Lcom/koushikdutta/async/a;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 680
    iget v3, p0, Lcom/koushikdutta/async/a;->c:I

    .line 682
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 683
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 583
    new-instance v0, Lcom/koushikdutta/async/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/a$b;-><init>(Lcom/koushikdutta/async/a;B)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->c:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 296
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 567
    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 579
    new-instance v0, Lcom/koushikdutta/async/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/a$a;-><init>(Lcom/koushikdutta/async/a;B)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/a;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/a;->addFirst(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/a;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/a;->d:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 270
    iget v0, p0, Lcom/koushikdutta/async/a;->c:I

    .line 271
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 275
    :cond_0
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 276
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/a;->c:I

    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 281
    iget v0, p0, Lcom/koushikdutta/async/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 282
    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 285
    :cond_0
    aput-object v3, v1, v0

    .line 286
    iput v0, p0, Lcom/koushikdutta/async/a;->d:I

    return-object v2
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 476
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/a;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 704
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/a;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 339
    iget v3, p0, Lcom/koushikdutta/async/a;->c:I

    .line 341
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 342
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/a;->b(I)Z

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 367
    iget v3, p0, Lcom/koushikdutta/async/a;->d:I

    sub-int/2addr v3, v2

    :goto_0
    and-int/2addr v3, v1

    .line 369
    iget-object v4, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 370
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/a;->b(I)Z

    return v2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public size()I
    .locals 2

    .line 558
    iget v0, p0, Lcom/koushikdutta/async/a;->d:I

    iget v1, p0, Lcom/koushikdutta/async/a;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/koushikdutta/async/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 739
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/koushikdutta/async/a;->size()I

    move-result v0

    .line 781
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 783
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 782
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 784
    :cond_0
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 785
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 786
    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method
