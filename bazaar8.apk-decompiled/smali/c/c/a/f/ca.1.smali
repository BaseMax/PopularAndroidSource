.class public Lc/c/a/f/ca;
.super Lc/c/a/f/ba;
.source "ItemCategoryBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final C:Landroidx/databinding/ViewDataBinding$b;

.field public static final D:Landroid/util/SparseIntArray;


# instance fields
.field public final E:Landroid/widget/LinearLayout;

.field public final F:Landroidx/appcompat/widget/AppCompatImageView;

.field public final G:Landroidx/appcompat/widget/AppCompatTextView;

.field public final H:Landroid/view/View$OnClickListener;

.field public I:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/ca;->C:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/ca;->D:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ca;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ba;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/ca;->I:J

    .line 4
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lc/c/a/f/ca;->E:Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/ca;->E:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object v1, p3, p1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v1, p0, Lc/c/a/f/ca;->F:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    iget-object v1, p0, Lc/c/a/f/ca;->F:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 8
    aget-object p3, p3, v1

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lc/c/a/f/ca;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    iget-object p3, p0, Lc/c/a/f/ca;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 11
    new-instance p2, Lc/c/a/j/a/a;

    invoke-direct {p2, p0, p1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p2, p0, Lc/c/a/f/ca;->H:Landroid/view/View$OnClickListener;

    .line 12
    invoke-virtual {p0}, Lc/c/a/f/ca;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/m;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/ba;->B:Lc/c/a/n/c/d/m;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ca;->I:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ca;->I:J

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

.method public a(Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/ba;->A:Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ca;->I:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ca;->I:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/ca;->a(Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/d/m;

    invoke-virtual {p0, p2}, Lc/c/a/f/ca;->a(Lc/c/a/n/c/d/m;)V

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
    iget-object p1, p0, Lc/c/a/f/ba;->A:Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    .line 2
    iget-object p2, p0, Lc/c/a/f/ba;->B:Lc/c/a/n/c/d/m;

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
    iget-wide v0, p0, Lc/c/a/f/ca;->I:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/ca;->I:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lc/c/a/f/ba;->A:Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    .line 6
    iget-object v5, p0, Lc/c/a/f/ba;->B:Lc/c/a/n/c/d/m;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    const/4 v7, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v9, v7

    goto :goto_0

    :cond_0
    move-object v4, v7

    move-object v9, v4

    :goto_0
    const-wide/16 v7, 0x4

    and-long/2addr v0, v7

    cmp-long v7, v0, v2

    if-eqz v7, :cond_1

    .line 9
    iget-object v0, p0, Lc/c/a/f/ca;->E:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc/c/a/f/ca;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    .line 10
    iget-object v8, p0, Lc/c/a/f/ca;->F:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 11
    iget-object v0, p0, Lc/c/a/f/ca;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v4}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 12
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
    iget-wide v0, p0, Lc/c/a/f/ca;->I:J

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
    iput-wide v0, p0, Lc/c/a/f/ca;->I:J

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