.class public final enum Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;
.super Ljava/lang/Enum;
.source "PaymentGatewayHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLECTED:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

.field public static final enum INITIATED:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

.field public static final enum NONE:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->NONE:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    const/4 v2, 0x1

    const-string v3, "INITIATED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->INITIATED:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    const/4 v2, 0x2

    const-string v3, "COLLECTED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->COLLECTED:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->a:[Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->a:[Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$PaymentState;

    return-object v0
.end method
