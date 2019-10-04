.class public final Lcab/snapp/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/d/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "protocol"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "host"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "port"
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "tls"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "qos"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "ping_intval"
    .end annotation
.end field

.field private g:Lcab/snapp/d/a/a$a;
    .annotation runtime Lcom/google/gson/a/c;
        value = "channels"
    .end annotation
.end field

.field private h:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "clean_session"
    .end annotation
.end field

.field private i:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "timeout_intval"
    .end annotation
.end field

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 29
    iput v0, p0, Lcab/snapp/d/a/a;->f:I

    const/16 v0, 0x1e

    .line 35
    iput v0, p0, Lcab/snapp/d/a/a;->i:I

    return-void
.end method


# virtual methods
.method public final getChannels()Lcab/snapp/d/a/a$a;
    .locals 1

    .line 118
    iget-object v0, p0, Lcab/snapp/d/a/a;->g:Lcab/snapp/d/a/a$a;

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcab/snapp/d/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getJwtToken()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcab/snapp/d/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getPingInterval()I
    .locals 1

    .line 108
    iget v0, p0, Lcab/snapp/d/a/a;->f:I

    return v0
.end method

.method public final getPort()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcab/snapp/d/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcab/snapp/d/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getQos()I
    .locals 1

    .line 98
    iget v0, p0, Lcab/snapp/d/a/a;->e:I

    return v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 148
    iget v0, p0, Lcab/snapp/d/a/a;->i:I

    return v0
.end method

.method public final isTls()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcab/snapp/d/a/a;->d:Z

    return v0
.end method

.method public final setChannels(Lcab/snapp/d/a/a$a;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcab/snapp/d/a/a;->g:Lcab/snapp/d/a/a$a;

    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcab/snapp/d/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final setJwtToken(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcab/snapp/d/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public final setPingInterval(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcab/snapp/d/a/a;->f:I

    return-void
.end method

.method public final setPort(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcab/snapp/d/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/d/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final setQos(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcab/snapp/d/a/a;->e:I

    return-void
.end method

.method public final setShouldCleanSession(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcab/snapp/d/a/a;->h:Z

    return-void
.end method

.method public final setTimeout(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcab/snapp/d/a/a;->i:I

    return-void
.end method

.method public final setTls(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcab/snapp/d/a/a;->d:Z

    return-void
.end method

.method public final shouldCleanSession()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcab/snapp/d/a/a;->h:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmqBean{protocol=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/d/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", host=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/d/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", port=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/d/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/d/a/a;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", qos=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/d/a/a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pingInterval=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/d/a/a;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channels="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/d/a/a;->g:Lcab/snapp/d/a/a$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cleanSession="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcab/snapp/d/a/a;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/d/a/a;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
