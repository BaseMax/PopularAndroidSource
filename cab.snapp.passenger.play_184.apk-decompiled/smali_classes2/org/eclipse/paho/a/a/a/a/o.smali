.class public final Lorg/eclipse/paho/a/a/a/a/o;
.super Lorg/eclipse/paho/a/a/a/a/h;
.source "SourceFile"


# instance fields
.field private d:Lorg/eclipse/paho/a/a/q;

.field private e:Ljava/lang/String;

.field private f:[B


# direct methods
.method public constructor <init>(B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 51
    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/a/h;-><init>(B)V

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->f:[B

    .line 52
    new-instance v1, Lorg/eclipse/paho/a/a/a/a/p;

    invoke-direct {v1}, Lorg/eclipse/paho/a/a/a/a/p;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    .line 53
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    shr-int/lit8 v2, p1, 0x1

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/a/a/q;->setQos(I)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/a/a/q;->setRetained(Z)V

    :cond_0
    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 58
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    check-cast p1, Lorg/eclipse/paho/a/a/a/a/p;

    invoke-virtual {p1, v1}, Lorg/eclipse/paho/a/a/a/a/p;->setDuplicate(Z)V

    .line 61
    :cond_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    new-instance v0, Lorg/eclipse/paho/a/a/a/a/a;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/a/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    .line 63
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/a/o;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->e:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v1

    if-lez v1, :cond_2

    .line 66
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->b:I

    .line 68
    :cond_2
    array-length p2, p2

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/a;->getCounter()I

    move-result v0

    sub-int/2addr p2, v0

    new-array p2, p2, [B

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 70
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 71
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/a/a/q;->setPayload([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V
    .locals 1

    const/4 v0, 0x3

    .line 38
    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/a/h;-><init>(B)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->f:[B

    .line 39
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/o;->e:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    return-void
.end method


# virtual methods
.method protected final a()B
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 117
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/q;->isRetained()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/q;->isDuplicate()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->c:Z

    if-eqz v1, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    return v0
.end method

.method protected final b()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 164
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 166
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/o;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/a/a/o;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v2

    if-lez v2, :cond_0

    .line 168
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/o;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 170
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getMessage()Lorg/eclipse/paho/a/a/q;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    return-object v0
.end method

.method public final getPayload()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->f:[B

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    .line 1136
    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/q;->getPayload()[B

    move-result-object v0

    .line 141
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->f:[B

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->f:[B

    return-object v0
.end method

.method public final getPayloadLength()I
    .locals 1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/o;->getPayload()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getTopicName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final isMessageIdRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setMessageId(I)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lorg/eclipse/paho/a/a/a/a/h;->setMessageId(I)V

    .line 157
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    instance-of v1, v0, Lorg/eclipse/paho/a/a/a/a/p;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Lorg/eclipse/paho/a/a/a/a/p;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/a/p;->setMessageId(I)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/q;->getPayload()[B

    move-result-object v1

    .line 79
    array-length v2, v1

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_1

    .line 94
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "?"

    .line 99
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    invoke-super {p0}, Lorg/eclipse/paho/a/a/a/a/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " qos:"

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, " msgId:"

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/eclipse/paho/a/a/a/a/o;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, " retained:"

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/o;->d:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/q;->isRetained()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, " dup:"

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, p0, Lorg/eclipse/paho/a/a/a/a/o;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, " topic:\""

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " payload:[hex:"

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, " utf8:\""

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " length:"

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_1
    aget-byte v5, v1, v4

    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 84
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
