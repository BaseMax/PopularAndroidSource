.class public final Lcom/koushikdutta/async/http/spdy/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:[J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 88
    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    return-void
.end method

.method private constructor <init>(Lcom/koushikdutta/async/http/spdy/b$a;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 92
    iget-wide v1, p1, Lcom/koushikdutta/async/http/spdy/b$a;->a:J

    const/4 p1, 0x0

    aput-wide v1, v0, p1

    const/4 p1, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/spdy/b$a;B)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/b$b;-><init>(Lcom/koushikdutta/async/http/spdy/b$a;)V

    return-void
.end method

.method private a(I)I
    .locals 4

    .line 104
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    add-int/2addr p1, v0

    .line 105
    div-int/lit8 p1, p1, 0x40

    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 1096
    new-array v1, v1, [J

    if-eqz v0, :cond_0

    .line 1098
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    :cond_0
    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    :cond_1
    return p1
.end method

.method private a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x40

    iget v2, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 164
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/spdy/b$b;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(I)I
    .locals 1

    .line 113
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x40

    return p1
.end method

.method private static c(I)I
    .locals 4

    if-ltz p0, :cond_0

    return p0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "input must be a positive number: %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public final get(I)Z
    .locals 4

    .line 133
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/b$b;->c(I)I

    .line 134
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/b$b;->a(I)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    aget-wide v0, v1, v0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/b$b;->b(I)I

    move-result p1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final set(I)V
    .locals 6

    .line 121
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/b$b;->c(I)I

    .line 122
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/b$b;->a(I)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    aget-wide v2, v1, v0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/b$b;->b(I)I

    move-result p1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public final shiftLeft(I)V
    .locals 4

    .line 139
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/b$b;->c(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    .line 140
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    if-gez p1, :cond_0

    .line 141
    div-int/lit8 p1, p1, -0x40

    add-int/lit8 p1, p1, 0x1

    .line 142
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    array-length v1, v0

    add-int/2addr v1, p1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 143
    array-length v3, v0

    invoke-static {v0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    .line 145
    iget p1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    rem-int/lit8 p1, p1, 0x40

    add-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->b:I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/b$b;->a()Ljava/util/List;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-lez v3, :cond_0

    const/16 v4, 0x2c

    .line 154
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toggle(I)V
    .locals 6

    .line 127
    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/b$b;->c(I)I

    .line 128
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/b$b;->a(I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/b$b;->a:[J

    aget-wide v2, v1, v0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/b$b;->b(I)I

    move-result p1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method
