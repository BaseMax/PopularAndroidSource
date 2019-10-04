.class public final Lcom/koushikdutta/async/http/d/f;
.super Lcom/koushikdutta/async/http/d/g;
.source "SourceFile"


# instance fields
.field d:Z

.field protected e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/d/g;-><init>(Ljava/util/zip/Inflater;)V

    .line 40
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/d/f;->d:Z

    .line 41
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/d/f;->e:Ljava/util/zip/CRC32;

    return-void
.end method

.method static a([BLjava/nio/ByteOrder;)S
    .locals 3

    .line 19
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 20
    aget-byte p1, p0, v1

    shl-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v2

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 22
    :cond_0
    aget-byte p1, p0, v2

    shl-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v1

    goto :goto_0
.end method

.method public static unsignedToBytes(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/d/f;->d:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance p2, Lcom/koushikdutta/async/z;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/z;-><init>(Lcom/koushikdutta/async/n;)V

    const/16 v0, 0xa

    .line 52
    new-instance v1, Lcom/koushikdutta/async/http/d/f$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/http/d/f$1;-><init>(Lcom/koushikdutta/async/http/d/f;Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/z;)V

    invoke-virtual {p2, v0, v1}, Lcom/koushikdutta/async/z;->readByteArray(ILcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;

    return-void

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/d/g;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    return-void
.end method
