.class public final enum Lcom/farsitel/bazaar/ui/payment/PaymentType;
.super Ljava/lang/Enum;
.source "PaymentType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/payment/PaymentType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/payment/PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREDIT:Lcom/farsitel/bazaar/ui/payment/PaymentType;

.field public static final Companion:Lcom/farsitel/bazaar/ui/payment/PaymentType$a;

.field public static final enum PURCHASABLE:Lcom/farsitel/bazaar/ui/payment/PaymentType;

.field public static final enum SUBSCRIPTION:Lcom/farsitel/bazaar/ui/payment/PaymentType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/payment/PaymentType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/payment/PaymentType;

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/PaymentType;

    const/4 v2, 0x0

    const-string v3, "CREDIT"

    const-string v4, "Credit"

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/PaymentType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/PaymentType;

    const/4 v2, 0x1

    const-string v3, "PURCHASABLE"

    const-string v4, "Purchasable"

    .line 2
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/PaymentType;->PURCHASABLE:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/PaymentType;

    const/4 v2, 0x2

    const-string v3, "SUBSCRIPTION"

    const-string v4, "Subscription"

    .line 3
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/ui/payment/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/PaymentType;->SUBSCRIPTION:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/payment/PaymentType;->a:[Lcom/farsitel/bazaar/ui/payment/PaymentType;

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/PaymentType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/payment/PaymentType$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/payment/PaymentType;->Companion:Lcom/farsitel/bazaar/ui/payment/PaymentType$a;

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

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/payment/PaymentType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/payment/PaymentType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/payment/PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/payment/PaymentType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/payment/PaymentType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/payment/PaymentType;->a:[Lcom/farsitel/bazaar/ui/payment/PaymentType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/payment/PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/payment/PaymentType;

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/PaymentType;->value:Ljava/lang/String;

    return-object v0
.end method
