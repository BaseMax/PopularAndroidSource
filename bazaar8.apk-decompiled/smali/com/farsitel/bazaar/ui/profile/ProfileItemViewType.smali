.class public final enum Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;
.super Ljava/lang/Enum;
.source "ProfileItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PROFILE_CREDIT_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

.field public static final enum PROFILE_HEADER_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

.field public static final enum PROFILE_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    new-instance v1, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    const/4 v2, 0x0

    const-string v3, "PROFILE_HEADER_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->PROFILE_HEADER_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    const/4 v2, 0x1

    const-string v3, "PROFILE_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->PROFILE_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    const/4 v2, 0x2

    const-string v3, "PROFILE_CREDIT_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->PROFILE_CREDIT_ITEM:Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->a:[Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->a:[Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/profile/ProfileItemViewType;

    return-object v0
.end method
