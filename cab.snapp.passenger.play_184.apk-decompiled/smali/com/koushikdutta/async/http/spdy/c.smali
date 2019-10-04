.class final Lcom/koushikdutta/async/http/spdy/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lcom/koushikdutta/async/http/spdy/c;

.field private static final b:[C


# instance fields
.field final a:[B

.field private transient c:I

.field private transient d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/c;->b:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 52
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->of([B)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/c;->EMPTY:Lcom/koushikdutta/async/http/spdy/c;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    return-void
.end method

.method private static a(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected hex digit: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 114
    new-instance v0, Lcom/koushikdutta/async/http/spdy/c;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/c;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "base64 == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;
    .locals 4

    if-eqz p0, :cond_2

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 134
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 135
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/c;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 136
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/c;->a(C)I

    move-result v2

    add-int/2addr v3, v2

    int-to-byte v2, v3

    .line 137
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->of([B)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object p0

    return-object p0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected hex string: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hex == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;
    .locals 2

    if-eqz p0, :cond_0

    .line 86
    new-instance v0, Lcom/koushikdutta/async/http/spdy/c;

    sget-object v1, Lcom/koushikdutta/async/e/b;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/spdy/c;-><init>([B)V

    .line 87
    iput-object p0, v0, Lcom/koushikdutta/async/http/spdy/c;->d:Ljava/lang/String;

    return-object v0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs of([B)Lcom/koushikdutta/async/http/spdy/c;
    .locals 1

    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lcom/koushikdutta/async/http/spdy/c;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/c;-><init>([B)V

    return-object v0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of([BII)Lcom/koushikdutta/async/http/spdy/c;
    .locals 7

    if-eqz p0, :cond_0

    .line 76
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/spdy/q;->checkOffsetAndCount(JJJ)V

    .line 78
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    new-instance p0, Lcom/koushikdutta/async/http/spdy/c;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/spdy/c;-><init>([B)V

    return-object p0

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/koushikdutta/async/http/spdy/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-ltz p1, :cond_2

    .line 159
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    .line 161
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 162
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 164
    :cond_1
    new-instance p0, Lcom/koushikdutta/async/http/spdy/c;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/spdy/c;-><init>([B)V

    return-object p0

    .line 157
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "byteCount < 0: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final base64()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 243
    instance-of v0, p1, Lcom/koushikdutta/async/http/spdy/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/koushikdutta/async/http/spdy/c;

    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getByte(I)B
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/c;->c:I

    if-eqz v0, :cond_0

    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/c;->c:I

    return v0
.end method

.method public final hex()Ljava/lang/String;
    .locals 9

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 121
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 122
    sget-object v7, Lcom/koushikdutta/async/http/spdy/c;->b:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 123
    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    array-length v0, v0

    return v0
.end method

.method public final toAsciiLowercase()Lcom/koushikdutta/async/http/spdy/c;
    .locals 6

    const/4 v0, 0x0

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 175
    aget-byte v2, v1, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_2

    .line 180
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 181
    aput-byte v2, v1, v0

    .line 182
    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_1

    .line 183
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_0

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 185
    aput-byte v0, v1, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 187
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/spdy/c;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/spdy/c;-><init>([B)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final toAsciiUppercase()Lcom/koushikdutta/async/http/spdy/c;
    .locals 6

    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 200
    aget-byte v2, v1, v0

    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_2

    .line 205
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    .line 206
    aput-byte v2, v1, v0

    .line 207
    :goto_1
    array-length v0, v1

    if-ge v5, v0, :cond_1

    .line 208
    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_0

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    .line 210
    aput-byte v0, v1, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 212
    :cond_1
    new-instance v0, Lcom/koushikdutta/async/http/spdy/c;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/spdy/c;-><init>([B)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final toByteArray()[B
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, "ByteString[size=0]"

    return-object v0

    .line 256
    :cond_0
    array-length v0, v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-gt v0, v1, :cond_1

    .line 257
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/c;->hex()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "ByteString[size=%s data=%s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :cond_1
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "ByteString[size=%s md5=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "MD5"

    .line 262
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/c;->of([B)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/c;->hex()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 261
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 264
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final utf8()Ljava/lang/String;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    sget-object v2, Lcom/koushikdutta/async/e/b;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/c;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
