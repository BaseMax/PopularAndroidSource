.class public Lcom/pusher/java_websocket/drafts/a;
.super Lcom/pusher/java_websocket/drafts/Draft;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/java_websocket/drafts/a$a;
    }
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field private d:Ljava/nio/ByteBuffer;

.field private e:Lcom/pusher/java_websocket/framing/Framedata;

.field private final f:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/pusher/java_websocket/drafts/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/pusher/java_websocket/drafts/a;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/pusher/java_websocket/drafts/Draft;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/a;->e:Lcom/pusher/java_websocket/framing/Framedata;

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/a;->f:Ljava/util/Random;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "SHA1"

    .line 179
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/pusher/java_websocket/e/a;->encodeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(JI)[B
    .locals 5

    .line 212
    new-array v0, p2, [B

    mul-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, -0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v3, p0, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 215
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static readVersion(Lcom/pusher/java_websocket/c/f;)I
    .locals 2

    const-string v0, "Sec-WebSocket-Version"

    .line 49
    invoke-interface {p0, v0}, Lcom/pusher/java_websocket/c/f;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 53
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v1
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/h;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    const-string v0, "Sec-WebSocket-Key"

    .line 69
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->hasFieldValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {p2, v1}, Lcom/pusher/java_websocket/c/h;->hasFieldValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p2, v1}, Lcom/pusher/java_websocket/c/h;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/pusher/java_websocket/drafts/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    .line 78
    :cond_1
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    .line 70
    :cond_2
    :goto_0
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1
.end method

.method public acceptHandshakeAsServer(Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/pusher/java_websocket/drafts/a;->readVersion(Lcom/pusher/java_websocket/c/f;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    .line 86
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/pusher/java_websocket/drafts/a;->a(Lcom/pusher/java_websocket/c/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    :cond_2
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1
.end method

.method public copyInstance()Lcom/pusher/java_websocket/drafts/Draft;
    .locals 1

    .line 389
    new-instance v0, Lcom/pusher/java_websocket/drafts/a;

    invoke-direct {v0}, Lcom/pusher/java_websocket/drafts/a;-><init>()V

    return-object v0
.end method

.method public createBinaryFrame(Lcom/pusher/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 13

    .line 92
    invoke-interface {p1}, Lcom/pusher/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->a:Lcom/pusher/java_websocket/WebSocket$Role;

    sget-object v2, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 94
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v5, 0x7d

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-gt v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const v5, 0xffff

    if-gt v2, v5, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    if-le v2, v3, :cond_3

    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    add-int/2addr v5, v3

    const/4 v8, 0x4

    if-eqz v1, :cond_4

    const/4 v9, 0x4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    add-int/2addr v5, v9

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 96
    invoke-interface {p1}, Lcom/pusher/java_websocket/framing/Framedata;->getOpcode()Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    move-result-object v9

    .line 1159
    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    goto :goto_4

    .line 1161
    :cond_5
    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    .line 1163
    :cond_6
    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_7

    const/4 v9, 0x2

    goto :goto_4

    .line 1165
    :cond_7
    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_8

    const/16 v9, 0x8

    goto :goto_4

    .line 1167
    :cond_8
    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_9

    const/16 v9, 0x9

    goto :goto_4

    .line 1169
    :cond_9
    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v9, v10, :cond_17

    const/16 v9, 0xa

    .line 97
    :goto_4
    invoke-interface {p1}, Lcom/pusher/java_websocket/framing/Framedata;->isFin()Z

    move-result p1

    const/16 v10, -0x80

    if-eqz p1, :cond_a

    const/16 p1, -0x80

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    :goto_5
    int-to-byte p1, p1

    or-int/2addr p1, v9

    int-to-byte p1, p1

    .line 99
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    int-to-long v11, p1

    invoke-static {v11, v12, v2}, Lcom/pusher/java_websocket/drafts/a;->a(JI)[B

    move-result-object p1

    .line 101
    sget-boolean v9, Lcom/pusher/java_websocket/drafts/a;->c:Z

    if-nez v9, :cond_c

    array-length v9, p1

    if-ne v9, v2, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_6
    if-ne v2, v3, :cond_e

    .line 104
    aget-byte p1, p1, v4

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    or-int/2addr p1, v10

    int-to-byte p1, p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_e
    if-ne v2, v6, :cond_10

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    :goto_8
    or-int/lit8 v2, v10, 0x7e

    int-to-byte v2, v2

    .line 106
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_10
    if-ne v2, v7, :cond_16

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    or-int/lit8 v2, v10, 0x7f

    int-to-byte v2, v2

    .line 109
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_a
    if-eqz v1, :cond_12

    .line 115
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 116
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->f:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    :goto_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v2, v4, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v3

    goto :goto_b

    .line 122
    :cond_12
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 124
    :cond_13
    sget-boolean p1, Lcom/pusher/java_websocket/drafts/a;->c:Z

    if-nez p1, :cond_15

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_c

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    .line 125
    :cond_15
    :goto_c
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v5

    .line 112
    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Size representation not supported/specified"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1171
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t know how to handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw p1

    :goto_e
    goto :goto_d
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/pusher/java_websocket/framing/d;

    invoke-direct {v0}, Lcom/pusher/java_websocket/framing/d;-><init>()V

    .line 148
    :try_start_0
    invoke-static {p1}, Lcom/pusher/java_websocket/e/b;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 152
    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setFin(Z)V

    .line 153
    sget-object p1, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setOptcode(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    .line 154
    invoke-interface {v0, p2}, Lcom/pusher/java_websocket/framing/c;->setTransferemasked(Z)V

    .line 155
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 150
    new-instance p2, Lcom/pusher/java_websocket/b/f;

    invoke-direct {p2, p1}, Lcom/pusher/java_websocket/b/f;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/pusher/java_websocket/framing/d;

    invoke-direct {v0}, Lcom/pusher/java_websocket/framing/d;-><init>()V

    .line 134
    :try_start_0
    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 138
    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setFin(Z)V

    .line 139
    sget-object p1, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setOptcode(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    .line 140
    invoke-interface {v0, p2}, Lcom/pusher/java_websocket/framing/c;->setTransferemasked(Z)V

    .line 141
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    new-instance p2, Lcom/pusher/java_websocket/b/f;

    invoke-direct {p2, p1}, Lcom/pusher/java_websocket/b/f;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getCloseHandshakeType()Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .line 394
    sget-object v0, Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lcom/pusher/java_websocket/c/b;)Lcom/pusher/java_websocket/c/b;
    .locals 2

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    .line 188
    invoke-interface {p1, v0, v1}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    .line 189
    invoke-interface {p1, v1, v0}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "8"

    .line 190
    invoke-interface {p1, v0, v1}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 193
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->f:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 194
    invoke-static {v0}, Lcom/pusher/java_websocket/e/a;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1, v0}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/i;)Lcom/pusher/java_websocket/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    .line 201
    invoke-interface {p2, v0, v1}, Lcom/pusher/java_websocket/c/i;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    .line 202
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/pusher/java_websocket/c/i;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Switching Protocols"

    .line 203
    invoke-interface {p2, v0}, Lcom/pusher/java_websocket/c/i;->setHttpStatusMessage(Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Key"

    .line 204
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    invoke-static {p1}, Lcom/pusher/java_websocket/drafts/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0, p1}, Lcom/pusher/java_websocket/c/i;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 206
    :cond_0
    new-instance p1, Lcom/pusher/java_websocket/b/d;

    const-string p2, "missing Sec-WebSocket-Key"

    invoke-direct {p1, p2}, Lcom/pusher/java_websocket/b/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/e;,
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    .line 250
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 252
    iget-object v2, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/pusher/java_websocket/drafts/a;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/pusher/java_websocket/framing/Framedata;

    move-result-object v1

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 265
    iput-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/pusher/java_websocket/drafts/a$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    .line 270
    invoke-virtual {v0}, Lcom/pusher/java_websocket/drafts/a$a;->getPreferedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/drafts/a;->checkAlloc(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    sget-boolean v1, Lcom/pusher/java_websocket/drafts/a;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 272
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 273
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 274
    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {p0, p1}, Lcom/pusher/java_websocket/drafts/a;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 281
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 284
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/pusher/java_websocket/drafts/a;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/pusher/java_websocket/framing/Framedata;

    move-result-object v1

    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/pusher/java_websocket/drafts/a$a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 288
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 289
    invoke-virtual {v1}, Lcom/pusher/java_websocket/drafts/a$a;->getPreferedSize()I

    move-result v1

    .line 290
    invoke-virtual {p0, v1}, Lcom/pusher/java_websocket/drafts/a;->checkAlloc(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    .line 291
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_4
    return-object v0
.end method

.method public translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/pusher/java_websocket/framing/Framedata;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/drafts/a$a;,
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_15

    .line 303
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    shr-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v6, v2, 0x7f

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    int-to-byte v6, v6

    if-nez v6, :cond_14

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit8 v8, v6, -0x80

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v1, :cond_2

    packed-switch v2, :pswitch_data_0

    .line 1237
    new-instance p1, Lcom/pusher/java_websocket/b/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknow optcode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1234
    :pswitch_0
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 1232
    :pswitch_1
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 1230
    :pswitch_2
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 1227
    :cond_2
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 1225
    :cond_3
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 1223
    :cond_4
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    :goto_2
    if-nez v3, :cond_6

    .line 314
    sget-object v9, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v9, :cond_5

    sget-object v9, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v9, :cond_5

    sget-object v9, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v9, :cond_5

    goto :goto_3

    .line 315
    :cond_5
    new-instance p1, Lcom/pusher/java_websocket/b/c;

    const-string v0, "control frames may no be fragmented"

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    const/16 v9, 0xa

    if-ltz v6, :cond_7

    const/16 v10, 0x7d

    if-le v6, v10, :cond_b

    .line 321
    :cond_7
    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v10, :cond_13

    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v10, :cond_13

    sget-object v10, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v10, :cond_13

    const/16 v10, 0x7e

    if-ne v6, v10, :cond_9

    if-lt v0, v7, :cond_8

    const/4 v6, 0x3

    new-array v6, v6, [B

    .line 329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v6, v5

    .line 330
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v6, v1

    .line 331
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v1, 0x4

    goto :goto_5

    .line 327
    :cond_8
    new-instance p1, Lcom/pusher/java_websocket/drafts/a$a;

    invoke-direct {p1, p0, v7}, Lcom/pusher/java_websocket/drafts/a$a;-><init>(Lcom/pusher/java_websocket/drafts/a;I)V

    throw p1

    :cond_9
    if-lt v0, v9, :cond_12

    const/16 v1, 0x8

    new-array v5, v1, [B

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_a

    .line 338
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    aput-byte v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 340
    :cond_a
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v5, v10

    if-gtz v1, :cond_11

    long-to-int v6, v5

    const/16 v1, 0xa

    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    const/4 v5, 0x4

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    add-int/2addr v1, v5

    add-int/2addr v1, v6

    if-lt v0, v1, :cond_10

    .line 357
    invoke-virtual {p0, v6}, Lcom/pusher/java_websocket/drafts/a;->checkAlloc(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v8, :cond_d

    new-array v1, v7, [B

    .line 360
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_7
    if-ge v4, v6, :cond_e

    .line 362
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    rem-int/lit8 v7, v4, 0x4

    aget-byte v7, v1, v7

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 365
    :cond_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    :cond_e
    sget-object p1, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v2, p1, :cond_f

    .line 371
    new-instance p1, Lcom/pusher/java_websocket/framing/b;

    invoke-direct {p1}, Lcom/pusher/java_websocket/framing/b;-><init>()V

    goto :goto_8

    .line 373
    :cond_f
    new-instance p1, Lcom/pusher/java_websocket/framing/d;

    invoke-direct {p1}, Lcom/pusher/java_websocket/framing/d;-><init>()V

    .line 374
    invoke-interface {p1, v3}, Lcom/pusher/java_websocket/framing/c;->setFin(Z)V

    .line 375
    invoke-interface {p1, v2}, Lcom/pusher/java_websocket/framing/c;->setOptcode(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    .line 377
    :goto_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 378
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/framing/c;->setPayload(Ljava/nio/ByteBuffer;)V

    return-object p1

    .line 355
    :cond_10
    new-instance p1, Lcom/pusher/java_websocket/drafts/a$a;

    invoke-direct {p1, p0, v1}, Lcom/pusher/java_websocket/drafts/a$a;-><init>(Lcom/pusher/java_websocket/drafts/a;I)V

    throw p1

    .line 342
    :cond_11
    new-instance p1, Lcom/pusher/java_websocket/b/e;

    const-string v0, "Payloadsize is to big..."

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_12
    new-instance p1, Lcom/pusher/java_websocket/drafts/a$a;

    invoke-direct {p1, p0, v9}, Lcom/pusher/java_websocket/drafts/a$a;-><init>(Lcom/pusher/java_websocket/drafts/a;I)V

    throw p1

    .line 322
    :cond_13
    new-instance p1, Lcom/pusher/java_websocket/b/c;

    const-string v0, "more than 125 octets"

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_14
    new-instance p1, Lcom/pusher/java_websocket/b/c;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad rsv "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_15
    new-instance p1, Lcom/pusher/java_websocket/drafts/a$a;

    invoke-direct {p1, p0, v1}, Lcom/pusher/java_websocket/drafts/a$a;-><init>(Lcom/pusher/java_websocket/drafts/a;I)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
