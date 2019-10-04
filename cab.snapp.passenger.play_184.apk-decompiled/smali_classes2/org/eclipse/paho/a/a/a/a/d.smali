.class public final Lorg/eclipse/paho/a/a/a/a/d;
.super Lorg/eclipse/paho/a/a/a/a/u;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "Con"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lorg/eclipse/paho/a/a/q;

.field private g:Ljava/lang/String;

.field private h:[C

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>(B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 p1, 0x1

    .line 57
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    .line 58
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-static {p2}, Lorg/eclipse/paho/a/a/a/a/d;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    .line 63
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    .line 64
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/d;->i:I

    .line 65
    invoke-static {p2}, Lorg/eclipse/paho/a/a/a/a/d;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/d;->d:Ljava/lang/String;

    .line 66
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZILjava/lang/String;[CLorg/eclipse/paho/a/a/q;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    .line 72
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/d;->d:Ljava/lang/String;

    .line 73
    iput-boolean p3, p0, Lorg/eclipse/paho/a/a/a/a/d;->e:Z

    .line 74
    iput p4, p0, Lorg/eclipse/paho/a/a/a/a/d;->i:I

    .line 75
    iput-object p5, p0, Lorg/eclipse/paho/a/a/a/a/d;->g:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 77
    invoke-virtual {p6}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/d;->h:[C

    .line 79
    :cond_0
    iput-object p7, p0, Lorg/eclipse/paho/a/a/a/a/d;->f:Lorg/eclipse/paho/a/a/q;

    .line 80
    iput-object p8, p0, Lorg/eclipse/paho/a/a/a/a/d;->j:Ljava/lang/String;

    .line 81
    iput p2, p0, Lorg/eclipse/paho/a/a/a/a/d;->k:I

    return-void
.end method


# virtual methods
.method protected final a()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 100
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->k:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "MQIsdp"

    .line 104
    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/a/a/d;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->k:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const-string v2, "MQTT"

    .line 106
    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/a/a/d;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 108
    :cond_1
    :goto_0
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->k:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v2, 0x0

    .line 112
    iget-boolean v4, p0, Lorg/eclipse/paho/a/a/a/a/d;->e:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x2

    .line 116
    :cond_2
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/d;->f:Lorg/eclipse/paho/a/a/q;

    if-eqz v4, :cond_3

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    .line 118
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/d;->f:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v4

    shl-int/lit8 v3, v4, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 119
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/d;->f:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/q;->isRetained()Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 124
    :cond_3
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/d;->g:Ljava/lang/String;

    if-eqz v3, :cond_4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 126
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/d;->h:[C

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    .line 130
    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 131
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->i:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 132
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 133
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "Con"

    return-object v0
.end method

.method public final getPayload()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 141
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/a/a/d;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->f:Lorg/eclipse/paho/a/a/q;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/a/a/d;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->f:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/q;->getPayload()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 148
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->f:Lorg/eclipse/paho/a/a/q;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/q;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 151
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/a/a/d;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/d;->h:[C

    if-eqz v2, :cond_1

    .line 154
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/d;->h:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lorg/eclipse/paho/a/a/a/a/d;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isCleanSession()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a/d;->e:Z

    return v0
.end method

.method public final isMessageIdRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-super {p0}, Lorg/eclipse/paho/a/a/a/a/u;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " clientId "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " keepAliveInterval "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/paho/a/a/a/a/d;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
