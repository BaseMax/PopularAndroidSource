.class public Lc/c/a/f/ic;
.super Lc/c/a/f/hc;
.source "ItemVideoDetailVideoInfoBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final J:Landroidx/databinding/ViewDataBinding$b;

.field public static final K:Landroid/util/SparseIntArray;


# instance fields
.field public final L:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final M:Landroid/view/View$OnClickListener;

.field public final N:Landroid/view/View$OnClickListener;

.field public final O:Landroid/view/View$OnClickListener;

.field public P:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/ic;->K:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/ic;->K:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01f3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/ic;->K:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03d3

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/ic;->K:Landroid/util/SparseIntArray;

    const v1, 0x7f0a019e

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/ic;->J:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/ic;->K:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ic;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15

    move-object v11, p0

    const/4 v0, 0x7

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/farsitel/bazaar/widget/CoverForeground;

    const/4 v12, 0x1

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Space;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v14, 0x3

    aget-object v0, p3, v14

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lc/c/a/f/hc;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Lcom/farsitel/bazaar/widget/CoverForeground;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/Space;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lc/c/a/f/ic;->P:J

    .line 4
    iget-object v0, v11, Lc/c/a/f/hc;->C:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v11, Lc/c/a/f/ic;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    iget-object v0, v11, Lc/c/a/f/ic;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lc/c/a/f/hc;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v11, Lc/c/a/f/hc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v11, Lc/c/a/f/hc;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 10
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 11
    new-instance v0, Lc/c/a/j/a/a;

    invoke-direct {v0, p0, v14}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v11, Lc/c/a/f/ic;->M:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v0, Lc/c/a/j/a/a;

    invoke-direct {v0, p0, v12}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v11, Lc/c/a/f/ic;->N:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lc/c/a/j/a/a;

    invoke-direct {v0, p0, v13}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v11, Lc/c/a/f/ic;->O:Landroid/view/View$OnClickListener;

    .line 14
    invoke-virtual {p0}, Lc/c/a/f/ic;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/hc;->H:Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ic;->P:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ic;->P:J

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

.method public a(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/hc;->I:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ic;->P:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ic;->P:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x30

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

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/ic;->a(Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    invoke-virtual {p0, p2}, Lc/c/a/f/ic;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V

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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/hc;->H:Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    .line 2
    iget-object v1, p0, Lc/c/a/f/hc;->I:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_8

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    if-eqz p2, :cond_8

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object p1

    .line 4
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;->onPublisherClicked(Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Lc/c/a/f/hc;->H:Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    .line 6
    iget-object v1, p0, Lc/c/a/f/hc;->I:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    if-eqz v1, :cond_4

    const/4 p2, 0x1

    :cond_4
    if-eqz p2, :cond_8

    .line 7
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;->onVideoNameClicked(Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;)V

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, p0, Lc/c/a/f/hc;->H:Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    .line 9
    iget-object v1, p0, Lc/c/a/f/hc;->I:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object p1

    .line 11
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;->onCoverImageClicked(Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/ic;->P:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/ic;->P:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/hc;->H:Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    .line 6
    iget-object v6, v1, Lc/c/a/f/hc;->I:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v2

    const/4 v8, 0x0

    cmp-long v9, v6, v4

    if-eqz v9, :cond_3

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v9

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getHeaderImage()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    move-result-object v11

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v8

    move-object v9, v0

    move-object v10, v9

    move-object v11, v10

    :goto_0
    if-eqz v9, :cond_1

    .line 11
    invoke-virtual {v9}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    if-eqz v11, :cond_2

    .line 12
    invoke-virtual {v11}, Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_2
    move-object v12, v10

    goto :goto_2

    :cond_3
    move-object v0, v8

    move-object v9, v0

    move-object v12, v9

    :goto_2
    cmp-long v10, v6, v4

    if-eqz v10, :cond_4

    .line 13
    iget-object v11, v1, Lc/c/a/f/hc;->C:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 14
    iget-object v6, v1, Lc/c/a/f/hc;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 15
    iget-object v13, v1, Lc/c/a/f/hc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    const v6, 0x7f080074

    invoke-static {v13, v6}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v18, 0x0

    iget-object v6, v1, Lc/c/a/f/hc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070069

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object v14, v9

    invoke-static/range {v13 .. v19}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 16
    iget-object v6, v1, Lc/c/a/f/hc;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    const-wide/16 v6, 0x4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, v1, Lc/c/a/f/hc;->D:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, v1, Lc/c/a/f/ic;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, v1, Lc/c/a/f/hc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/ic;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, v1, Lc/c/a/f/hc;->G:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, v1, Lc/c/a/f/ic;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 20
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
    iget-wide v0, p0, Lc/c/a/f/ic;->P:J

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
    iput-wide v0, p0, Lc/c/a/f/ic;->P:J

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
