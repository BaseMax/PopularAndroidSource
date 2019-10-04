.class public final enum Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;
.super Ljava/lang/Enum;
.source "MyBazaarItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIVIDER:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

.field public static final enum HEADER_ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

.field public static final enum ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

.field public static final enum SWITCH_ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    new-instance v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    const/4 v2, 0x0

    const-string v3, "ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    const/4 v2, 0x1

    const-string v3, "HEADER_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->HEADER_ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    const/4 v2, 0x2

    const-string v3, "DIVIDER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->DIVIDER:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    const/4 v2, 0x3

    const-string v3, "SWITCH_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->SWITCH_ITEM:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->a:[Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->a:[Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    return-object v0
.end method
