.class public abstract Lorg/eclipse/paho/a/a/a/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MESSAGE_TYPE_CONNACK:B = 0x2t

.field public static final MESSAGE_TYPE_CONNECT:B = 0x1t

.field public static final MESSAGE_TYPE_DISCONNECT:B = 0xet

.field public static final MESSAGE_TYPE_PINGREQ:B = 0xct

.field public static final MESSAGE_TYPE_PINGRESP:B = 0xdt

.field public static final MESSAGE_TYPE_PUBACK:B = 0x4t

.field public static final MESSAGE_TYPE_PUBCOMP:B = 0x7t

.field public static final MESSAGE_TYPE_PUBLISH:B = 0x3t

.field public static final MESSAGE_TYPE_PUBREC:B = 0x5t

.field public static final MESSAGE_TYPE_PUBREL:B = 0x6t

.field public static final MESSAGE_TYPE_SUBACK:B = 0x9t

.field public static final MESSAGE_TYPE_SUBSCRIBE:B = 0x8t

.field public static final MESSAGE_TYPE_UNSUBACK:B = 0xbt

.field public static final MESSAGE_TYPE_UNSUBSCRIBE:B = 0xat

.field protected static final a:Ljava/nio/charset/Charset;

.field private static final d:[Ljava/lang/String;


# instance fields
.field protected b:I

.field protected c:Z

.field private e:B

.field private f:Lorg/eclipse/paho/a/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/eclipse/paho/a/a/a/a/u;->a:Ljava/nio/charset/Charset;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONNACK"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PUBLISH"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PUBACK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PUBREC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PUBREL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PUBCOMP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SUBSCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SUBACK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "UNSUBSCRIBE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UNSUBACK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PINGREQ"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PINGRESP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DISCONNECT"

    aput-object v2, v0, v1

    .line 54
    sput-object v0, Lorg/eclipse/paho/a/a/a/a/u;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a/u;->c:Z

    .line 78
    iput-byte p1, p0, Lorg/eclipse/paho/a/a/a/a/u;->e:B

    .line 81
    iput v0, p0, Lorg/eclipse/paho/a/a/a/a/u;->b:I

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Lorg/eclipse/paho/a/a/a/a/u;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 187
    :try_start_0
    new-instance v0, Lorg/eclipse/paho/a/a/a/a/a;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/a/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    .line 188
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v2, v1, 0x4

    int-to-byte v2, v2

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 192
    invoke-static {p0}, Lorg/eclipse/paho/a/a/a/a/u;->readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/a/a/a/a/w;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/a/a/w;->getValue()I

    move-result v3

    int-to-long v3, v3

    .line 193
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/a;->getCounter()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 196
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/a;->getCounter()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v5, v3

    const/4 v0, 0x0

    new-array v3, v0, [B

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_0

    long-to-int v3, v5

    .line 200
    new-array v3, v3, [B

    .line 201
    array-length v4, v3

    invoke-virtual {p0, v3, v0, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_0
    const/4 p0, 0x1

    if-ne v2, p0, :cond_1

    .line 205
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/d;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/d;-><init>(B[B)V

    goto/16 :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne v2, p0, :cond_2

    .line 207
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/o;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/o;-><init>(B[B)V

    goto/16 :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne v2, p0, :cond_3

    .line 209
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/k;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/k;-><init>(B[B)V

    goto/16 :goto_0

    :cond_3
    const/4 p0, 0x7

    if-ne v2, p0, :cond_4

    .line 211
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/l;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/l;-><init>(B[B)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    if-ne v2, p0, :cond_5

    .line 213
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/c;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/c;-><init>(B[B)V

    goto :goto_0

    :cond_5
    const/16 p0, 0xc

    if-ne v2, p0, :cond_6

    .line 215
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/i;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/i;-><init>(B[B)V

    goto :goto_0

    :cond_6
    const/16 p0, 0xd

    if-ne v2, p0, :cond_7

    .line 217
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/j;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/j;-><init>(B[B)V

    goto :goto_0

    :cond_7
    const/16 p0, 0x8

    if-ne v2, p0, :cond_8

    .line 219
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/r;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/r;-><init>(B[B)V

    goto :goto_0

    :cond_8
    const/16 p0, 0x9

    if-ne v2, p0, :cond_9

    .line 221
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/q;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/q;-><init>(B[B)V

    goto :goto_0

    :cond_9
    const/16 p0, 0xa

    if-ne v2, p0, :cond_a

    .line 223
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/t;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/t;-><init>(B[B)V

    goto :goto_0

    :cond_a
    const/16 p0, 0xb

    if-ne v2, p0, :cond_b

    .line 225
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/s;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/s;-><init>(B[B)V

    goto :goto_0

    :cond_b
    const/4 p0, 0x6

    if-ne v2, p0, :cond_c

    .line 227
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/n;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/n;-><init>(B[B)V

    goto :goto_0

    :cond_c
    const/4 v0, 0x5

    if-ne v2, v0, :cond_d

    .line 229
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/m;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/m;-><init>(B[B)V

    goto :goto_0

    :cond_d
    const/16 v0, 0xe

    if-ne v2, v0, :cond_e

    .line 231
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/e;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/paho/a/a/a/a/e;-><init>(B[B)V

    :goto_0
    return-object p0

    .line 233
    :cond_e
    invoke-static {p0}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 237
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 381
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 385
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    const v4, 0xfffe

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 389
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 390
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_4

    and-int/lit16 v6, v2, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v6

    const v6, 0xffff

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_4

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 400
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const v3, 0xfdd0

    if-lt v2, v3, :cond_3

    if-eq v2, v4, :cond_4

    if-ge v2, v3, :cond_4

    const v3, 0xfddf

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v1

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 407
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Invalid UTF-8 char: [%x]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static createWireMessage(Lorg/eclipse/paho/a/a/r;)Lorg/eclipse/paho/a/a/a/a/u;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 166
    invoke-interface {p0}, Lorg/eclipse/paho/a/a/r;->getPayloadBytes()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_0
    move-object v5, v0

    .line 175
    new-instance v0, Lorg/eclipse/paho/a/a/a/a/v;

    invoke-interface {p0}, Lorg/eclipse/paho/a/a/r;->getHeaderBytes()[B

    move-result-object v2

    invoke-interface {p0}, Lorg/eclipse/paho/a/a/r;->getHeaderOffset()I

    move-result v3

    .line 176
    invoke-interface {p0}, Lorg/eclipse/paho/a/a/r;->getHeaderLength()I

    move-result v4

    invoke-interface {p0}, Lorg/eclipse/paho/a/a/r;->getPayloadOffset()I

    move-result v6

    invoke-interface {p0}, Lorg/eclipse/paho/a/a/r;->getPayloadLength()I

    move-result v7

    move-object v1, v0

    .line 175
    invoke-direct/range {v1 .. v7}, Lorg/eclipse/paho/a/a/a/a/v;-><init>([BII[BII)V

    .line 177
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a/u;->a(Ljava/io/InputStream;)Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object p0

    return-object p0
.end method

.method public static createWireMessage([B)Lorg/eclipse/paho/a/a/a/a/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 182
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a/u;->a(Ljava/io/InputStream;)Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object p0

    return-object p0
.end method

.method public static decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 360
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 362
    new-array v0, v0, [B

    .line 363
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 364
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/paho/a/a/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 365
    invoke-static {p0}, Lorg/eclipse/paho/a/a/a/a/u;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 369
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static encodeMBI(J)[B
    .locals 6

    long-to-int v0, p0

    .line 242
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a/u;->validateVariableByteInt(I)V

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :cond_0
    const-wide/16 v2, 0x80

    .line 248
    rem-long v4, p0, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 249
    div-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, p0, v2

    if-lez v5, :cond_1

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 253
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    cmp-long v4, p0, v2

    if-lez v4, :cond_2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 257
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 327
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/a/u;->a(Ljava/lang/String;)V

    .line 330
    :try_start_0
    sget-object v0, Lorg/eclipse/paho/a/a/a/a/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 331
    array-length v0, p1

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 332
    array-length v1, p1

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 334
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 335
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 336
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 340
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 338
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/a/a/a/a/w;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    add-int/2addr v1, v0

    and-int/lit8 v5, v4, 0x7f

    mul-int v5, v5, v3

    add-int/2addr v2, v5

    mul-int/lit16 v3, v3, 0x80

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    if-ltz v2, :cond_1

    const p0, 0xfffffff

    if-gt v2, p0, :cond_1

    .line 287
    new-instance p0, Lorg/eclipse/paho/a/a/a/a/w;

    invoke-direct {p0, v2, v1}, Lorg/eclipse/paho/a/a/a/a/w;-><init>(II)V

    return-object p0

    .line 283
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "This property must be a number between 0 and 268435455. Read value was: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static validateVariableByteInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const v0, 0xfffffff

    if-gt p0, v0, :cond_0

    return-void

    .line 416
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This property must be a number between 0 and 268435455"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract a()B
.end method

.method protected abstract b()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method protected final c()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 292
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 294
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/u;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 295
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 296
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHeader()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->getType()B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->a()B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    .line 141
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->b()[B

    move-result-object v1

    .line 142
    array-length v2, v1

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->getPayload()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    .line 144
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 146
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    int-to-long v5, v2

    .line 147
    invoke-static {v5, v6}, Lorg/eclipse/paho/a/a/a/a/u;->encodeMBI(J)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 148
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 149
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 150
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/eclipse/paho/a/a/a/a/u;->b:I

    return v0
.end method

.method public getPayload()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getToken()Lorg/eclipse/paho/a/a/v;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/u;->f:Lorg/eclipse/paho/a/a/v;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .line 107
    iget-byte v0, p0, Lorg/eclipse/paho/a/a/a/a/u;->e:B

    return v0
.end method

.method public isMessageIdRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRetryable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDuplicate(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/a/a/u;->c:Z

    return-void
.end method

.method public setMessageId(I)V
    .locals 0

    .line 124
    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/u;->b:I

    return-void
.end method

.method public setToken(Lorg/eclipse/paho/a/a/v;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/u;->f:Lorg/eclipse/paho/a/a/v;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 440
    sget-object v0, Lorg/eclipse/paho/a/a/a/a/u;->d:[Ljava/lang/String;

    iget-byte v1, p0, Lorg/eclipse/paho/a/a/a/a/u;->e:B

    aget-object v0, v0, v1

    return-object v0
.end method
