.class public final enum Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;
.super Ljava/lang/Enum;
.source "SubscriptionItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

.field public static final enum ACTIVE:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

.field public static final enum CANCEL_BY_DEVELOPER:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

.field public static final enum CANCEL_BY_USER:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

.field public static final Companion:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices$Companion;

.field public static final enum EXPIRE:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

.field public static final enum UNKNOWN:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    const/4 v2, 0x0

    const-string v3, "ACTIVE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->ACTIVE:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    const/4 v2, 0x1

    const-string v3, "CANCEL_BY_USER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->CANCEL_BY_USER:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    const/4 v2, 0x2

    const-string v3, "CANCEL_BY_DEVELOPER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->CANCEL_BY_DEVELOPER:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    const/4 v2, 0x3

    const-string v3, "EXPIRE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->EXPIRE:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    const/4 v2, 0x4

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->UNKNOWN:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->$VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    new-instance v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices$Companion;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->Companion:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->$VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    return-object v0
.end method
