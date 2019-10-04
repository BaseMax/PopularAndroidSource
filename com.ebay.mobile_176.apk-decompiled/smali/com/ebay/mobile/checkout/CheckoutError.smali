.class public final Lcom/ebay/mobile/checkout/CheckoutError;
.super Ljava/lang/Object;
.source "CheckoutError.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static final ERROR_ID_FIS_ERROR:Ljava/lang/String; = "100"

.field public static final ERROR_ID_FIS_INVALID_CARD_NUMBER:Ljava/lang/String; = "Invalid Credit Card Number"

.field public static final ERROR_ID_FIS_INVALID_CARD_NUMBER_MISTYPED:Ljava/lang/String; = "Credit Card Number is invalid: cardNum.length:\\d+ expecting:\\d+"

.field public static final ERROR_ID_FIS_UNSUPPORTED_CARD_TYPE:Ljava/lang/String; = "Unknown credit card type."

.field private static final defaultErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ebay/mobile/checkout/CheckoutError;",
            ">;"
        }
    .end annotation
.end field

.field private static final operationMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/checkout/CheckoutError;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final causesAbort:Z

.field private errorKeyMapped:Ljava/lang/String;

.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 170
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "100"

    .line 171
    new-instance v4, Lcom/ebay/mobile/checkout/CheckoutError;

    const/4 v5, 0x0

    const v6, 0x7f120a3a

    invoke-direct {v4, v6, v5}, Lcom/ebay/mobile/checkout/CheckoutError;-><init>(IZ)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v3, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v3}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v3, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v3}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v3, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->GET_FUNDING_INSTRUMENT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v3}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v2, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/ebay/mobile/checkout/CheckoutError;

    const v4, 0x7f120a39

    invoke-direct {v3, v4, v5}, Lcom/ebay/mobile/checkout/CheckoutError;-><init>(IZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v2, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/ebay/mobile/checkout/CheckoutError;

    invoke-direct {v3, v4, v5}, Lcom/ebay/mobile/checkout/CheckoutError;-><init>(IZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v2, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->GET_FUNDING_INSTRUMENT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/ebay/mobile/checkout/CheckoutError;

    invoke-direct {v3, v4, v5}, Lcom/ebay/mobile/checkout/CheckoutError;-><init>(IZ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/checkout/CheckoutError;->operationMaps:Ljava/util/Map;

    .line 184
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/checkout/CheckoutError;->defaultErrors:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/ebay/mobile/checkout/CheckoutError;->resId:I

    .line 36
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/CheckoutError;->causesAbort:Z

    return-void
.end method

.method private appendErrorCodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, " "

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getConnectionError(Landroid/content/Context;ZLjava/io/IOException;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 132
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f120369

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f120367

    .line 135
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p1, 0x7f1210d8

    .line 138
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFormattedErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 52
    iget v0, p0, Lcom/ebay/mobile/checkout/CheckoutError;->resId:I

    const v1, 0x7f1210c0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ebay/mobile/checkout/CheckoutError;->resId:I

    const v1, 0x7f1210b9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/checkout/CheckoutError;->resId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    :goto_0
    iget v0, p0, Lcom/ebay/mobile/checkout/CheckoutError;->resId:I

    invoke-static {p1, v0}, Lcom/ebay/mobile/common/LocalUtil;->getInStorePickupResourceForCountry(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static mapCheckoutError(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;Ljava/lang/String;)Lcom/ebay/mobile/checkout/CheckoutError;
    .locals 3

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result p0

    .line 92
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutError;->operationMaps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutError;->operationMaps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 95
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/checkout/CheckoutError;

    .line 98
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutError;->errorKeyMapped:Ljava/lang/String;

    return-object p0

    .line 104
    :cond_1
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutError;->defaultErrors:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutError;->defaultErrors:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/checkout/CheckoutError;

    .line 107
    iput-object p1, p0, Lcom/ebay/mobile/checkout/CheckoutError;->errorKeyMapped:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final getErrorString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/CheckoutError;->getFormattedErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/CheckoutError;->errorKeyMapped:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/checkout/CheckoutError;->appendErrorCodeToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final shouldAbortOnError()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/CheckoutError;->causesAbort:Z

    return v0
.end method
