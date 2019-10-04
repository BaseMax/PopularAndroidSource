.class public Lc/c/a/f/ka;
.super Lc/c/a/f/ja;
.source "ItemDividerBindingImpl.java"


# static fields
.field public static final B:Landroidx/databinding/ViewDataBinding$b;

.field public static final C:Landroid/util/SparseIntArray;


# instance fields
.field public final D:Landroid/widget/FrameLayout;

.field public final E:Landroid/view/View;

.field public final F:Landroid/widget/Space;

.field public G:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/ka;->B:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/ka;->C:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ka;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ja;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/ka;->G:J

    .line 4
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lc/c/a/f/ka;->D:Landroid/widget/FrameLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/ka;->D:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lc/c/a/f/ka;->E:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lc/c/a/f/ka;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 8
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, p0, Lc/c/a/f/ka;->F:Landroid/widget/Space;

    .line 9
    iget-object p1, p0, Lc/c/a/f/ka;->F:Landroid/widget/Space;

    invoke-virtual {p1, v0}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lc/c/a/f/ka;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/common/DividerItem;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lc/c/a/f/ja;->A:Lcom/farsitel/bazaar/common/model/common/DividerItem;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ka;->G:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ka;->G:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 6
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 7
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/common/DividerItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/ka;->a(Lcom/farsitel/bazaar/common/model/common/DividerItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ka;->G:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/ka;->G:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/ja;->A:Lcom/farsitel/bazaar/common/model/common/DividerItem;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/farsitel/bazaar/common/model/common/DividerItem;->startMargin(Landroid/content/Context;)I

    move-result v5

    .line 7
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/common/DividerItem;->getShowDivide()Z

    move-result v6

    .line 8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/farsitel/bazaar/common/model/common/DividerItem;->endMargin(Landroid/content/Context;)I

    move-result v7

    .line 9
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/farsitel/bazaar/common/model/common/DividerItem;->spaceHeight(Landroid/content/Context;)I

    move-result v4

    move v9, v6

    move v6, v4

    move v4, v5

    move v5, v9

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    cmp-long v8, v0, v2

    if-eqz v8, :cond_1

    .line 10
    iget-object v0, p0, Lc/c/a/f/ka;->E:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lc/c/a/f/ka;->E:Landroid/view/View;

    invoke-static {v0, v7}, Lc/c/a/d/a/b;->a(Landroid/view/View;I)V

    .line 12
    iget-object v0, p0, Lc/c/a/f/ka;->E:Landroid/view/View;

    invoke-static {v0, v4}, Lc/c/a/d/a/b;->b(Landroid/view/View;I)V

    .line 13
    iget-object v0, p0, Lc/c/a/f/ka;->F:Landroid/widget/Space;

    invoke-static {v0, v6}, Lc/c/a/d/a/b;->a(Landroid/widget/Space;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ka;->G:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/ka;->G:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
