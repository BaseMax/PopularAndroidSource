.class public final Lcab/snapp/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/d;


# static fields
.field public static final ACK:I = 0xc

.field public static final TAG:Ljava/lang/String; = "MQTT"


# instance fields
.field private final a:Lcab/snapp/d/a/a;

.field private b:Lcab/snapp/d/a/b;

.field private final c:Lcab/snapp/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/d/a/a;Lcab/snapp/a;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p3, p0, Lcab/snapp/d/a/c;->c:Lcab/snapp/a;

    .line 29
    iput-object p2, p0, Lcab/snapp/d/a/c;->a:Lcab/snapp/d/a/a;

    .line 30
    new-instance p3, Lcab/snapp/d/a/a/a;

    new-instance v0, Lcab/snapp/d/a/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/d/a/c$1;-><init>(Lcab/snapp/d/a/c;)V

    invoke-direct {p3, p1, p2, v0}, Lcab/snapp/d/a/a/a;-><init>(Landroid/content/Context;Lcab/snapp/d/a/a;Lcab/snapp/d/a/b/a;)V

    iput-object p3, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    invoke-interface {v0}, Lcab/snapp/d/a/b;->destroy()V

    return-void
.end method

.method public final isStarted()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    invoke-interface {v0}, Lcab/snapp/d/a/b;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final onEvent(Lcab/snapp/a/a;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcab/snapp/d/a/c;->c:Lcab/snapp/a;

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    .line 111
    invoke-virtual {p1, v0}, Lcab/snapp/a/a;->setAckId(I)V

    .line 112
    iget-object v0, p0, Lcab/snapp/d/a/c;->c:Lcab/snapp/a;

    invoke-interface {v0, p1}, Lcab/snapp/a;->onEvent(Lcab/snapp/a/a;)V

    :cond_0
    return-void
.end method

.method public final publish(Ljava/lang/String;)Z
    .locals 3

    .line 99
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcab/snapp/d/a/c;->a:Lcab/snapp/d/a/a;

    invoke-virtual {v1}, Lcab/snapp/d/a/a;->getChannels()Lcab/snapp/d/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/d/a/a$a;->getEvents()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcab/snapp/d/a/b;->publish(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/d/a/b/b;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setup()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    invoke-interface {v0}, Lcab/snapp/d/a/b;->setupMQTTConnection()V

    return-void
.end method

.method public final start()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    invoke-interface {v0}, Lcab/snapp/d/a/b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    invoke-interface {v0}, Lcab/snapp/d/a/b;->disconnect()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    invoke-interface {v0}, Lcab/snapp/d/a/b;->connect()V

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcab/snapp/d/a/c;->b:Lcab/snapp/d/a/b;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcab/snapp/d/a/b;->disconnect()V

    :cond_0
    return-void
.end method
