.class public Lc/c/a/f/_a;
.super Lc/c/a/f/Za;
.source "ItemPaymentOptionBindingImpl.java"


# static fields
.field public static final E:Landroidx/databinding/ViewDataBinding$b;

.field public static final F:Landroid/util/SparseIntArray;


# instance fields
.field public final G:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/_a;->E:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/_a;->F:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/_a;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lc/c/a/f/Za;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lc/c/a/f/_a;->H:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/Za;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lc/c/a/f/_a;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    iget-object p1, p0, Lc/c/a/f/_a;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/Za;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/f/_a;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/Za;->C:Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/_a;->H:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/_a;->H:J

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

    const/16 v0, 0x22

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lc/c/a/f/_a;->b(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    invoke-virtual {p0, p2}, Lc/c/a/f/_a;->a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lc/c/a/f/Za;->D:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/_a;->H:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/_a;->H:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x22

    .line 5
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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
    iget-wide v2, v1, Lc/c/a/f/_a;->H:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/_a;->H:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/Za;->D:Ljava/lang/Boolean;

    .line 6
    iget-object v6, v1, Lc/c/a/f/Za;->C:Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    const/4 v7, 0x0

    const-wide/16 v8, 0x5

    and-long v10, v2, v8

    const/4 v12, 0x0

    cmp-long v13, v10, v4

    if-eqz v13, :cond_4

    .line 7
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Boolean;)Z

    move-result v0

    cmp-long v7, v10, v4

    if-eqz v7, :cond_1

    if-eqz v0, :cond_0

    const-wide/16 v10, 0x10

    or-long/2addr v2, v10

    const-wide/16 v10, 0x40

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x8

    or-long/2addr v2, v10

    const-wide/16 v10, 0x20

    :goto_0
    or-long/2addr v2, v10

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iget-object v7, v1, Lc/c/a/f/Za;->B:Landroidx/appcompat/widget/AppCompatTextView;

    const v10, 0x7f060099

    goto :goto_1

    :cond_2
    iget-object v7, v1, Lc/c/a/f/Za;->B:Landroidx/appcompat/widget/AppCompatTextView;

    const v10, 0x7f06004e

    :goto_1
    invoke-static {v7, v10}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/View;I)I

    move-result v7

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, v1, Lc/c/a/f/Za;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const v10, 0x7f08007b

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lc/c/a/f/Za;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const v10, 0x7f080079

    :goto_2
    invoke-static {v0, v10}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v12

    :goto_3
    const-wide/16 v10, 0x6

    and-long/2addr v10, v2

    cmp-long v13, v10, v4

    if-eqz v13, :cond_5

    if-eqz v6, :cond_5

    .line 10
    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->d()Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->g()Ljava/lang/String;

    move-result-object v6

    move-object v14, v12

    goto :goto_4

    :cond_5
    move-object v6, v12

    move-object v14, v6

    :goto_4
    and-long/2addr v2, v8

    cmp-long v8, v2, v4

    if-eqz v8, :cond_6

    .line 12
    iget-object v2, v1, Lc/c/a/f/Za;->A:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v0}, Lb/l/a/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, v1, Lc/c/a/f/Za;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    cmp-long v0, v10, v4

    if-eqz v0, :cond_7

    .line 14
    iget-object v13, v1, Lc/c/a/f/Za;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0800f0

    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 15
    iget-object v0, v1, Lc/c/a/f/Za;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v6}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
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
    iget-wide v0, p0, Lc/c/a/f/_a;->H:J

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
    iput-wide v0, p0, Lc/c/a/f/_a;->H:J

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
