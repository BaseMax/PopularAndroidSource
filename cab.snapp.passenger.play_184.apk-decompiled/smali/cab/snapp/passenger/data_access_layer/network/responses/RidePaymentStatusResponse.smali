.class public Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# static fields
.field public static final ERROR:I = -0x1

.field public static final INSUFFICIENT:I = 0x0

.field public static final LOADING:I = -0x2

.field public static final SUFFICIENT:I = 0x1


# instance fields
.field private status:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 22
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->status:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->status:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RidePaymentStatusResponse{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
