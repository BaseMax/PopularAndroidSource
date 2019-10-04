.class public final Lcom/pusher/java_websocket/c/d;
.super Lcom/pusher/java_websocket/c/g;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/c/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/pusher/java_websocket/c/g;-><init>()V

    const-string v0, "*"

    .line 4
    iput-object v0, p0, Lcom/pusher/java_websocket/c/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/pusher/java_websocket/c/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setResourceDescriptor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/pusher/java_websocket/c/d;->a:Ljava/lang/String;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "http resource descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
