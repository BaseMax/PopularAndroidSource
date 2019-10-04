.class public final enum Lcom/farsitel/bazaar/common/model/page/PageItemType;
.super Ljava/lang/Enum;
.source "PageType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/page/PageItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_APP_MINI:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_CATEGORY_HEADER:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_CATEGORY_ITEM:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_INLINE:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_INLINE_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_PROMO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_SERIAL:Lcom/farsitel/bazaar/common/model/page/PageItemType;

.field public static final enum LIST_VIDEO:Lcom/farsitel/bazaar/common/model/page/PageItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/page/PageItemType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x0

    const-string v3, "LIST_PROMO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_PROMO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x1

    const-string v3, "LIST_INLINE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_INLINE:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x2

    const-string v3, "LIST_HAMI_APP"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x3

    const-string v3, "LIST_INLINE_APP"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_INLINE_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x4

    const-string v3, "LIST_HAMI_INLINE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x5

    const-string v3, "LIST_VIDEO"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_VIDEO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x6

    const-string v3, "LIST_SERIAL"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_SERIAL:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/4 v2, 0x7

    const-string v3, "LIST_APP"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/16 v2, 0x8

    const-string v3, "LIST_APP_MINI"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_APP_MINI:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/16 v2, 0x9

    const-string v3, "LIST_CATEGORY_HEADER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_CATEGORY_HEADER:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    const/16 v2, 0xa

    const-string v3, "LIST_CATEGORY_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/page/PageItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_CATEGORY_ITEM:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/page/PageItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/page/PageItemType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/page/PageItemType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/page/PageItemType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/page/PageItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/page/PageItemType;

    return-object v0
.end method
