.class public final Lcom/pusher/java_websocket/framing/b;
.super Lcom/pusher/java_websocket/framing/d;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/framing/a;


# static fields
.field static final a:Ljava/nio/ByteBuffer;


# instance fields
.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/pusher/java_websocket/framing/b;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Lcom/pusher/java_websocket/framing/d;-><init>(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/framing/b;->setFin(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Lcom/pusher/java_websocket/framing/d;-><init>(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/framing/b;->setFin(Z)V

    const-string v0, ""

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/pusher/java_websocket/framing/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-direct {p0, v0}, Lcom/pusher/java_websocket/framing/d;-><init>(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/framing/b;->setFin(Z)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/pusher/java_websocket/framing/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    const/16 v1, 0x3f7

    const/16 v2, 0x3ed

    if-ne p1, v1, :cond_1

    move-object p2, v0

    const/16 p1, 0x3ed

    :cond_1
    if-ne p1, v2, :cond_3

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    return-void

    .line 44
    :cond_2
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    const/16 p2, 0x3ea

    const-string v0, "A close frame must have a closecode if it has a reason"

    invoke-direct {p1, p2, v0}, Lcom/pusher/java_websocket/b/b;-><init>(ILjava/lang/String;)V

    throw p1

    .line 49
    :cond_3
    invoke-static {p2}, Lcom/pusher/java_websocket/e/b;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x4

    .line 50
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    .line 52
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    array-length v1, p2

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 57
    invoke-virtual {p0, p1}, Lcom/pusher/java_websocket/framing/b;->setPayload(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final getCloseCode()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/pusher/java_websocket/framing/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayloadData()Ljava/nio/ByteBuffer;
    .locals 2

    .line 118
    iget v0, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    .line 119
    sget-object v0, Lcom/pusher/java_websocket/framing/b;->a:Ljava/nio/ByteBuffer;

    return-object v0

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/pusher/java_websocket/framing/d;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final setPayload(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 112
    invoke-super {p0, p1}, Lcom/pusher/java_websocket/framing/d;->setPayload(Ljava/nio/ByteBuffer;)V

    const/16 p1, 0x3ed

    .line 1061
    iput p1, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    .line 1062
    invoke-super {p0}, Lcom/pusher/java_websocket/framing/d;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 1064
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x4

    .line 1065
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1066
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1067
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 1068
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1069
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    .line 1071
    iget v1, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    const/16 v3, 0x3ee

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3f7

    if-eq v1, v3, :cond_0

    if-eq v1, p1, :cond_0

    const/16 v3, 0x1387

    if-gt v1, v3, :cond_0

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_0

    const/16 v3, 0x3ec

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    new-instance p1, Lcom/pusher/java_websocket/b/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closecode must not be sent over the wire: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1075
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1084
    iget v0, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    if-ne v0, p1, :cond_2

    .line 1085
    invoke-super {p0}, Lcom/pusher/java_websocket/framing/d;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/pusher/java_websocket/e/b;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/java_websocket/framing/b;->g:Ljava/lang/String;

    return-void

    .line 1087
    :cond_2
    invoke-super {p0}, Lcom/pusher/java_websocket/framing/d;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1088
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1090
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1091
    invoke-static {p1}, Lcom/pusher/java_websocket/e/b;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/framing/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1093
    :try_start_1
    new-instance v2, Lcom/pusher/java_websocket/b/c;

    invoke-direct {v2, v1}, Lcom/pusher/java_websocket/b/c;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :goto_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/pusher/java_websocket/framing/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pusher/java_websocket/framing/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
