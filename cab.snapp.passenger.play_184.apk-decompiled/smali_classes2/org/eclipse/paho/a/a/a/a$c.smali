.class final Lorg/eclipse/paho/a/a/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lorg/eclipse/paho/a/a/a/a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/a/a/a/a;Ljava/lang/String;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/a$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final publishBufferedMessage(Lorg/eclipse/paho/a/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a;->g(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/b;->getActualInFlight()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->g(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/b;->getMaxInFlight()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ge v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a;->b(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->c(Lorg/eclipse/paho/a/a/a/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$c;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a;->getMessage()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "510"

    invoke-interface {v0, v1, v2, v4, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a;->getMessage()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a;->getToken()Lorg/eclipse/paho/a/a/v;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 906
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a;->g(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/b;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a;->getMessage()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/b;->unPersistBufferedMessage(Lorg/eclipse/paho/a/a/a/a/u;)V

    return-void

    .line 898
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 909
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/a;->b(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$c;->b:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a;->c(Lorg/eclipse/paho/a/a/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$c;->a:Ljava/lang/String;

    const-string v2, "208"

    invoke-interface {p1, v0, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d68

    .line 910
    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
