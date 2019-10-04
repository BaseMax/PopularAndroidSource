.class public final Lorg/eclipse/paho/a/a/a/a/r;
.super Lorg/eclipse/paho/a/a/a/a/u;
.source "SourceFile"


# instance fields
.field private d:[Ljava/lang/String;

.field private e:[I

.field private f:I


# direct methods
.method public constructor <init>(B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x8

    .line 46
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    .line 47
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/r;->b:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/r;->f:I

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a/r;->d:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 53
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/r;->e:[I

    :goto_0
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void

    .line 57
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/r;->d:[Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/paho/a/a/a/a/r;->f:I

    invoke-static {p2}, Lorg/eclipse/paho/a/a/a/a/r;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 58
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/r;->e:[I

    iget v1, p0, Lorg/eclipse/paho/a/a/a/a/r;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/paho/a/a/a/a/r;->f:I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 2

    const/16 v0, 0x8

    .line 75
    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 80
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/r;->d:[Ljava/lang/String;

    .line 81
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/r;->e:[I

    .line 82
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/r;->d:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/r;->e:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 86
    array-length p1, p1

    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/r;->f:I

    const/4 p1, 0x0

    .line 88
    :goto_0
    array-length v0, p2

    if-lt p1, v0, :cond_0

    return-void

    .line 89
    :cond_0
    aget v0, p2, p1

    invoke-static {v0}, Lorg/eclipse/paho/a/a/q;->validateQos(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method protected final a()B
    .locals 1

    .line 119
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a/r;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0
.end method

.method protected final b()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 124
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 126
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/r;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 127
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getPayload()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 136
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 138
    :goto_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/r;->d:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/r;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v1, v3}, Lorg/eclipse/paho/a/a/a/a/r;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/r;->e:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final isRetryable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    invoke-super {p0}, Lorg/eclipse/paho/a/a/a/a/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " names:["

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    :goto_0
    iget v3, p0, Lorg/eclipse/paho/a/a/a/a/r;->f:I

    const-string v4, ", "

    if-lt v2, v3, :cond_2

    const-string v2, "] qos:["

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :goto_1
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/r;->f:I

    if-lt v1, v2, :cond_0

    const-string v1, "]"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/r;->e:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v2, :cond_3

    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v3, "\""

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/r;->d:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
