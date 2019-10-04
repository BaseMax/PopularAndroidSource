.class public Lcab/snapp/snappnetwork/model/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
    .end annotation
.end field

.field private b:Lcab/snapp/snappnetwork/model/f;
    .annotation runtime Lcom/google/gson/a/c;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnappApiStatus()I
    .locals 1

    .line 16
    iget v0, p0, Lcab/snapp/snappnetwork/model/e;->a:I

    return v0
.end method

.method public getSnappResponseModel()Lcab/snapp/snappnetwork/model/f;
    .locals 1

    .line 26
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/e;->b:Lcab/snapp/snappnetwork/model/f;

    return-object v0
.end method

.method public setSnappApiStatus(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcab/snapp/snappnetwork/model/e;->a:I

    return-void
.end method

.method public setSnappResponseModel(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/e;->b:Lcab/snapp/snappnetwork/model/f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappNetworkResponseGeneralModel{snappApiStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/snappnetwork/model/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", snappResponseModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/snappnetwork/model/e;->b:Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
