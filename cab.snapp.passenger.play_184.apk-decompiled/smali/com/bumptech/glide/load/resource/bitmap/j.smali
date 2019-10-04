.class public final Lcom/bumptech/glide/load/resource/bitmap/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/j$d;,
        Lcom/bumptech/glide/load/resource/bitmap/j$a;,
        Lcom/bumptech/glide/load/resource/bitmap/j$c;,
        Lcom/bumptech/glide/load/resource/bitmap/j$b;
    }
.end annotation


# static fields
.field static final a:[B

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 37
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/j;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 43
    fill-array-data v0, :array_0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/j;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/resource/bitmap/j$b;)I
    .locals 12

    const/4 v0, 0x6

    .line 258
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/j$b;->b(I)S

    move-result v1

    const/16 v2, 0x4949

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_0

    .line 271
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 262
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 265
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3360
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    .line 277
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/j$b;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 278
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/j$b;->b(I)S

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_c

    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v2, 0xc

    add-int/2addr v3, v4

    .line 282
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/resource/bitmap/j$b;->b(I)S

    move-result v4

    const/16 v5, 0x112

    if-ne v4, v5, :cond_b

    add-int/lit8 v5, v3, 0x2

    .line 288
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/j$b;->b(I)S

    move-result v5

    const/4 v6, 0x3

    const-string v7, "DfltImageHeaderParser"

    if-lez v5, :cond_a

    const/16 v8, 0xc

    if-le v5, v8, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v8, v3, 0x4

    .line 297
    invoke-virtual {p0, v8}, Lcom/bumptech/glide/load/resource/bitmap/j$b;->a(I)I

    move-result v8

    if-gez v8, :cond_3

    .line 299
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    goto/16 :goto_5

    .line 305
    :cond_3
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const-string v10, " tagType="

    if-eqz v9, :cond_4

    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Got tagIndex="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " formatCode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " componentCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    :cond_4
    sget-object v9, Lcom/bumptech/glide/load/resource/bitmap/j;->b:[I

    aget v5, v9, v5

    add-int/2addr v8, v5

    const/4 v5, 0x4

    if-le v8, v5, :cond_5

    .line 312
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x8

    if-ltz v3, :cond_9

    .line 4364
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v3, v5, :cond_6

    goto :goto_3

    :cond_6
    if-ltz v8, :cond_8

    add-int/2addr v8, v3

    .line 5364
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/j$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v8, v4, :cond_7

    goto :goto_2

    .line 334
    :cond_7
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/resource/bitmap/j$b;->b(I)S

    move-result p0

    return p0

    .line 327
    :cond_8
    :goto_2
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    goto :goto_5

    .line 320
    :cond_9
    :goto_3
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal tagValueOffset="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 291
    :cond_a
    :goto_4
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/bumptech/glide/load/resource/bitmap/j$c;Lcom/bumptech/glide/load/b/a/b;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v0

    const v1, 0xffd8

    and-int v2, v0, v1

    if-eq v2, v1, :cond_1

    const/16 v1, 0x4d4d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4949

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, -0x1

    if-nez v0, :cond_2

    return v1

    .line 2218
    :cond_2
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt8()S

    move-result v0

    const/16 v2, 0xff

    const/4 v3, 0x3

    const-string v4, "DfltImageHeaderParser"

    if-eq v0, v2, :cond_4

    :cond_3
    :goto_2
    const/4 v2, -0x1

    goto :goto_3

    .line 2226
    :cond_4
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt8()S

    move-result v0

    const/16 v2, 0xda

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0xd9

    if-ne v0, v2, :cond_6

    goto :goto_2

    .line 2237
    :cond_6
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/16 v5, 0xe1

    if-eq v0, v5, :cond_7

    int-to-long v5, v2

    .line 2239
    invoke-interface {p0, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->skip(J)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-eqz v9, :cond_2

    .line 2241
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2242
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to skip enough data, type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wanted to skip: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but actually skipped: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    :goto_3
    if-ne v2, v1, :cond_8

    return v1

    .line 166
    :cond_8
    const-class v0, [B

    invoke-interface {p1, v2, v0}, Lcom/bumptech/glide/load/b/a/b;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3177
    :try_start_0
    invoke-interface {p0, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->read([BI)I

    move-result p0

    if-eq p0, v2, :cond_9

    .line 3179
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3180
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to read exif segment data, length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actually read: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3187
    :cond_9
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/j;->a([BI)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 3189
    new-instance p0, Lcom/bumptech/glide/load/resource/bitmap/j$b;

    invoke-direct {p0, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/j$b;-><init>([BI)V

    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/j;->a(Lcom/bumptech/glide/load/resource/bitmap/j$b;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_a
    :goto_4
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/b/a/b;->put(Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception p0

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/b/a/b;->put(Ljava/lang/Object;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static a(Lcom/bumptech/glide/load/resource/bitmap/j$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    .line 92
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_0
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 95
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, -0x76afb1b9

    if-ne v0, v2, :cond_2

    const-wide/16 v0, 0x15

    .line 100
    invoke-interface {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->skip(J)J

    .line 101
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getByte()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    .line 103
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_2
    shr-int/lit8 v2, v0, 0x8

    const v4, 0x474946

    if-ne v2, v4, :cond_3

    .line 108
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_3
    const v2, 0x52494646

    if-eq v0, v2, :cond_4

    .line 114
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_4
    const-wide/16 v4, 0x4

    .line 117
    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->skip(J)J

    .line 119
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, 0x57454250

    if-eq v0, v2, :cond_5

    .line 121
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    .line 124
    :cond_5
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getUInt16()I

    move-result v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, -0x100

    const v2, 0x56503800

    if-eq v1, v2, :cond_6

    .line 126
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_6
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x58

    if-ne v0, v1, :cond_8

    .line 130
    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->skip(J)J

    .line 131
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_7

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_7
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_8
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a

    .line 136
    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->skip(J)J

    .line 137
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/j$c;->getByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_9

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_9
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    .line 139
    :cond_a
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method private static a([BI)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 199
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/j;->a:[B

    array-length v1, v1

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 202
    :goto_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/j;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 203
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return p1
.end method


# virtual methods
.method public final getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/j$d;

    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/j$d;-><init>(Ljava/io/InputStream;)V

    .line 76
    invoke-static {p2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a/b;

    .line 75
    invoke-static {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/j;->a(Lcom/bumptech/glide/load/resource/bitmap/j$c;Lcom/bumptech/glide/load/b/a/b;)I

    move-result p1

    return p1
.end method

.method public final getOrientation(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/b/a/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/j$a;

    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/j$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 83
    invoke-static {p2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a/b;

    .line 82
    invoke-static {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/j;->a(Lcom/bumptech/glide/load/resource/bitmap/j$c;Lcom/bumptech/glide/load/b/a/b;)I

    move-result p1

    return p1
.end method

.method public final getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/j$d;

    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/j$d;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/j;->a(Lcom/bumptech/glide/load/resource/bitmap/j$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public final getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/j$a;

    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/j$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/j;->a(Lcom/bumptech/glide/load/resource/bitmap/j$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method
