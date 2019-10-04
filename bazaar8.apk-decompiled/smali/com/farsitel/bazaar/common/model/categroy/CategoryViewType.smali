.class public final enum Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;
.super Ljava/lang/Enum;
.source "CategoryItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

.field public static final enum CATEGORY_ITEM:Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

.field public static final enum DIVIDER_ITEM:Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    const/4 v2, 0x0

    const-string v3, "CATEGORY_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;->CATEGORY_ITEM:Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    const/4 v2, 0x1

    const-string v3, "DIVIDER_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;->DIVIDER_ITEM:Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;->$VALUES:[Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;->$VALUES:[Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/categroy/CategoryViewType;

    return-object v0
.end method
