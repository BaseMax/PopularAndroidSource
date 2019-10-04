.class public final Lcom/pusher/client/connection/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/pusher/client/connection/ConnectionState;

.field private final b:Lcom/pusher/client/connection/ConnectionState;


# direct methods
.method public constructor <init>(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionState;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eq p1, p2, :cond_0

    .line 26
    iput-object p1, p0, Lcom/pusher/client/connection/c;->a:Lcom/pusher/client/connection/ConnectionState;

    .line 27
    iput-object p2, p0, Lcom/pusher/client/connection/c;->b:Lcom/pusher/client/connection/ConnectionState;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Attempted to create an connection state update where both previous and current state are: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 57
    instance-of v1, p1, Lcom/pusher/client/connection/c;

    if-eqz v1, :cond_0

    .line 58
    check-cast p1, Lcom/pusher/client/connection/c;

    .line 59
    iget-object v1, p0, Lcom/pusher/client/connection/c;->b:Lcom/pusher/client/connection/ConnectionState;

    iget-object v2, p1, Lcom/pusher/client/connection/c;->b:Lcom/pusher/client/connection/ConnectionState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/pusher/client/connection/c;->a:Lcom/pusher/client/connection/ConnectionState;

    iget-object p1, p1, Lcom/pusher/client/connection/c;->a:Lcom/pusher/client/connection/ConnectionState;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final getCurrentState()Lcom/pusher/client/connection/ConnectionState;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/pusher/client/connection/c;->b:Lcom/pusher/client/connection/ConnectionState;

    return-object v0
.end method

.method public final getPreviousState()Lcom/pusher/client/connection/ConnectionState;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/pusher/client/connection/c;->a:Lcom/pusher/client/connection/ConnectionState;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/pusher/client/connection/c;->a:Lcom/pusher/client/connection/ConnectionState;

    invoke-virtual {v0}, Lcom/pusher/client/connection/ConnectionState;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/pusher/client/connection/c;->b:Lcom/pusher/client/connection/ConnectionState;

    invoke-virtual {v1}, Lcom/pusher/client/connection/ConnectionState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
