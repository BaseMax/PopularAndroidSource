.class public final Lcom/farsitel/bazaar/core/widget/GroupView;
.super Landroid/view/View;
.source "GroupView.kt"


# instance fields
.field public a:[I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/widget/GroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/widget/GroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->a:[I

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lc/c/a/d/h;->GroupView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "attrArray"

    .line 5
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 7
    sget v1, Lc/c/a/d/h;->GroupView_referenceIds:I

    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->c:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/farsitel/bazaar/core/widget/GroupView;->setIds(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/core/widget/GroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setIds(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->b:I

    .line 3
    new-array v4, v1, [C

    const/16 v2, 0x2c

    aput-char v2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lh/k/n;->a(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->b:I

    iget-object v3, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->a:[I

    array-length v4, v3

    if-lt v2, v4, :cond_2

    mul-int/lit8 v2, v2, 0x2

    .line 6
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->a:[I

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->a:[I

    iget v3, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lc/c/a/d/b/d;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v3

    .line 8
    iget v0, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->b:I

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/GroupView;->a:[I

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v4, v6

    :cond_0
    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    .line 4
    invoke-virtual {v6, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/core/widget/GroupView;->a(I)V

    return-void
.end method
