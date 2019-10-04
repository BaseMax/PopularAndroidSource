.class public Lc/c/a/f/zb;
.super Lc/c/a/f/yb;
.source "ItemSubscriptionAppBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final I:Landroidx/databinding/ViewDataBinding$b;

.field public static final J:Landroid/util/SparseIntArray;


# instance fields
.field public final K:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final L:Landroid/widget/ProgressBar;

.field public final M:Landroid/view/View$OnClickListener;

.field public final N:Landroid/view/View$OnClickListener;

.field public O:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/zb;->I:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/zb;->J:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/zb;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v11, 0x2

    aget-object v1, p3, v11

    move-object v8, v1

    check-cast v8, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lc/c/a/f/yb;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/zb;->O:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/yb;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/f/yb;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/yb;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/yb;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/yb;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lc/c/a/f/yb;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 10
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lc/c/a/f/zb;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    iget-object p1, p0, Lc/c/a/f/zb;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 12
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lc/c/a/f/zb;->L:Landroid/widget/ProgressBar;

    .line 13
    iget-object p1, p0, Lc/c/a/f/zb;->L:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 15
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v11}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/zb;->M:Landroid/view/View$OnClickListener;

    .line 16
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/zb;->N:Landroid/view/View$OnClickListener;

    .line 17
    invoke-virtual {p0}, Lc/c/a/f/zb;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/z/b;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/yb;->H:Lc/c/a/n/z/b;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/zb;->O:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/zb;->O:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1c

    .line 14
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 15
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/yb;->G:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/zb;->O:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/zb;->O:J

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 7
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 8
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
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
    check-cast p2, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/zb;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/z/b;

    invoke-virtual {p0, p2}, Lc/c/a/f/zb;->a(Lc/c/a/n/z/b;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/yb;->G:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    .line 2
    iget-object v2, p0, Lc/c/a/f/yb;->H:Lc/c/a/n/z/b;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v2, p2, p1}, Lc/c/a/n/z/b;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/yb;->G:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    .line 5
    iget-object p2, p0, Lc/c/a/f/yb;->H:Lc/c/a/n/z/b;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 6
    invoke-interface {p2, p1}, Lc/c/a/n/z/b;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/zb;->O:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/zb;->O:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/yb;->G:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    .line 6
    iget-object v6, v1, Lc/c/a/f/yb;->H:Lc/c/a/n/z/b;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmp-long v10, v6, v4

    if-eqz v10, :cond_1

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getProductTitle()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getSubscriptionPrice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getStartDate()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getShowMoreMenu()Z

    move-result v12

    .line 11
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getIconUrl()Ljava/lang/String;

    move-result-object v13

    .line 12
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getEndDate()Ljava/lang/String;

    move-result-object v14

    .line 13
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading()Z

    move-result v0

    move-object/from16 v17, v11

    move v11, v0

    move-object v0, v9

    move-object/from16 v9, v17

    goto :goto_0

    :cond_0
    move-object v0, v9

    move-object v10, v0

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 15
    :goto_0
    iget-object v4, v1, Lc/c/a/f/yb;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v14, v5, v8

    const v8, 0x7f1001e2

    invoke-virtual {v4, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v0

    move-object v0, v9

    move/from16 v16, v11

    move v8, v12

    move-object v4, v15

    move-object v15, v10

    move-object v10, v13

    goto :goto_1

    :cond_1
    move-object v0, v9

    move-object v4, v0

    move-object v5, v4

    move-object v10, v5

    move-object v15, v10

    const/16 v16, 0x0

    :goto_1
    const-wide/16 v11, 0x4

    and-long/2addr v2, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v2, v11

    if-eqz v9, :cond_2

    .line 16
    iget-object v2, v1, Lc/c/a/f/yb;->A:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v3, v1, Lc/c/a/f/zb;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v2, v1, Lc/c/a/f/zb;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v1, Lc/c/a/f/zb;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    cmp-long v2, v6, v11

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, v1, Lc/c/a/f/yb;->A:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 19
    iget-object v9, v1, Lc/c/a/f/yb;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    move-object v3, v15

    move-object v15, v2

    invoke-static/range {v9 .. v15}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 20
    iget-object v2, v1, Lc/c/a/f/yb;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, v1, Lc/c/a/f/yb;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v4}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, v1, Lc/c/a/f/yb;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v5}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, v1, Lc/c/a/f/yb;->F:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v3}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, v1, Lc/c/a/f/zb;->L:Landroid/widget/ProgressBar;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 25
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
    iget-wide v0, p0, Lc/c/a/f/zb;->O:J

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/zb;->O:J

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
