.class public Lc/c/a/f/Ka;
.super Lc/c/a/f/Ja;
.source "ItemListVideoBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final L:Landroidx/databinding/ViewDataBinding$b;

.field public static final M:Landroid/util/SparseIntArray;


# instance fields
.field public final N:Landroid/widget/FrameLayout;

.field public final O:Landroid/view/View$OnClickListener;

.field public final P:Landroid/view/View$OnClickListener;

.field public Q:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/Ka;->M:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/Ka;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c3

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Ka;->L:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Ka;->M:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Ka;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v11, 0x2

    aget-object v1, p3, v11

    move-object v9, v1

    check-cast v9, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lc/c/a/f/Ja;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LoadingButton;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/Ka;->Q:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lc/c/a/f/Ka;->N:Landroid/widget/FrameLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/Ka;->N:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/Ja;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/Ja;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/Ja;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lc/c/a/f/Ja;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lc/c/a/f/Ja;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 12
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/Ka;->O:Landroid/view/View$OnClickListener;

    .line 13
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v11}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/Ka;->P:Landroid/view/View$OnClickListener;

    .line 14
    invoke-virtual {p0}, Lc/c/a/f/Ka;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/c/a/a/a/k;)V
    .locals 4

    .line 13
    iput-object p1, p0, Lc/c/a/f/Ja;->K:Lc/c/a/n/c/c/a/a/a/k;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ka;->Q:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ka;->Q:J

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 17
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 18
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem$Video;)V
    .locals 4

    .line 6
    iput-object p1, p0, Lc/c/a/f/Ja;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ka;->Q:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ka;->Q:J

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

    .line 10
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 11
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lc/c/a/f/Ja;->I:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    return-void
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x17

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ka;->a(Lcom/farsitel/bazaar/common/model/page/ListItem$Video;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/c/a/a/a/k;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ka;->a(Lc/c/a/n/c/c/a/a/a/k;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x27

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ka;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x15

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ka;->b(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x14

    if-ne v0, p1, :cond_4

    .line 5
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ka;->a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
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

    .line 3
    :cond_0
    iget-object p1, p0, Lc/c/a/f/Ja;->K:Lc/c/a/n/c/c/a/a/a/k;

    .line 4
    iget-object v1, p0, Lc/c/a/f/Ja;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 5
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a/a/k;->a(Lcom/farsitel/bazaar/common/model/page/ListItem$Video;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lc/c/a/f/Ja;->K:Lc/c/a/n/c/c/a/a/a/k;

    .line 7
    iget-object v1, p0, Lc/c/a/f/Ja;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a/a/k;->b(Lcom/farsitel/bazaar/common/model/page/ListItem$Video;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/f/Ja;->J:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/Ja;->H:Ljava/lang/Integer;

    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/Ka;->Q:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/Ka;->Q:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/Ja;->G:Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    .line 6
    iget-object v6, v1, Lc/c/a/f/Ja;->K:Lc/c/a/n/c/c/a/a/a/k;

    const-wide/16 v6, 0x21

    and-long/2addr v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmp-long v10, v6, v4

    if-eqz v10, :cond_2

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v10

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getShowActionButton()Z

    move-result v0

    goto :goto_0

    :cond_0
    move-object v10, v9

    const/4 v0, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 9
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isLoading()Z

    move-result v8

    .line 10
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoName()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getMoreInfo()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getInfo()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move-object v15, v13

    move/from16 v21, v8

    move v8, v0

    move-object v0, v9

    move-object v9, v12

    move/from16 v12, v21

    goto :goto_1

    :cond_1
    move v8, v0

    :cond_2
    move-object v0, v9

    move-object v10, v0

    move-object v11, v10

    move-object v15, v11

    const/4 v12, 0x0

    :goto_1
    const-wide/16 v13, 0x20

    and-long/2addr v2, v13

    cmp-long v13, v2, v4

    if-eqz v13, :cond_3

    .line 15
    iget-object v2, v1, Lc/c/a/f/Ka;->N:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lc/c/a/f/Ka;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v2, v1, Lc/c/a/f/Ja;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    iget-object v3, v1, Lc/c/a/f/Ka;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    cmp-long v2, v6, v4

    if-eqz v2, :cond_4

    .line 17
    iget-object v14, v1, Lc/c/a/f/Ja;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f080074

    invoke-static {v14, v2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v2, v1, Lc/c/a/f/Ja;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-static/range {v14 .. v20}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 18
    iget-object v2, v1, Lc/c/a/f/Ja;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v9}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 19
    iget-object v2, v1, Lc/c/a/f/Ja;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v11}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 20
    iget-object v2, v1, Lc/c/a/f/Ja;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v11}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 21
    iget-object v2, v1, Lc/c/a/f/Ja;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, v1, Lc/c/a/f/Ja;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v0, v10}, Lcom/farsitel/bazaar/widget/LoadingButton;->setText(Ljava/lang/String;)V

    .line 23
    iget-object v0, v1, Lc/c/a/f/Ja;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 24
    iget-object v0, v1, Lc/c/a/f/Ja;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v0, v12}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    :cond_4
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
    iget-wide v0, p0, Lc/c/a/f/Ka;->Q:J

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

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/Ka;->Q:J

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
