.class public Lc/c/a/f/ya;
.super Lc/c/a/f/xa;
.source "ItemListHamiAppBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final L:Landroidx/databinding/ViewDataBinding$b;

.field public static final M:Landroid/util/SparseIntArray;


# instance fields
.field public final N:Landroid/view/View$OnClickListener;

.field public final O:Landroid/view/View$OnClickListener;

.field public final P:Landroid/view/View$OnClickListener;

.field public Q:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/ya;->M:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/ya;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01ab

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/ya;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02a0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/ya;->L:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/ya;->M:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ya;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v13, p0

    const/4 v14, 0x2

    .line 2
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v15, 0x3

    aget-object v0, p3, v15

    move-object v5, v0

    check-cast v5, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/cardview/widget/CardView;

    const/4 v12, 0x1

    aget-object v0, p3, v12

    move-object v9, v0

    check-cast v9, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lc/c/a/f/xa;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/cardview/widget/CardView;Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lc/c/a/f/ya;->Q:J

    .line 4
    iget-object v0, v13, Lc/c/a/f/xa;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v13, Lc/c/a/f/xa;->B:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v13, Lc/c/a/f/xa;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v13, Lc/c/a/f/xa;->D:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v13, Lc/c/a/f/xa;->F:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v13, Lc/c/a/f/xa;->G:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v13, Lc/c/a/f/xa;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 11
    invoke-virtual {v13, v0}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 12
    new-instance v0, Lc/c/a/j/a/a;

    invoke-direct {v0, v13, v14}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v13, Lc/c/a/f/ya;->N:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lc/c/a/j/a/a;

    invoke-direct {v0, v13, v15}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v13, Lc/c/a/f/ya;->O:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v13, Lc/c/a/f/ya;->P:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/ya;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/c/a/a;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/xa;->K:Lc/c/a/n/c/c/a/a;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ya;->Q:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ya;->Q:J

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

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

.method public a(Lcom/farsitel/bazaar/common/model/page/HamiItem;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/xa;->J:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ya;->Q:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ya;->Q:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x21

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

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lc/c/a/n/c/c/a/a;

    invoke-virtual {p0, p2}, Lc/c/a/f/ya;->a(Lc/c/a/n/c/c/a/a;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/HamiItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/ya;->a(Lcom/farsitel/bazaar/common/model/page/HamiItem;)V

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

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/xa;->K:Lc/c/a/n/c/c/a/a;

    .line 2
    iget-object v1, p0, Lc/c/a/f/xa;->J:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 3
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/xa;->K:Lc/c/a/n/c/c/a/a;

    .line 5
    iget-object v1, p0, Lc/c/a/f/xa;->J:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lc/c/a/f/xa;->K:Lc/c/a/n/c/c/a/a;

    .line 8
    iget-object v1, p0, Lc/c/a/f/xa;->J:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 9
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/ya;->Q:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/ya;->Q:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/xa;->K:Lc/c/a/n/c/c/a/a;

    .line 6
    iget-object v0, v1, Lc/c/a/f/xa;->J:Lcom/farsitel/bazaar/common/model/page/HamiItem;

    const-wide/16 v6, 0x6

    and-long/2addr v6, v2

    const/4 v8, 0x0

    cmp-long v9, v6, v4

    if-eqz v9, :cond_2

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v9

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getMediumIconUrl()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getImage()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getShortDescription()Ljava/lang/String;

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
    invoke-virtual {v9}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getAppName()Ljava/lang/String;

    move-result-object v8

    :cond_1
    move-object v13, v10

    goto :goto_1

    :cond_2
    move-object v0, v8

    move-object v11, v0

    move-object v13, v11

    :goto_1
    cmp-long v9, v6, v4

    if-eqz v9, :cond_3

    .line 12
    iget-object v12, v1, Lc/c/a/f/xa;->A:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 13
    iget-object v6, v1, Lc/c/a/f/xa;->B:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v6, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 14
    iget-object v6, v1, Lc/c/a/f/xa;->F:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    invoke-static {v6, v11}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 15
    iget-object v14, v1, Lc/c/a/f/xa;->F:Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;

    const v6, 0x7f080073

    invoke-static {v14, v6}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v11

    invoke-static/range {v14 .. v20}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 16
    iget-object v6, v1, Lc/c/a/f/xa;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v6, v1, Lc/c/a/f/xa;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v0}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v6, 0x4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, v1, Lc/c/a/f/xa;->C:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lc/c/a/f/ya;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, v1, Lc/c/a/f/xa;->D:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/ya;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, v1, Lc/c/a/f/xa;->G:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lc/c/a/f/ya;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
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
    iget-wide v0, p0, Lc/c/a/f/ya;->Q:J

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
    iput-wide v0, p0, Lc/c/a/f/ya;->Q:J

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
