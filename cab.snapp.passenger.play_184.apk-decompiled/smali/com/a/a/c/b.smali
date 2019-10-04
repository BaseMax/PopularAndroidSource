.class final Lcom/a/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/b$a;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/a/a/c/b;


# instance fields
.field private final a:[B

.field private volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/a/a/c/b;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/a/a/c/b;-><init>([B)V

    sput-object v0, Lcom/a/a/c/b;->EMPTY:Lcom/a/a/c/b;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/a/a/c/b;->b:I

    .line 53
    iput-object p1, p0, Lcom/a/a/c/b;->a:[B

    return-void
.end method

.method synthetic constructor <init>([BB)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/a/a/c/b;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/a/a/c/b;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/a/a/c/b;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/a/a/c/b;
    .locals 1

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/a/a/c/b;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/a/a/c/b;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/a/a/c/b;
    .locals 0

    .line 109
    new-array p1, p1, [B

    .line 110
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 111
    new-instance p0, Lcom/a/a/c/b;

    invoke-direct {p0, p1}, Lcom/a/a/c/b;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom(Ljava/util/List;)Lcom/a/a/c/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/a/a/c/b;",
            ">;)",
            "Lcom/a/a/c/b;"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    sget-object p0, Lcom/a/a/c/b;->EMPTY:Lcom/a/a/c/b;

    return-object p0

    .line 154
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 155
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/c/b;

    return-object p0

    .line 159
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c/b;

    .line 160
    invoke-virtual {v3}, Lcom/a/a/c/b;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 162
    :cond_2
    new-array v0, v1, [B

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/c/b;

    .line 165
    iget-object v4, v3, Lcom/a/a/c/b;->a:[B

    invoke-virtual {v3}, Lcom/a/a/c/b;->size()I

    move-result v5

    invoke-static {v4, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    invoke-virtual {v3}, Lcom/a/a/c/b;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 168
    :cond_3
    new-instance p0, Lcom/a/a/c/b;

    invoke-direct {p0, v0}, Lcom/a/a/c/b;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom([B)Lcom/a/a/c/b;
    .locals 2

    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/a/a/c/b;->copyFrom([BII)Lcom/a/a/c/b;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom([BII)Lcom/a/a/c/b;
    .locals 2

    .line 92
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance p0, Lcom/a/a/c/b;

    invoke-direct {p0, v0}, Lcom/a/a/c/b;-><init>([B)V

    return-object p0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;
    .locals 2

    .line 137
    :try_start_0
    new-instance v0, Lcom/a/a/c/b;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/a/a/c/b;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static newOutput()Lcom/a/a/c/b$a;
    .locals 1

    const/16 v0, 0x20

    .line 327
    invoke-static {v0}, Lcom/a/a/c/b;->newOutput(I)Lcom/a/a/c/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/a/a/c/b$a;
    .locals 2

    .line 320
    new-instance v0, Lcom/a/a/c/b$a;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/a/a/c/b$a;-><init>(Ljava/io/ByteArrayOutputStream;B)V

    return-object v0
.end method


# virtual methods
.method public final asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final byteAt(I)B
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final copyTo(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final copyTo([BI)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final copyTo([BIII)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 258
    :cond_0
    instance-of v1, p1, Lcom/a/a/c/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 262
    :cond_1
    check-cast p1, Lcom/a/a/c/b;

    .line 263
    iget-object v1, p0, Lcom/a/a/c/b;->a:[B

    array-length v3, v1

    .line 264
    iget-object p1, p1, Lcom/a/a/c/b;->a:[B

    array-length v4, p1

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 271
    aget-byte v5, v1, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 283
    iget v0, p0, Lcom/a/a/c/b;->b:I

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    .line 287
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 291
    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 297
    :goto_1
    iput v0, p0, Lcom/a/a/c/b;->b:I

    :cond_2
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final newInput()Ljava/io/InputStream;
    .locals 2

    .line 310
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/a/a/c/b;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    array-length v0, v0

    return v0
.end method

.method public final toByteArray()[B
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/a/a/c/b;->a:[B

    array-length v1, v0

    .line 215
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 216
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/c/b;->a:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final toStringUtf8()Ljava/lang/String;
    .locals 3

    .line 243
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/c/b;->a:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
