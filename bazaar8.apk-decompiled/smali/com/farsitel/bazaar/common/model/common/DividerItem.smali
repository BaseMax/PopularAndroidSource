.class public abstract Lcom/farsitel/bazaar/common/model/common/DividerItem;
.super Ljava/lang/Object;
.source "DividerItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final _endMargin:I

.field public final _spaceHeight:I

.field public final _startMargin:I

.field public final showDivide:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/common/DividerItem;-><init>(IZIIILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(IZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->_spaceHeight:I

    iput-boolean p2, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->showDivide:Z

    iput p3, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->_startMargin:I

    iput p4, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->_endMargin:I

    return-void
.end method

.method public synthetic constructor <init>(IZIIILh/f/b/f;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/16 v0, 0x10

    if-eqz p6, :cond_2

    const/16 p3, 0x10

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/16 p4, 0x10

    .line 2
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/common/model/common/DividerItem;-><init>(IZII)V

    return-void
.end method


# virtual methods
.method public final endMargin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->_endMargin:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lc/c/a/c/h/d;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getShowDivide()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->showDivide:Z

    return v0
.end method

.method public abstract getViewType()I
.end method

.method public final spaceHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->_spaceHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lc/c/a/c/h/d;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final startMargin(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/common/DividerItem;->_startMargin:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lc/c/a/c/h/d;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method
