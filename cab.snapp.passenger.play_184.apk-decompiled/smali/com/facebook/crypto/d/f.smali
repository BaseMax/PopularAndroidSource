.class public final Lcom/facebook/crypto/d/f;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:Z


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/facebook/crypto/d/f;->a:[B

    .line 31
    iput p2, p0, Lcom/facebook/crypto/d/f;->b:I

    return-void
.end method

.method private a([BIII)I
    .locals 3

    .line 122
    iget v0, p0, Lcom/facebook/crypto/d/f;->b:I

    sub-int/2addr v0, p3

    sub-int v1, p2, v0

    const/4 v2, 0x0

    .line 123
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, p4

    .line 124
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez p2, :cond_1

    if-lez p3, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/crypto/d/f;->a:[B

    invoke-static {v0, v2, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/crypto/d/f;->a:[B

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/2addr p2, p3

    .line 133
    iput p2, p0, Lcom/facebook/crypto/d/f;->c:I

    sub-int/2addr v1, p4

    return v1
.end method


# virtual methods
.method public final getTail()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget v0, p0, Lcom/facebook/crypto/d/f;->c:I

    iget v1, p0, Lcom/facebook/crypto/d/f;->b:I

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/facebook/crypto/d/f;->a:[B

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough tail data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/crypto/d/f;->read([BII)I

    move-result v3

    :goto_0
    if-nez v3, :cond_0

    .line 40
    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/crypto/d/f;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    return v0

    .line 45
    :cond_1
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/facebook/crypto/d/f;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_7

    .line 1072
    iget v2, p0, Lcom/facebook/crypto/d/f;->c:I

    const/4 v3, 0x1

    if-lt p3, v2, :cond_5

    sub-int v2, p3, v2

    .line 1074
    iget-object v4, p0, Lcom/facebook/crypto/d/f;->in:Ljava/io/InputStream;

    iget v5, p0, Lcom/facebook/crypto/d/f;->c:I

    add-int/2addr v5, p2

    invoke-virtual {v4, p1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1076
    iput-boolean v3, p0, Lcom/facebook/crypto/d/f;->d:Z

    goto :goto_1

    .line 1080
    :cond_2
    iget v4, p0, Lcom/facebook/crypto/d/f;->c:I

    if-lez v4, :cond_3

    .line 1081
    iget-object v5, p0, Lcom/facebook/crypto/d/f;->a:[B

    invoke-static {v5, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1083
    :cond_3
    iget v4, p0, Lcom/facebook/crypto/d/f;->c:I

    add-int/2addr v4, v2

    .line 1085
    iget-object v2, p0, Lcom/facebook/crypto/d/f;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/facebook/crypto/d/f;->a:[B

    iget v6, p0, Lcom/facebook/crypto/d/f;->b:I

    invoke-virtual {v2, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1088
    iput-boolean v3, p0, Lcom/facebook/crypto/d/f;->d:Z

    const/4 v2, 0x0

    .line 1091
    :cond_4
    invoke-direct {p0, p1, v4, v2, p2}, Lcom/facebook/crypto/d/f;->a([BIII)I

    move-result v2

    goto :goto_0

    :cond_5
    sub-int/2addr v2, p3

    .line 1095
    iget-object v4, p0, Lcom/facebook/crypto/d/f;->a:[B

    invoke-static {v4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1096
    iget-object v4, p0, Lcom/facebook/crypto/d/f;->a:[B

    invoke-static {v4, p3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1098
    iget-object v4, p0, Lcom/facebook/crypto/d/f;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/facebook/crypto/d/f;->a:[B

    iget v6, p0, Lcom/facebook/crypto/d/f;->b:I

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 1102
    iget-object v4, p0, Lcom/facebook/crypto/d/f;->a:[B

    invoke-static {v4, v0, v4, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    iget-object v2, p0, Lcom/facebook/crypto/d/f;->a:[B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    iput-boolean v3, p0, Lcom/facebook/crypto/d/f;->d:Z

    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_6
    add-int/2addr v4, v2

    .line 1107
    invoke-direct {p0, p1, p3, v4, p2}, Lcom/facebook/crypto/d/f;->a([BIII)I

    move-result v2

    goto :goto_0

    :cond_7
    return v2
.end method
