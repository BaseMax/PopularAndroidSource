.class public abstract Lcom/pusher/java_websocket/drafts/Draft;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;,
        Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    }
.end annotation


# static fields
.field public static final FLASH_POLICY_REQUEST:[B

.field public static INITIAL_FAMESIZE:I = 0x40

.field public static MAX_FAME_SIZE:I = 0x3e8


# instance fields
.field protected a:Lcom/pusher/java_websocket/WebSocket$Role;

.field protected b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<policy-file-request/>\u0000"

    .line 46
    invoke-static {v0}, Lcom/pusher/java_websocket/e/b;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/pusher/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/Draft;->a:Lcom/pusher/java_websocket/WebSocket$Role;

    .line 51
    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/Draft;->b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    return-void
.end method

.method protected static a(Lcom/pusher/java_websocket/c/f;)Z
    .locals 2

    const-string v0, "Upgrade"

    .line 121
    invoke-interface {p0, v0}, Lcom/pusher/java_websocket/c/f;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p0, v0}, Lcom/pusher/java_websocket/c/f;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x30

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    .line 63
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    .line 74
    invoke-static {p0}, Lcom/pusher/java_websocket/drafts/Draft;->readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/pusher/java_websocket/e/b;->stringAscii([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/pusher/java_websocket/WebSocket$Role;)Lcom/pusher/java_websocket/c/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;,
            Lcom/pusher/java_websocket/b/a;
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/pusher/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    const-string v2, " "

    .line 85
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 86
    array-length v2, v0

    if-ne v2, v1, :cond_4

    .line 90
    sget-object v1, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 92
    new-instance p1, Lcom/pusher/java_websocket/c/e;

    invoke-direct {p1}, Lcom/pusher/java_websocket/c/e;-><init>()V

    .line 93
    move-object v1, p1

    check-cast v1, Lcom/pusher/java_websocket/c/i;

    .line 94
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-interface {v1, v4}, Lcom/pusher/java_websocket/c/i;->setHttpStatus(S)V

    .line 95
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lcom/pusher/java_websocket/c/i;->setHttpStatusMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lcom/pusher/java_websocket/c/d;

    invoke-direct {p1}, Lcom/pusher/java_websocket/c/d;-><init>()V

    .line 99
    aget-object v0, v0, v3

    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/c/b;->setResourceDescriptor(Ljava/lang/String;)V

    .line 103
    :goto_0
    invoke-static {p0}, Lcom/pusher/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ":"

    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    array-length v1, v0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 108
    aget-object v1, v0, v1

    aget-object v0, v0, v3

    const-string v4, "^ +"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/pusher/java_websocket/c/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    new-instance p0, Lcom/pusher/java_websocket/b/d;

    const-string p1, "not an http header"

    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/b/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v0, :cond_3

    return-object p1

    .line 112
    :cond_3
    new-instance p0, Lcom/pusher/java_websocket/b/a;

    invoke-direct {p0}, Lcom/pusher/java_websocket/b/a;-><init>()V

    throw p0

    .line 87
    :cond_4
    new-instance p0, Lcom/pusher/java_websocket/b/d;

    invoke-direct {p0}, Lcom/pusher/java_websocket/b/d;-><init>()V

    throw p0

    .line 83
    :cond_5
    new-instance p1, Lcom/pusher/java_websocket/b/a;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    add-int/lit16 p0, p0, 0x80

    invoke-direct {p1, p0}, Lcom/pusher/java_websocket/b/a;-><init>(I)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public abstract acceptHandshakeAsClient(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/h;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation
.end method

.method public abstract acceptHandshakeAsServer(Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation
.end method

.method public checkAlloc(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/e;,
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    if-ltz p1, :cond_0

    return p1

    .line 215
    :cond_0
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    const/16 v0, 0x3ea

    const-string v1, "Negative count"

    invoke-direct {p1, v0, v1}, Lcom/pusher/java_websocket/b/b;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public continuousFrame(Lcom/pusher/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pusher/java_websocket/framing/Framedata$Opcode;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pusher/java_websocket/drafts/Draft;->b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    iput-object v0, p0, Lcom/pusher/java_websocket/drafts/Draft;->b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_1

    .line 138
    :cond_2
    iput-object p1, p0, Lcom/pusher/java_websocket/drafts/Draft;->b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    .line 141
    :goto_1
    new-instance v0, Lcom/pusher/java_websocket/framing/d;

    iget-object v1, p0, Lcom/pusher/java_websocket/drafts/Draft;->b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v1}, Lcom/pusher/java_websocket/framing/d;-><init>(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    .line 143
    :try_start_0
    invoke-interface {v0, p2}, Lcom/pusher/java_websocket/framing/c;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    invoke-interface {v0, p3}, Lcom/pusher/java_websocket/framing/c;->setFin(Z)V

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/pusher/java_websocket/drafts/Draft;->b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 151
    :cond_3
    iput-object p1, p0, Lcom/pusher/java_websocket/drafts/Draft;->b:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    .line 153
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract copyInstance()Lcom/pusher/java_websocket/drafts/Draft;
.end method

.method public abstract createBinaryFrame(Lcom/pusher/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
.end method

.method public abstract createFrames(Ljava/lang/String;Z)Ljava/util/List;
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
.end method

.method public abstract createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
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
.end method

.method public createHandshake(Lcom/pusher/java_websocket/c/f;Lcom/pusher/java_websocket/WebSocket$Role;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pusher/java_websocket/c/f;",
            "Lcom/pusher/java_websocket/WebSocket$Role;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, p1, p2, v0}, Lcom/pusher/java_websocket/drafts/Draft;->createHandshake(Lcom/pusher/java_websocket/c/f;Lcom/pusher/java_websocket/WebSocket$Role;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createHandshake(Lcom/pusher/java_websocket/c/f;Lcom/pusher/java_websocket/WebSocket$Role;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pusher/java_websocket/c/f;",
            "Lcom/pusher/java_websocket/WebSocket$Role;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    instance-of v0, p1, Lcom/pusher/java_websocket/c/a;

    if-eqz v0, :cond_0

    const-string v0, "GET "

    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/pusher/java_websocket/c/a;

    invoke-interface {v0}, Lcom/pusher/java_websocket/c/a;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " HTTP/1.1"

    .line 167
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :cond_0
    instance-of v0, p1, Lcom/pusher/java_websocket/c/h;

    if-eqz v0, :cond_5

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/1.1 101 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/pusher/java_websocket/c/h;

    invoke-interface {v1}, Lcom/pusher/java_websocket/c/h;->getHttpStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "\r\n"

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {p1}, Lcom/pusher/java_websocket/c/f;->iterateHttpFields()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    invoke-interface {p1, v2}, Lcom/pusher/java_websocket/c/f;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 179
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/pusher/java_websocket/e/b;->asciiBytes(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p3, :cond_2

    .line 186
    invoke-interface {p1}, Lcom/pusher/java_websocket/c/f;->getContent()[B

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    .line 187
    :cond_3
    array-length p3, p1

    :goto_3
    array-length v0, p2

    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 188
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_4

    .line 190
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 192
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 171
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unknow role"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public abstract getCloseHandshakeType()Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;
.end method

.method public getRole()Lcom/pusher/java_websocket/WebSocket$Role;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/pusher/java_websocket/drafts/Draft;->a:Lcom/pusher/java_websocket/WebSocket$Role;

    return-object v0
.end method

.method public abstract postProcessHandshakeRequestAsClient(Lcom/pusher/java_websocket/c/b;)Lcom/pusher/java_websocket/c/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation
.end method

.method public abstract postProcessHandshakeResponseAsServer(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/i;)Lcom/pusher/java_websocket/c/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public setParseMode(Lcom/pusher/java_websocket/WebSocket$Role;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/pusher/java_websocket/drafts/Draft;->a:Lcom/pusher/java_websocket/WebSocket$Role;

    return-void
.end method

.method public abstract translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
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
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lcom/pusher/java_websocket/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/pusher/java_websocket/drafts/Draft;->a:Lcom/pusher/java_websocket/WebSocket$Role;

    invoke-static {p1, v0}, Lcom/pusher/java_websocket/drafts/Draft;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/pusher/java_websocket/WebSocket$Role;)Lcom/pusher/java_websocket/c/c;

    move-result-object p1

    return-object p1
.end method
