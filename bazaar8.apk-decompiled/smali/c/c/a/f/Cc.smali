.class public Lc/c/a/f/Cc;
.super Lc/c/a/f/Bc;
.source "ItemVitrinPromoBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final D:Landroidx/databinding/ViewDataBinding$b;

.field public static final E:Landroid/util/SparseIntArray;


# instance fields
.field public final F:Landroid/widget/FrameLayout;

.field public final G:Landroid/view/View$OnClickListener;

.field public H:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Cc;->D:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Cc;->E:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Cc;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, v1}, Lc/c/a/f/Bc;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/farsitel/bazaar/core/widget/AspectRatioImageView;)V

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, p0, Lc/c/a/f/Cc;->H:J

    .line 4
    aget-object p1, p3, v2

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lc/c/a/f/Cc;->F:Landroid/widget/FrameLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/Cc;->F:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/Bc;->A:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 8
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/Cc;->G:Landroid/view/View$OnClickListener;

    .line 9
    invoke-virtual {p0}, Lc/c/a/f/Cc;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/m;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/Bc;->C:Lc/c/a/n/c/d/m;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Cc;->H:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Cc;->H:J

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

.method public a(Lcom/farsitel/bazaar/common/model/page/PromoItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/Bc;->B:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Cc;->H:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Cc;->H:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/PromoItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Cc;->a(Lcom/farsitel/bazaar/common/model/page/PromoItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/d/m;

    invoke-virtual {p0, p2}, Lc/c/a/f/Cc;->a(Lc/c/a/n/c/d/m;)V

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
    iget-object p1, p0, Lc/c/a/f/Bc;->B:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    .line 2
    iget-object p2, p0, Lc/c/a/f/Bc;->C:Lc/c/a/n/c/d/m;

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
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Cc;->H:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/Cc;->H:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/Bc;->B:Lcom/farsitel/bazaar/common/model/page/PromoItem;

    const/4 v5, 0x0

    .line 6
    iget-object v6, p0, Lc/c/a/f/Bc;->C:Lc/c/a/n/c/d/m;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/PromoItem;->getImage()Ljava/lang/String;

    move-result-object v5

    :cond_0
    move-object v9, v5

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 8
    iget-object v0, p0, Lc/c/a/f/Cc;->F:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lc/c/a/f/Cc;->G:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    .line 9
    iget-object v8, p0, Lc/c/a/f/Bc;->A:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    const v0, 0x7f080073

    invoke-static {v8, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 10
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
    iget-wide v0, p0, Lc/c/a/f/Cc;->H:J

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
    iput-wide v0, p0, Lc/c/a/f/Cc;->H:J

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
