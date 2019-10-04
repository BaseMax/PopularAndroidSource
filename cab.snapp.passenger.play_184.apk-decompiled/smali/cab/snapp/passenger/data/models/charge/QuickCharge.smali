.class public Lcab/snapp/passenger/data/models/charge/QuickCharge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private amount:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "amount"
    .end annotation
.end field

.field private chargeAmount:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "chargeAmount"
    .end annotation
.end field

.field private gatewayType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "gatewayType"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private invoiceCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "invoiceCode"
    .end annotation
.end field

.field private mobileNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "mobileNumber"
    .end annotation
.end field

.field private operator:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;
    .annotation runtime Lcom/google/gson/a/c;
        value = "operator"
    .end annotation
.end field

.field private paidDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "paidDate"
    .end annotation
.end field

.field private paymentStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "paymentStatus"
    .end annotation
.end field

.field private persianPaidDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "persianPaidDate"
    .end annotation
.end field

.field private persianType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "displayType"
    .end annotation
.end field

.field private type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field

.field private userId:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "userId"
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
.method public getAmount()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->amount:J

    return-wide v0
.end method

.method public getChargeAmount()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->chargeAmount:J

    return-wide v0
.end method

.method public getGatewayType()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->gatewayType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->id:J

    return-wide v0
.end method

.method public getInvoiceCode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->invoiceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;
    .locals 1

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->operator:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-object v0
.end method

.method public getPaidDate()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->paidDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentStatus()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->paymentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPersianPaidDate()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->persianPaidDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPersianType()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->persianType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcab/snapp/passenger/data/models/charge/SIMChargeType;
    .locals 1

    .line 114
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->userId:J

    return-wide v0
.end method

.method public setAmount(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->amount:J

    return-void
.end method

.method public setChargeAmount(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->chargeAmount:J

    return-void
.end method

.method public setGatewayType(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->gatewayType:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->id:J

    return-void
.end method

.method public setInvoiceCode(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->invoiceCode:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->operator:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-void
.end method

.method public setPaidDate(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->paidDate:Ljava/lang/String;

    return-void
.end method

.method public setPaymentStatus(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->paymentStatus:Ljava/lang/String;

    return-void
.end method

.method public setPersianPaidDate(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->persianPaidDate:Ljava/lang/String;

    return-void
.end method

.method public setPersianType(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->persianType:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcab/snapp/passenger/data/models/charge/SIMChargeType;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/QuickCharge;->userId:J

    return-void
.end method
