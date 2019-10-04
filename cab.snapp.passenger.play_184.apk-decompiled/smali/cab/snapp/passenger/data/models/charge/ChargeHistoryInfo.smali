.class public Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private amount:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "amount"
    .end annotation
.end field

.field private chargeAmount:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/a/c;
        value = "chargeAmount"
    .end annotation
.end field

.field private gatewayType:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;
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

.field private paymentStatus:Lcab/snapp/passenger/data/models/charge/PaymentStatus;
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

    .line 51
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->amount:J

    return-wide v0
.end method

.method public getChargeAmount()Ljava/lang/Long;
    .locals 1

    .line 91
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->chargeAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public getGatewayType()Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;
    .locals 1

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->gatewayType:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->id:J

    return-wide v0
.end method

.method public getInvoiceCode()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->invoiceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->mobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;
    .locals 1

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->operator:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-object v0
.end method

.method public getPaidDate()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->paidDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentStatus()Lcab/snapp/passenger/data/models/charge/PaymentStatus;
    .locals 1

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->paymentStatus:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    return-object v0
.end method

.method public getPersianPaidDate()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->persianPaidDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPersianType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->persianType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcab/snapp/passenger/data/models/charge/SIMChargeType;
    .locals 1

    .line 107
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->userId:J

    return-wide v0
.end method

.method public setAmount(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->amount:J

    return-void
.end method

.method public setChargeAmount(Ljava/lang/Long;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->chargeAmount:Ljava/lang/Long;

    return-void
.end method

.method public setGatewayType(Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->gatewayType:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->id:J

    return-void
.end method

.method public setInvoiceCode(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->invoiceCode:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->operator:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    return-void
.end method

.method public setPaidDate(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->paidDate:Ljava/lang/String;

    return-void
.end method

.method public setPaymentStatus(Lcab/snapp/passenger/data/models/charge/PaymentStatus;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->paymentStatus:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    return-void
.end method

.method public setPersianPaidDate(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->persianPaidDate:Ljava/lang/String;

    return-void
.end method

.method public setPersianType(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->persianType:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcab/snapp/passenger/data/models/charge/SIMChargeType;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;->userId:J

    return-void
.end method
