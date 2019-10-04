.class public Lc/c/a/f/Y;
.super Lc/c/a/f/X;
.source "ItemArticleBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final F:Landroidx/databinding/ViewDataBinding$b;

.field public static final G:Landroid/util/SparseIntArray;


# instance fields
.field public final H:Landroid/widget/LinearLayout;

.field public final I:Landroid/view/View$OnClickListener;

.field public J:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Y;->F:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Y;->G:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Y;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lc/c/a/f/X;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/Y;->J:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/X;->A:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/f/X;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/X;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lc/c/a/f/Y;->H:Landroid/widget/LinearLayout;

    .line 8
    iget-object p1, p0, Lc/c/a/f/Y;->H:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 10
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/Y;->I:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lc/c/a/f/Y;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/m;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/X;->D:Lc/c/a/n/c/d/m;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Y;->J:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Y;->J:J

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

.method public a(Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/X;->E:Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Y;->J:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Y;->J:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Y;->a(Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/d/m;

    invoke-virtual {p0, p2}, Lc/c/a/f/Y;->a(Lc/c/a/n/c/d/m;)V

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
    iget-object p1, p0, Lc/c/a/f/X;->E:Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    .line 2
    iget-object p2, p0, Lc/c/a/f/X;->D:Lc/c/a/n/c/d/m;

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
    iget-wide v2, v1, Lc/c/a/f/Y;->J:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/Y;->J:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/X;->E:Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    .line 6
    iget-object v6, v1, Lc/c/a/f/X;->D:Lc/c/a/n/c/d/m;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v2

    const/4 v8, 0x0

    cmp-long v9, v6, v4

    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;->getSummery()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v9, v8

    move-object v11, v9

    :goto_0
    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v1, Lc/c/a/f/X;->A:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, v1, Lc/c/a/f/X;->A:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v9}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 12
    iget-object v10, v1, Lc/c/a/f/X;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 13
    iget-object v0, v1, Lc/c/a/f/X;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    const-wide/16 v6, 0x4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, v1, Lc/c/a/f/Y;->H:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lc/c/a/f/Y;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 15
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
    iget-wide v0, p0, Lc/c/a/f/Y;->J:J

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
    iput-wide v0, p0, Lc/c/a/f/Y;->J:J

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
