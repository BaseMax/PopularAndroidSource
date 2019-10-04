.class public final enum Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;
.super Ljava/lang/Enum;
.source "BaseCheckoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/BaseCheckoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

.field public static final enum ADD_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

.field public static final enum ADD_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

.field public static final enum GET_FUNDING_INSTRUMENT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

.field public static final enum UPDATE_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

.field public static final enum UPDATE_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    const-string v1, "GET_FUNDING_INSTRUMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->GET_FUNDING_INSTRUMENT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    .line 56
    new-instance v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    const-string v1, "ADD_CREDIT_CARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    .line 57
    new-instance v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    const-string v1, "ADD_DIRECT_DEBIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    .line 58
    new-instance v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    const-string v1, "UPDATE_CREDIT_CARD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->UPDATE_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    .line 59
    new-instance v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    const-string v1, "UPDATE_DIRECT_DEBIT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->UPDATE_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    const/4 v0, 0x5

    .line 52
    new-array v0, v0, [Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->GET_FUNDING_INSTRUMENT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ADD_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->UPDATE_CREDIT_CARD:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->UPDATE_DIRECT_DEBIT:Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->$VALUES:[Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;
    .locals 1

    .line 52
    const-class v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;
    .locals 1

    .line 52
    sget-object v0, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->$VALUES:[Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    invoke-virtual {v0}, [Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;

    return-object v0
.end method
