.class public final Lme/a/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/a/a/a/a/a/c;


# instance fields
.field protected final a:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public final canScrollListDown()Z
    .locals 5

    .line 50
    iget-object v0, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 51
    iget-object v1, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 52
    iget-object v2, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v2, v0

    .line 54
    iget-object v3, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt v2, v1, :cond_1

    .line 55
    iget-object v1, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v4
.end method

.method public final canScrollListUp()Z
    .locals 3

    .line 43
    iget-object v0, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 44
    iget-object v2, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_1

    .line 45
    iget-object v2, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public final isInAbsoluteEnd()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lme/a/a/a/a/a/a;->canScrollListDown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isInAbsoluteStart()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lme/a/a/a/a/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lme/a/a/a/a/a/a;->canScrollListUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
