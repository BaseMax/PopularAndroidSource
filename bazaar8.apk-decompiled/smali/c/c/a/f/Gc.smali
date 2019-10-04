.class public Lc/c/a/f/Gc;
.super Lc/c/a/f/Fc;
.source "ItemVitrinVideoBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final H:Landroidx/databinding/ViewDataBinding$b;

.field public static final I:Landroid/util/SparseIntArray;


# instance fields
.field public final J:Landroid/view/View$OnClickListener;

.field public K:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Gc;->H:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Gc;->I:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Gc;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/farsitel/bazaar/widget/AutosizingTextView;

    const/4 v1, 0x3

    aget-object p3, p3, v1

    move-object v9, p3

    check-cast v9, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lc/c/a/f/Fc;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/farsitel/bazaar/widget/AutosizingTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/Gc;->K:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/Fc;->A:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/f/Fc;->B:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/Fc;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/Fc;->D:Lcom/farsitel/bazaar/widget/AutosizingTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/Fc;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 10
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/Gc;->J:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lc/c/a/f/Gc;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/m;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/Fc;->G:Lc/c/a/n/c/d/m;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Gc;->K:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Gc;->K:J

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

.method public a(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/Fc;->F:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Gc;->K:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Gc;->K:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Gc;->a(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/d/m;

    invoke-virtual {p0, p2}, Lc/c/a/f/Gc;->a(Lc/c/a/n/c/d/m;)V

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
    iget-object p1, p0, Lc/c/a/f/Fc;->F:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    .line 2
    iget-object p2, p0, Lc/c/a/f/Fc;->G:Lc/c/a/n/c/d/m;

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
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/Gc;->K:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/Gc;->K:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    iget-object v6, v1, Lc/c/a/f/Fc;->F:Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    .line 6
    iget-object v7, v1, Lc/c/a/f/Fc;->G:Lc/c/a/n/c/d/m;

    const-wide/16 v7, 0x5

    and-long/2addr v7, v2

    const/4 v9, 0x0

    cmp-long v10, v7, v4

    if-eqz v10, :cond_0

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isFree()Z

    move-result v0

    .line 8
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getInfo()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoName()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    goto :goto_0

    :cond_0
    move-object v10, v9

    move-object v12, v10

    :goto_0
    const-wide/16 v13, 0x4

    and-long/2addr v2, v13

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 11
    iget-object v2, v1, Lc/c/a/f/Fc;->A:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lc/c/a/f/Gc;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    cmp-long v2, v7, v4

    if-eqz v2, :cond_2

    .line 12
    iget-object v11, v1, Lc/c/a/f/Fc;->B:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    const v2, 0x7f080074

    invoke-static {v11, v2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v2, v1, Lc/c/a/f/Fc;->B:Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static/range {v11 .. v17}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 13
    iget-object v2, v1, Lc/c/a/f/Fc;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 14
    iget-object v0, v1, Lc/c/a/f/Fc;->D:Lcom/farsitel/bazaar/widget/AutosizingTextView;

    invoke-static {v0, v9}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, v1, Lc/c/a/f/Fc;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v10}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 16
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
    iget-wide v0, p0, Lc/c/a/f/Gc;->K:J

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
    iput-wide v0, p0, Lc/c/a/f/Gc;->K:J

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
