.class public final enum Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;
.super Ljava/lang/Enum;
.source "PaymentGatewayType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARRIER:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public static final enum CREDIT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public static final Companion:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType$a;

.field public static final enum GIFT_CARD:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public static final enum NATIVE:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public static final enum SHETAB:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public static final enum SILENT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public static final enum USSD:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    const/4 v2, 0x0

    const-string v3, "GIFT_CARD"

    const-string v4, "giftcard"

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->GIFT_CARD:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    const/4 v2, 0x1

    const-string v3, "USSD"

    const-string v4, "ussd"

    .line 2
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->USSD:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    const/4 v2, 0x2

    const-string v3, "SHETAB"

    const-string v4, "shetab"

    .line 3
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->SHETAB:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    const/4 v2, 0x3

    const-string v3, "CREDIT"

    const-string v4, "credit"

    .line 4
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    const/4 v2, 0x4

    const-string v3, "NATIVE"

    const-string v4, "native"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->NATIVE:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    const/4 v2, 0x5

    const-string v3, "SILENT"

    const-string v4, "silent"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->SILENT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    const/4 v2, 0x6

    const-string v3, "CARRIER"

    const-string v4, "carrier"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->CARRIER:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->a:[Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->Companion:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->a:[Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->value:Ljava/lang/String;

    return-object v0
.end method
