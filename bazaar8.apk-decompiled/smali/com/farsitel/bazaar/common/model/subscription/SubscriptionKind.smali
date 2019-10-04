.class public final enum Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;
.super Ljava/lang/Enum;
.source "SubscriptionItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

.field public static final enum ANNUALLY:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

.field public static final Companion:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;

.field public static final enum MONTHLY:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

.field public static final enum UNKNOWN:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    const/4 v2, 0x0

    const-string v3, "MONTHLY"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->MONTHLY:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    const/4 v2, 0x1

    const-string v3, "ANNUALLY"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->ANNUALLY:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    const/4 v2, 0x2

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->UNKNOWN:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->$VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    new-instance v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->Companion:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->$VALUES:[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    return-object v0
.end method


# virtual methods
.method public final getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lc/c/a/c/a;->annually:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.annually)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget v0, Lc/c/a/c/a;->monthly:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.monthly)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
