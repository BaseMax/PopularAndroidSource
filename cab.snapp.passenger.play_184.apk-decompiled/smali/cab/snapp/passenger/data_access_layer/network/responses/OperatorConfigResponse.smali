.class public Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private packages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPackage()Lcab/snapp/passenger/data/models/charge/ChargePackage;
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/charge/ChargePackage;

    .line 30
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/charge/ChargePackage;

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->packages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setPackages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;->packages:Ljava/util/ArrayList;

    return-void
.end method
