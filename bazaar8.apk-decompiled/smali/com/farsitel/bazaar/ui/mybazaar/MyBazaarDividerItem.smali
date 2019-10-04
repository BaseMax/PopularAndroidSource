.class public final Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarDividerItem;
.super Lcom/farsitel/bazaar/common/model/common/DividerItem;
.source "MyBazaarItem.kt"


# instance fields
.field public final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x38

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/common/DividerItem;-><init>(IZIIILh/f/b/f;)V

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;->DIVIDER:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarDividerItem;->viewType:I

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarDividerItem;->viewType:I

    return v0
.end method
