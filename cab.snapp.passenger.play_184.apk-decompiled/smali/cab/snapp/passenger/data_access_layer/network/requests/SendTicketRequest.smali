.class public Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;
.super Lcab/snapp/snappnetwork/model/d;
.source "SourceFile"


# instance fields
.field private relation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "relation"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "text"
    .end annotation
.end field

.field private ticketType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "ticket_type"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelation()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->relation:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketType()I
    .locals 1

    .line 43
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->ticketType:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setRelation(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->relation:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->text:Ljava/lang/String;

    return-void
.end method

.method public setTicketType(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->ticketType:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerSendTicketRequest{type=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ticketType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->ticketType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", relation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->relation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
