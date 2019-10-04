.class synthetic Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$2;
.super Ljava/lang/Object;
.source "DirectDebitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 319
    invoke-static {}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->values()[Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$2;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$2;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$2;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->UPDATE_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$2;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->GET_FUNDING_INSTRUMENT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
