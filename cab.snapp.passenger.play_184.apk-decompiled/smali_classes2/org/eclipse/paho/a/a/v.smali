.class public Lorg/eclipse/paho/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/h;


# instance fields
.field public internalTok:Lorg/eclipse/paho/a/a/a/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    .line 43
    new-instance v0, Lorg/eclipse/paho/a/a/a/q;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/a/a/a/q;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    return-void
.end method


# virtual methods
.method public getActionCallback()Lorg/eclipse/paho/a/a/c;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getActionCallback()Lorg/eclipse/paho/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getClient()Lorg/eclipse/paho/a/a/d;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public getException()Lorg/eclipse/paho/a/a/p;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getException()Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public getGrantedQos()[I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getGrantedQos()[I

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getMessageID()I

    move-result v0

    return v0
.end method

.method public getResponse()Lorg/eclipse/paho/a/a/a/a/u;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getResponse()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPresent()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getSessionPresent()Z

    move-result v0

    return v0
.end method

.method public getTopics()[Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getTopics()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getUserContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->isComplete()Z

    move-result v0

    return v0
.end method

.method public setActionCallback(Lorg/eclipse/paho/a/a/c;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/q;->setActionCallback(Lorg/eclipse/paho/a/a/c;)V

    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/q;->setUserContext(Ljava/lang/Object;)V

    return-void
.end method

.method public waitForCompletion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/a/a/a/q;->waitForCompletion(J)V

    return-void
.end method

.method public waitForCompletion(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/a/a/a/q;->waitForCompletion(J)V

    return-void
.end method
