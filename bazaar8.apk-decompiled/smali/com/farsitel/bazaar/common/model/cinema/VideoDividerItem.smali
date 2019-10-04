.class public final Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;
.super Lcom/farsitel/bazaar/common/model/common/DividerItem;
.source "ViewHolderItem.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;-><init>(IZIILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/common/DividerItem;-><init>(IZIIILh/f/b/f;)V

    .line 3
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(IZIILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/16 p3, 0x10

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;-><init>(IZI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;->getViewType()I

    move-result v0

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;->getViewType()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;->viewType:I

    return v0
.end method
