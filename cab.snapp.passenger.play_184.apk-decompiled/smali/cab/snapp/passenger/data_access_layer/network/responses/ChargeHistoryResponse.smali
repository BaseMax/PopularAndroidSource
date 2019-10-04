.class public Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private last:Z

.field private number:I

.field private payments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private totalElements:J

.field private totalPages:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 44
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->number:I

    return v0
.end method

.method public getPayments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->payments:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 52
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->size:I

    return v0
.end method

.method public getTotalElements()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->totalElements:J

    return-wide v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 28
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->totalPages:I

    return v0
.end method

.method public isLast()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->last:Z

    return v0
.end method

.method public setLast(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->last:Z

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->number:I

    return-void
.end method

.method public setPayments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->payments:Ljava/util/List;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->size:I

    return-void
.end method

.method public setTotalElements(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->totalElements:J

    return-void
.end method

.method public setTotalPages(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->totalPages:I

    return-void
.end method
