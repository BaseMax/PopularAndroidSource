.class public Lcab/snapp/passenger/data/models/Transaction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "created_at"
    .end annotation
.end field

.field private creditor:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "creditor"
    .end annotation
.end field

.field private currentBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "current_balance"
    .end annotation
.end field

.field private debtor:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "debtor"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "description"
    .end annotation
.end field

.field private driverId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "driver_id"
    .end annotation
.end field

.field private relationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "relation_id"
    .end annotation
.end field

.field private transactionReference:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "transaction_reference"
    .end annotation
.end field

.field private transactionType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "transaction_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Transaction;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditor()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Transaction;->creditor:D

    return-wide v0
.end method

.method public getCurrentBalance()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Transaction;->currentBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getDebtor()D
    .locals 2

    .line 87
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/Transaction;->debtor:D

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Transaction;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Transaction;->driverId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Transaction;->relationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionReference()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcab/snapp/passenger/data/models/Transaction;->transactionReference:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionType()I
    .locals 1

    .line 47
    iget v0, p0, Lcab/snapp/passenger/data/models/Transaction;->transactionType:I

    return v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Transaction;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setCreditor(D)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Transaction;->creditor:D

    return-void
.end method

.method public setCurrentBalance(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Transaction;->currentBalance:Ljava/lang/String;

    return-void
.end method

.method public setDebtor(D)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/Transaction;->debtor:D

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Transaction;->description:Ljava/lang/String;

    return-void
.end method

.method public setDriverId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Transaction;->driverId:Ljava/lang/String;

    return-void
.end method

.method public setRelationId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Transaction;->relationId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionReference(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/data/models/Transaction;->transactionReference:Ljava/lang/String;

    return-void
.end method

.method public setTransactionType(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcab/snapp/passenger/data/models/Transaction;->transactionType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction{driverId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/Transaction;->driverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transactionType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/passenger/data/models/Transaction;->transactionType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", transactionReference="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Transaction;->transactionReference:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", relationId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Transaction;->relationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creditor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcab/snapp/passenger/data/models/Transaction;->creditor:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", debtor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcab/snapp/passenger/data/models/Transaction;->debtor:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Transaction;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currentBalance=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Transaction;->currentBalance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/Transaction;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
