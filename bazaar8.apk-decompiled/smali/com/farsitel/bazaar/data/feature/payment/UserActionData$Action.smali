.class public final enum Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;
.super Ljava/lang/Enum;
.source "PaymentEntities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/feature/payment/UserActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NATIVE:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

.field public static final enum WEB_VIEW:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    const/4 v2, 0x0

    const-string v3, "WEB_VIEW"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;->WEB_VIEW:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    const/4 v2, 0x1

    const-string v3, "NATIVE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;->NATIVE:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;->a:[Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;->a:[Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    return-object v0
.end method
