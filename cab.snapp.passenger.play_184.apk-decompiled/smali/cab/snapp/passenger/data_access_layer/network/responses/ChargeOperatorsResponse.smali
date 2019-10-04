.class public Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private operators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;",
            ">;"
        }
    .end annotation
.end field

.field private transient operatorsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;",
            ">;"
        }
    .end annotation
.end field

.field private quickCharge:Lcab/snapp/passenger/data/models/charge/QuickCharge;
    .annotation runtime Lcom/google/gson/a/c;
        value = "payment"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->operatorsCache:Ljava/util/HashMap;

    return-void
.end method

.method private getOperatorsCache()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->operatorsCache:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->operatorsCache:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperators()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getPreNumbers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getPreNumbers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 48
    iget-object v4, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->operatorsCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->operatorsCache:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getOperatorByPhoneNumber(Ljava/lang/String;)Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "^(0098|\\+98|98|0){1}"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "0999"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 65
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperatorsCache()Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-object p1

    .line 68
    :cond_2
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperatorsCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-object p1
.end method

.method public getOperators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->operators:Ljava/util/List;

    return-object v0
.end method

.method public getQuickCharge()Lcab/snapp/passenger/data/models/charge/QuickCharge;
    .locals 1

    .line 33
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->quickCharge:Lcab/snapp/passenger/data/models/charge/QuickCharge;

    return-object v0
.end method

.method public setOperators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->operators:Ljava/util/List;

    return-void
.end method

.method public setQuickCharge(Lcab/snapp/passenger/data/models/charge/QuickCharge;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->quickCharge:Lcab/snapp/passenger/data/models/charge/QuickCharge;

    return-void
.end method
