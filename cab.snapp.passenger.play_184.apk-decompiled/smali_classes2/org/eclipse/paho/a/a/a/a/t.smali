.class public final Lorg/eclipse/paho/a/a/a/a/t;
.super Lorg/eclipse/paho/a/a/a/a/u;
.source "SourceFile"


# instance fields
.field private d:[Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0xa

    .line 58
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    .line 59
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 60
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/a/a/a/a/t;->b:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/eclipse/paho/a/a/a/a/t;->e:I

    new-array p1, p1, [Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/t;->d:[Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void

    .line 68
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a/t;->d:[Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/paho/a/a/a/a/t;->e:I

    invoke-static {p2}, Lorg/eclipse/paho/a/a/a/a/t;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    .line 41
    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/t;->d:[Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()B
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/a/t;->c:Z

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

    .line 99
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/t;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 102
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 105
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

    .line 111
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 113
    :goto_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/t;->d:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/t;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v1, v3}, Lorg/eclipse/paho/a/a/a/a/t;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
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

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    invoke-super {p0}, Lorg/eclipse/paho/a/a/a/a/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " names:["

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 83
    :goto_0
    iget v2, p0, Lorg/eclipse/paho/a/a/a/a/t;->e:I

    if-lt v1, v2, :cond_0

    const-string v1, "]"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ", "

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a/t;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
