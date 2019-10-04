.class public Lorg/eclipse/paho/a/a/a/a/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/eclipse/paho/a/a/b/b;

.field private c:Lorg/eclipse/paho/a/a/a/b;

.field private d:Ljava/io/DataInputStream;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:I

.field private g:I

.field private h:[B


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/a/a/a/b;Ljava/io/InputStream;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    const-class v0, Lorg/eclipse/paho/a/a/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/f;->a:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/f;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/f;->c:Lorg/eclipse/paho/a/a/a/b;

    .line 48
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/f;->c:Lorg/eclipse/paho/a/a/a/b;

    .line 49
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/f;->d:Ljava/io/DataInputStream;

    .line 50
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/f;->e:Ljava/io/ByteArrayOutputStream;

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/f;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/f;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/f;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readMqttWireMessage()Lorg/eclipse/paho/a/a/a/a/u;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 92
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->d:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 93
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->c:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/a/a/a/b;->notifyReceivedBytes(I)V

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    if-lez v4, :cond_0

    const/16 v5, 0xe

    if-gt v4, v5, :cond_0

    .line 101
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->d:Ljava/io/DataInputStream;

    invoke-static {v4}, Lorg/eclipse/paho/a/a/a/a/u;->readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/a/a/a/a/w;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a/w;->getValue()I

    move-result v4

    iput v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    .line 102
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->e:Ljava/io/ByteArrayOutputStream;

    iget v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/eclipse/paho/a/a/a/a/u;->encodeMBI(J)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    add-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->h:[B

    .line 106
    iput v3, p0, Lorg/eclipse/paho/a/a/a/a/f;->g:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d6c

    .line 99
    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object v1

    throw v1

    .line 110
    :cond_1
    :goto_0
    iget v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    if-ltz v1, :cond_5

    .line 1131
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->g:I

    add-int/2addr v1, v4

    .line 1132
    iget v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    iget v5, p0, Lorg/eclipse/paho/a/a/a/a/f;->g:I

    sub-int/2addr v4, v5

    if-ltz v4, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v4, :cond_2

    const/4 v1, -0x1

    .line 115
    iput v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->f:I

    .line 117
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 118
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->h:[B

    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->h:[B

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a/u;->createWireMessage([B)Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a/f;->b:Lorg/eclipse/paho/a/a/b/b;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/f;->a:Ljava/lang/String;

    const-string v5, "readMqttWireMessage"

    const-string v6, "301"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-interface {v1, v4, v5, v6, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1139
    :cond_2
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/a/f;->d:Ljava/io/DataInputStream;

    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/a/f;->h:[B

    add-int v8, v1, v5

    sub-int v9, v4, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    if-ltz v6, :cond_3

    .line 1150
    :try_start_2
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/a/f;->c:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v7, v6}, Lorg/eclipse/paho/a/a/a/b;->notifyReceivedBytes(I)V

    add-int/2addr v5, v6

    goto :goto_1

    .line 1148
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :catch_0
    move-exception v1

    .line 1142
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/f;->g:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/paho/a/a/a/a/f;->g:I

    .line 1143
    throw v1

    .line 1134
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    :goto_2
    return-object v0
.end method
