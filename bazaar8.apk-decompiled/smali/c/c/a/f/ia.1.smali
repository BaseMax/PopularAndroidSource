.class public Lc/c/a/f/ia;
.super Lc/c/a/f/ha;
.source "ItemCinemaSeasonEpisodeBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final I:Landroidx/databinding/ViewDataBinding$b;

.field public static final J:Landroid/util/SparseIntArray;


# instance fields
.field public final K:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final L:Landroid/view/View$OnClickListener;

.field public final M:Landroid/view/View$OnClickListener;

.field public N:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/ia;->J:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/ia;->J:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0034

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/ia;->J:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c3

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/ia;->I:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/ia;->J:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ia;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x2

    aget-object v1, p3, v0

    move-object v8, v1

    check-cast v8, Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    const/4 v11, 0x1

    aget-object v1, p3, v11

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lc/c/a/f/ha;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/NoDiscountTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LoadingButton;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/ia;->N:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lc/c/a/f/ia;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/ia;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/ha;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/ha;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/ha;->E:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lc/c/a/f/ha;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 11
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v11}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/ia;->L:Landroid/view/View$OnClickListener;

    .line 12
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/ia;->M:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lc/c/a/f/ia;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/c/a/a/a/i;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/ha;->H:Lc/c/a/n/c/c/a/a/a/i;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ia;->N:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ia;->N:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xb

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

.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/ha;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ia;->N:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ia;->N:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {p0, p2}, Lc/c/a/f/ia;->a(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/c/a/a/a/i;

    invoke-virtual {p0, p2}, Lc/c/a/f/ia;->a(Lc/c/a/n/c/c/a/a/a/i;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/ha;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    .line 2
    iget-object v1, p0, Lc/c/a/f/ha;->H:Lc/c/a/n/c/c/a/a/a/i;

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    invoke-interface {v1, p1}, Lc/c/a/n/c/c/a/a/a/i;->a(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/ha;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    .line 5
    iget-object v1, p0, Lc/c/a/f/ha;->H:Lc/c/a/n/c/c/a/a/a/i;

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    invoke-interface {v1, p1}, Lc/c/a/n/c/c/a/a/a/i;->b(Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;)V

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
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/ia;->N:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/ia;->N:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/ha;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    .line 6
    iget-object v6, v1, Lc/c/a/f/ha;->H:Lc/c/a/n/c/c/a/a/a/i;

    const/4 v6, 0x0

    const-wide/16 v7, 0x5

    and-long/2addr v7, v2

    const/4 v9, 0x0

    cmp-long v10, v7, v4

    if-eqz v10, :cond_1

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v9

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getPriceBeforeDiscountString()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getName()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getShowLoadingButton()Z

    move-result v11

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move v15, v11

    move-object v11, v9

    move-object v9, v10

    goto :goto_1

    :cond_1
    move-object v0, v9

    move-object v6, v0

    move-object v11, v6

    const/4 v15, 0x0

    :goto_1
    const-wide/16 v12, 0x4

    and-long/2addr v2, v12

    cmp-long v10, v2, v4

    if-eqz v10, :cond_2

    .line 13
    iget-object v2, v1, Lc/c/a/f/ia;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v1, Lc/c/a/f/ia;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v2, v1, Lc/c/a/f/ha;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    iget-object v3, v1, Lc/c/a/f/ia;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    cmp-long v2, v7, v4

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, v1, Lc/c/a/f/ha;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v9}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, v1, Lc/c/a/f/ha;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-static {v2, v6}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, v1, Lc/c/a/f/ha;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-static {v2, v6}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 18
    iget-object v10, v1, Lc/c/a/f/ha;->E:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f080074

    invoke-static {v10, v2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    iget-object v3, v1, Lc/c/a/f/ha;->E:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move v6, v15

    move-object v15, v2

    invoke-static/range {v10 .. v16}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 19
    iget-object v2, v1, Lc/c/a/f/ha;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v2, v0}, Lcom/farsitel/bazaar/widget/LoadingButton;->setText(Ljava/lang/String;)V

    .line 20
    iget-object v0, v1, Lc/c/a/f/ha;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v0, v6}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 21
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
    iget-wide v0, p0, Lc/c/a/f/ia;->N:J

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
    iput-wide v0, p0, Lc/c/a/f/ia;->N:J

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
