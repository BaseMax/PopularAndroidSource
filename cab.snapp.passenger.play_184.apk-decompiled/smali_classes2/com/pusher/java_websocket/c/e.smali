.class public final Lcom/pusher/java_websocket/c/e;
.super Lcom/pusher/java_websocket/c/g;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/c/i;


# instance fields
.field private a:S

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/pusher/java_websocket/c/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHttpStatus()S
    .locals 1

    .line 17
    iget-short v0, p0, Lcom/pusher/java_websocket/c/e;->a:S

    return v0
.end method

.method public final getHttpStatusMessage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/pusher/java_websocket/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final setHttpStatus(S)V
    .locals 0

    .line 25
    iput-short p1, p0, Lcom/pusher/java_websocket/c/e;->a:S

    return-void
.end method

.method public final setHttpStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/pusher/java_websocket/c/e;->b:Ljava/lang/String;

    return-void
.end method
