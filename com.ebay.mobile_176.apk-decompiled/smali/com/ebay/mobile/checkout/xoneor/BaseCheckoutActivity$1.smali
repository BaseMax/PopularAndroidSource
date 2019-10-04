.class synthetic Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;
.super Ljava/lang/Object;
.source "BaseCheckoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

.field static final synthetic $SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1318
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CC:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CASH_ON_PICKUP:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    sget-object v6, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->CIP:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->COD:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v7}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$PaymentMethodType:[I

    sget-object v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->OTHER:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v8}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 620
    :catch_6
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    :try_start_7
    sget-object v7, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    sget-object v8, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->MASTERCARD:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    invoke-virtual {v8}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->VISA:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    invoke-virtual {v7}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->AM_EX:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->DISCOVER:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->MAESTRO:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->CHINA_UNION_PAY:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$payment$FundingSourceSubType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->JCB:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/FundingSourceSubType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
