.class public Lcab/snapp/passenger/data/models/Messages;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private messageDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "date"
    .end annotation
.end field

.field private messageDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "description"
    .end annotation
.end field

.field private messageSeen:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "seen"
    .end annotation
.end field

.field private messageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageDate()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Messages;->messageDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDesc()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Messages;->messageDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSeen()I
    .locals 1

    .line 55
    iget v0, p0, Lcab/snapp/passenger/data/models/Messages;->messageSeen:I

    return v0
.end method

.method public getMessageUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Messages;->messageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMessageDate(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Messages;->messageDate:Ljava/lang/String;

    return-void
.end method

.method public setMessageDesc(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Messages;->messageDesc:Ljava/lang/String;

    return-void
.end method

.method public setMessageSeen(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcab/snapp/passenger/data/models/Messages;->messageSeen:I

    return-void
.end method

.method public setMessageUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Messages;->messageUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Messages{messageDate=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/Messages;->messageDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Messages;->messageDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageSeen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data/models/Messages;->messageSeen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", messageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Messages;->messageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
