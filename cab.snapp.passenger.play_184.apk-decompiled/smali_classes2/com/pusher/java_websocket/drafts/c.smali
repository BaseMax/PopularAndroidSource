.class public Lcom/pusher/java_websocket/drafts/c;
.super Lcom/pusher/java_websocket/drafts/Draft;
.source "SourceFile"


# static fields
.field public static final CR:B = 0xdt

.field public static final END_OF_FRAME:B = -0x1t

.field public static final LF:B = 0xat

.field public static final START_OF_FRAME:B


# instance fields
.field protected c:Z

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/nio/ByteBuffer;

.field private final f:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/pusher/java_websocket/drafts/Draft;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/pusher/java_websocket/drafts/c;->c:Z

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/c;->d:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/c;->f:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
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
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 126
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 129
    iget-boolean v0, p0, Lcom/pusher/java_websocket/drafts/c;->c:Z

    if-nez v0, :cond_0

    .line 131
    iput-boolean v1, p0, Lcom/pusher/java_websocket/drafts/c;->c:Z

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Lcom/pusher/java_websocket/b/c;

    const-string v0, "unexpected START_OF_FRAME"

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 133
    iget-boolean v0, p0, Lcom/pusher/java_websocket/drafts/c;->c:Z

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    new-instance v0, Lcom/pusher/java_websocket/framing/d;

    invoke-direct {v0}, Lcom/pusher/java_websocket/framing/d;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/pusher/java_websocket/framing/d;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/pusher/java_websocket/framing/d;->setFin(Z)V

    .line 142
    sget-object v1, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0, v1}, Lcom/pusher/java_websocket/framing/d;->setOptcode(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    .line 143
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/c;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iput-object v3, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    :cond_2
    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/pusher/java_websocket/drafts/c;->c:Z

    goto :goto_0

    .line 134
    :cond_3
    new-instance p1, Lcom/pusher/java_websocket/b/c;

    const-string v0, "unexpected END_OF_FRAME"

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_4
    iget-boolean v1, p0, Lcom/pusher/java_websocket/drafts/c;->c:Z

    if-eqz v1, :cond_7

    .line 149
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_5

    .line 150
    invoke-virtual {p0}, Lcom/pusher/java_websocket/drafts/c;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 151
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_6

    .line 152
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/pusher/java_websocket/drafts/c;->increaseBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    .line 154
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_7
    return-object v3

    .line 165
    :cond_8
    iget-object p1, p0, Lcom/pusher/java_websocket/drafts/c;->d:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/c;->d:Ljava/util/List;

    return-object p1
.end method

.method public acceptHandshakeAsClient(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/h;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .locals 1

    const-string v0, "WebSocket-Origin"

    .line 54
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Origin"

    invoke-interface {p2, v0}, Lcom/pusher/java_websocket/c/h;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/pusher/java_websocket/drafts/c;->a(Lcom/pusher/java_websocket/c/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    :cond_0
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1
.end method

.method public acceptHandshakeAsServer(Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .locals 1

    const-string v0, "Origin"

    .line 59
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->hasFieldValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/pusher/java_websocket/drafts/c;->a(Lcom/pusher/java_websocket/c/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    .line 62
    :cond_0
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1
.end method

.method public copyInstance()Lcom/pusher/java_websocket/drafts/Draft;
    .locals 1

    .line 203
    new-instance v0, Lcom/pusher/java_websocket/drafts/c;

    invoke-direct {v0}, Lcom/pusher/java_websocket/drafts/c;-><init>()V

    return-object v0
.end method

.method public createBinaryFrame(Lcom/pusher/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 67
    invoke-interface {p1}, Lcom/pusher/java_websocket/framing/Framedata;->getOpcode()Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    move-result-object v0

    sget-object v1, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v0, v1, :cond_0

    .line 71
    invoke-interface {p1}, Lcom/pusher/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 75
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    const/4 p1, -0x1

    .line 77
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "only text frames supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 191
    sget v0, Lcom/pusher/java_websocket/drafts/c;->INITIAL_FAMESIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
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

    .line 89
    new-instance v0, Lcom/pusher/java_websocket/framing/d;

    invoke-direct {v0}, Lcom/pusher/java_websocket/framing/d;-><init>()V

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/pusher/java_websocket/e/b;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 95
    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setFin(Z)V

    .line 96
    sget-object p1, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, p1}, Lcom/pusher/java_websocket/framing/c;->setOptcode(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    .line 97
    invoke-interface {v0, p2}, Lcom/pusher/java_websocket/framing/c;->setTransferemasked(Z)V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lcom/pusher/java_websocket/b/f;

    invoke-direct {p2, p1}, Lcom/pusher/java_websocket/b/f;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 0
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

    .line 84
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCloseHandshakeType()Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .line 187
    sget-object v0, Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public increaseBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/e;,
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/drafts/c;->checkAlloc(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lcom/pusher/java_websocket/c/b;)Lcom/pusher/java_websocket/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    .line 103
    invoke-interface {p1, v0, v1}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    .line 104
    invoke-interface {p1, v1, v0}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Origin"

    .line 105
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/b;->hasFieldValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "random"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pusher/java_websocket/drafts/c;->f:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/i;)Lcom/pusher/java_websocket/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    const-string v0, "Web Socket Protocol Handshake"

    .line 114
    invoke-interface {p2, v0}, Lcom/pusher/java_websocket/c/i;->setHttpStatusMessage(Ljava/lang/String;)V

    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    .line 115
    invoke-interface {p2, v0, v1}, Lcom/pusher/java_websocket/c/i;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    .line 116
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/pusher/java_websocket/c/i;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Origin"

    .line 117
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/a;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocket-Origin"

    invoke-interface {p2, v1, v0}, Lcom/pusher/java_websocket/c/i;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Host"

    invoke-interface {p1, v1}, Lcom/pusher/java_websocket/c/a;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/pusher/java_websocket/c/a;->getResourceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocket-Location"

    .line 119
    invoke-interface {p2, v0, p1}, Lcom/pusher/java_websocket/c/i;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/pusher/java_websocket/drafts/c;->c:Z

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/c;->e:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 1
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
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/pusher/java_websocket/drafts/c;->a(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 174
    :cond_0
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    const/16 v0, 0x3ea

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/b;-><init>(I)V

    throw p1
.end method
