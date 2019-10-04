.class public Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;
.super Ljava/lang/Object;
.source "VitrinSectionItems.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData<",
        "Lcom/farsitel/bazaar/common/model/page/PromoItem;",
        ">;",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;"
    }
.end annotation


# instance fields
.field public final _actionLabel:Ljava/lang/String;

.field public final _title:Ljava/lang/String;

.field public final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PromoItem;",
            ">;"
        }
    .end annotation
.end field

.field public currentPosition:I

.field public currentPositionOffset:I

.field public final referrer:Ljava/lang/String;

.field public final slug:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PromoItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->apps:Ljava/util/List;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->_title:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->_actionLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->slug:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->referrer:Ljava/lang/String;

    iput p6, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILh/f/b/f;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 2
    sget-object p6, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_PROMO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {p6}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result p6

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getActionLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->_actionLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->currentPosition:I

    return v0
.end method

.method public getCurrentPositionOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->currentPositionOffset:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PromoItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->viewType:I

    return v0
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->currentPosition:I

    return-void
.end method

.method public setCurrentPositionOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/common/model/page/PromoVitrinSection;->currentPositionOffset:I

    return-void
.end method
