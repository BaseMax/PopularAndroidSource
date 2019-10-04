.class public final enum Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;
.super Ljava/lang/Enum;
.source "CollectPaymentResponseDto.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

.field public static final enum FAILED:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

.field public static final enum OK:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

.field public static final enum UNKNOWN:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    const/4 v2, 0x0

    const-string v3, "OK"

    .line 1
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->OK:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    const/4 v2, 0x1

    const-string v3, "CANCELED"

    .line 2
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->CANCELED:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    const/4 v2, 0x2

    const-string v3, "FAILED"

    .line 3
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->FAILED:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    const/4 v2, 0x3

    const-string v3, "UNKNOWN"

    .line 4
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->UNKNOWN:Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->a:[Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->a:[Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/payment/remote/responsedto/PaymentStatus;

    return-object v0
.end method
