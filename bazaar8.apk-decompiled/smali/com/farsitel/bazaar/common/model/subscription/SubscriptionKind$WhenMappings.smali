.class public final synthetic Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->values()[Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->MONTHLY:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->ANNUALLY:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
