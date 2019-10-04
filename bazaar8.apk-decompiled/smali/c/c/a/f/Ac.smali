.class public Lc/c/a/f/Ac;
.super Lc/c/a/f/zc;
.source "ItemVitrinAppBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final H:Landroidx/databinding/ViewDataBinding$b;

.field public static final I:Landroid/util/SparseIntArray;


# instance fields
.field public final J:Landroid/widget/LinearLayout;

.field public final K:Landroid/view/View$OnClickListener;

.field public L:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Ac;->H:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Ac;->I:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Ac;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lc/c/a/f/zc;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/NoDiscountTextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/Ac;->L:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/zc;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lc/c/a/f/Ac;->J:Landroid/widget/LinearLayout;

    .line 6
    iget-object p1, p0, Lc/c/a/f/Ac;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/zc;->B:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/zc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lc/c/a/f/zc;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lc/c/a/f/zc;->E:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 12
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/Ac;->K:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lc/c/a/f/Ac;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/m;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/zc;->G:Lc/c/a/n/c/d/m;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ac;->L:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ac;->L:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x29

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

.method public a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/zc;->F:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ac;->L:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ac;->L:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ac;->a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/d/m;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ac;->a(Lc/c/a/n/c/d/m;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/f/zc;->F:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    .line 2
    iget-object p2, p0, Lc/c/a/f/zc;->G:Lc/c/a/n/c/d/m;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2, p1}, Lc/c/a/n/c/d/m;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    :cond_1
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/Ac;->L:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/Ac;->L:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    iget-object v6, v1, Lc/c/a/f/zc;->F:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    .line 6
    iget-object v7, v1, Lc/c/a/f/zc;->G:Lc/c/a/n/c/d/m;

    const-wide/16 v7, 0x5

    and-long/2addr v7, v2

    const/4 v9, 0x0

    cmp-long v10, v7, v4

    if-eqz v10, :cond_1

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getIapVisibility()Z

    move-result v0

    .line 8
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getNoDiscountPriceString()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getAppName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v10

    move v10, v0

    move-object v0, v9

    move-object/from16 v9, v16

    goto :goto_0

    :cond_0
    move-object v0, v9

    move-object v11, v0

    const/4 v10, 0x0

    .line 11
    :goto_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v9

    move-object v15, v11

    move-object v14, v12

    move/from16 v16, v10

    move-object v10, v0

    move/from16 v0, v16

    goto :goto_1

    :cond_1
    move-object v10, v9

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    :goto_1
    cmp-long v9, v7, v4

    if-eqz v9, :cond_2

    .line 12
    iget-object v7, v1, Lc/c/a/f/zc;->A:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v7, v0}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 13
    iget-object v9, v1, Lc/c/a/f/zc;->B:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    const v0, 0x7f080073

    invoke-static {v9, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v8, v1, Lc/c/a/f/zc;->B:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v4, 0x7f0700c5

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v5, v13

    move-object v13, v0

    move-object v0, v14

    move-object v14, v7

    move-object v7, v15

    move-object v15, v4

    invoke-static/range {v9 .. v15}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 14
    iget-object v4, v1, Lc/c/a/f/zc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v4, v7}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 15
    iget-object v4, v1, Lc/c/a/f/zc;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, v6}, Lc/c/a/n/c/c/b/a;->a(Landroid/widget/TextView;Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    .line 16
    iget-object v4, v1, Lc/c/a/f/zc;->E:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-static {v4, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, v1, Lc/c/a/f/zc;->E:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-static {v0, v5}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, v1, Lc/c/a/f/Ac;->J:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lc/c/a/f/Ac;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 19
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
    iget-wide v0, p0, Lc/c/a/f/Ac;->L:J

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
    iput-wide v0, p0, Lc/c/a/f/Ac;->L:J

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
