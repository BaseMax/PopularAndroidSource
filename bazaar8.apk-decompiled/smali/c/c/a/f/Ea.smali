.class public Lc/c/a/f/Ea;
.super Lc/c/a/f/Da;
.source "ItemListMiniAppBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final Y:Landroidx/databinding/ViewDataBinding$b;

.field public static final Z:Landroid/util/SparseIntArray;


# instance fields
.field public final aa:Landroid/view/View;

.field public final ba:Lcom/farsitel/bazaar/core/widget/GroupView;

.field public final ca:Landroid/view/View$OnClickListener;

.field public final da:Landroid/view/View$OnClickListener;

.field public final ea:Landroid/view/View$OnClickListener;

.field public fa:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/Ea;->Z:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/Ea;->Z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0342

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lc/c/a/f/Ea;->Z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02a0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lc/c/a/f/Ea;->Z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0092

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Ea;->Y:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Ea;->Z:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Ea;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x15

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x2

    aget-object v5, p3, v15

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v14, 0x3

    aget-object v6, p3, v14

    check-cast v6, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/16 v7, 0x8

    aget-object v7, p3, v7

    check-cast v7, Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    const/4 v8, 0x6

    aget-object v8, p3, v8

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v9, 0x0

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/FrameLayout;

    const/16 v10, 0x9

    aget-object v10, p3, v10

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v12, 0x5

    aget-object v12, p3, v12

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v13, 0xa

    aget-object v13, p3, v13

    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    const/16 v16, 0x14

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ProgressBar;

    move-object/from16 v14, v16

    const/16 v16, 0xb

    aget-object v16, p3, v16

    check-cast v16, Landroidx/cardview/widget/CardView;

    move-object/from16 v15, v16

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroidx/cardview/widget/CardView;

    const/16 v17, 0xf

    aget-object v17, p3, v17

    check-cast v17, Landroidx/cardview/widget/CardView;

    const/16 v18, 0xc

    aget-object v18, p3, v18

    check-cast v18, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v19, 0xe

    aget-object v19, p3, v19

    check-cast v19, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v20, 0x10

    aget-object v20, p3, v20

    check-cast v20, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v21, 0x11

    aget-object v21, p3, v21

    check-cast v21, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/16 v22, 0x4

    aget-object v22, p3, v22

    check-cast v22, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v23, 0x13

    aget-object v23, p3, v23

    check-cast v23, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v24, 0x0

    move/from16 v3, v24

    invoke-direct/range {v0 .. v23}, Lc/c/a/f/Da;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/NoDiscountTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ProgressBar;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lc/c/a/f/Ea;->fa:J

    .line 4
    iget-object v0, v2, Lc/c/a/f/Da;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lc/c/a/f/Da;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lc/c/a/f/Da;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lc/c/a/f/Da;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lc/c/a/f/Da;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lc/c/a/f/Da;->G:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lc/c/a/f/Da;->H:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lc/c/a/f/Da;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 12
    aget-object v3, p3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lc/c/a/f/Ea;->aa:Landroid/view/View;

    .line 13
    iget-object v3, v2, Lc/c/a/f/Ea;->aa:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0x12

    .line 14
    aget-object v3, p3, v3

    check-cast v3, Lcom/farsitel/bazaar/core/widget/GroupView;

    iput-object v3, v2, Lc/c/a/f/Ea;->ba:Lcom/farsitel/bazaar/core/widget/GroupView;

    .line 15
    iget-object v3, v2, Lc/c/a/f/Ea;->ba:Lcom/farsitel/bazaar/core/widget/GroupView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lc/c/a/f/Da;->J:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lc/c/a/f/Da;->L:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lc/c/a/f/Da;->M:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lc/c/a/f/Da;->N:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v3, v2, Lc/c/a/f/Da;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v3, v2, Lc/c/a/f/Da;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v3, v2, Lc/c/a/f/Da;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v3, v2, Lc/c/a/f/Da;->R:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v3, v2, Lc/c/a/f/Da;->S:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 25
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 26
    new-instance v1, Lc/c/a/j/a/a;

    invoke-direct {v1, v2, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v1, v2, Lc/c/a/f/Ea;->ca:Landroid/view/View$OnClickListener;

    .line 27
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/Ea;->da:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lc/c/a/j/a/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object v0, v2, Lc/c/a/f/Ea;->ea:Landroid/view/View$OnClickListener;

    .line 29
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/Ea;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/c/a/a;)V
    .locals 4

    .line 5
    iput-object p1, p0, Lc/c/a/f/Da;->W:Lc/c/a/n/c/c/a/a;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ea;->fa:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ea;->fa:J

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 9
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 10
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem$App;)V
    .locals 4

    .line 12
    iput-object p1, p0, Lc/c/a/f/Da;->X:Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ea;->fa:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ea;->fa:J

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 16
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lc/c/a/f/Da;->V:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    return-void
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x27

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ea;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lc/c/a/n/c/c/a/a;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ea;->a(Lc/c/a/n/c/c/a/a;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ea;->a(Lcom/farsitel/bazaar/common/model/page/ListItem$App;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x15

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ea;->a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
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

    .line 2
    :cond_0
    iget-object p1, p0, Lc/c/a/f/Da;->W:Lc/c/a/n/c/c/a/a;

    .line 3
    iget-object v1, p0, Lc/c/a/f/Da;->X:Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 4
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lc/c/a/f/Da;->W:Lc/c/a/n/c/c/a/a;

    .line 6
    iget-object v1, p0, Lc/c/a/f/Da;->X:Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 7
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Lc/c/a/f/Da;->W:Lc/c/a/n/c/c/a/a;

    .line 9
    iget-object v1, p0, Lc/c/a/f/Da;->X:Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 10
    invoke-interface {p1, v1}, Lc/c/a/n/c/c/a/a;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/Da;->U:Ljava/lang/Integer;

    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 39

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lc/c/a/f/Ea;->fa:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/Ea;->fa:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/Da;->W:Lc/c/a/n/c/c/a/a;

    .line 6
    iget-object v0, v1, Lc/c/a/f/Da;->X:Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    const-wide/16 v6, 0x14

    and-long v8, v2, v6

    const/4 v10, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_7

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getMiniAppDetails()Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;

    move-result-object v12

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getShortInfo()Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isAd()Ljava/lang/Boolean;

    move-result-object v14

    .line 11
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getNoDiscountPriceString()Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isAd()Ljava/lang/Boolean;

    move-result-object v16

    .line 13
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getAppName()Ljava/lang/String;

    move-result-object v17

    .line 14
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getIconUrl()Ljava/lang/String;

    move-result-object v18

    .line 15
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getRate()Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    const/4 v11, 0x1

    if-eqz v12, :cond_2

    .line 16
    invoke-virtual {v12}, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->showScreenshots()Z

    move-result v19

    const/4 v6, 0x2

    .line 17
    invoke-virtual {v12, v6}, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->getThumbnailScreenshotByIndex(I)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v12, v10}, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->getThumbnailScreenshotByIndex(I)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v12}, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->getShortDescription()Ljava/lang/String;

    move-result-object v22

    .line 20
    invoke-virtual {v12}, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->getInstallLabelWithDescription()Ljava/lang/String;

    move-result-object v23

    .line 21
    invoke-virtual {v12, v11}, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;->getThumbnailScreenshotByIndex(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v38, v19

    move-object/from16 v19, v6

    move/from16 v6, v38

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 22
    :goto_2
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Boolean;)Z

    move-result v14

    .line 23
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Float;)F

    move-result v24

    .line 24
    iget-object v4, v1, Lc/c/a/f/Da;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10018f

    move/from16 v25, v6

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    cmp-long v6, v8, v4

    if-eqz v6, :cond_4

    if-eqz v14, :cond_3

    const-wide/16 v4, 0x40

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x20

    :goto_3
    or-long/2addr v2, v4

    :cond_4
    if-eqz v14, :cond_5

    .line 25
    iget-object v4, v1, Lc/c/a/f/Ea;->aa:Landroid/view/View;

    const v5, 0x7f06001b

    invoke-static {v4, v5}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/View;I)I

    move-result v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x0

    cmpl-float v5, v24, v5

    if-lez v5, :cond_6

    const/4 v10, 0x1

    :cond_6
    move-object v11, v0

    move v14, v4

    move-object/from16 v27, v12

    move-object v9, v13

    move-object/from16 v13, v16

    move-object/from16 v0, v17

    move-object/from16 v5, v18

    move-object/from16 v24, v19

    move-object/from16 v12, v23

    move-object/from16 v18, v7

    move/from16 v16, v10

    move-object/from16 v10, v22

    const-wide/16 v6, 0x14

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    :goto_5
    and-long/2addr v6, v2

    const-wide/16 v19, 0x0

    cmp-long v4, v6, v19

    if-eqz v4, :cond_8

    .line 26
    iget-object v4, v1, Lc/c/a/f/Da;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const v6, 0x7f080073

    invoke-static {v4, v6}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v17, 0x0

    iget-object v8, v1, Lc/c/a/f/Da;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v7, 0x7f0700c5

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v35, v9

    move-object/from16 v9, v17

    move-wide/from16 v36, v2

    move-object v2, v10

    move-object/from16 v10, v21

    invoke-static/range {v4 .. v10}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 27
    iget-object v3, v1, Lc/c/a/f/Da;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v3, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, v1, Lc/c/a/f/Da;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-static {v0, v15}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, v1, Lc/c/a/f/Da;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    invoke-static {v0, v15}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 30
    iget-object v0, v1, Lc/c/a/f/Da;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v11}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, v1, Lc/c/a/f/Da;->H:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v12}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, v1, Lc/c/a/f/Da;->I:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v13}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 33
    iget-object v0, v1, Lc/c/a/f/Ea;->aa:Landroid/view/View;

    invoke-static {v14}, Lb/l/a/b;->a(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-static {v0, v3}, Lb/l/a/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, v1, Lc/c/a/f/Ea;->ba:Lcom/farsitel/bazaar/core/widget/GroupView;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 35
    iget-object v0, v1, Lc/c/a/f/Da;->L:Landroidx/cardview/widget/CardView;

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 36
    iget-object v0, v1, Lc/c/a/f/Da;->M:Landroidx/cardview/widget/CardView;

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 37
    iget-object v0, v1, Lc/c/a/f/Da;->N:Landroidx/cardview/widget/CardView;

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 38
    iget-object v0, v1, Lc/c/a/f/Da;->O:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 39
    iget-object v0, v1, Lc/c/a/f/Da;->P:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v32}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 40
    iget-object v0, v1, Lc/c/a/f/Da;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v24

    invoke-static/range {v28 .. v34}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 41
    iget-object v0, v1, Lc/c/a/f/Da;->R:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v2}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, v1, Lc/c/a/f/Da;->R:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v2}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 43
    iget-object v0, v1, Lc/c/a/f/Da;->S:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v13, v35

    invoke-static {v0, v13}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, v1, Lc/c/a/f/Da;->S:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v13}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    move-wide/from16 v36, v2

    :goto_6
    const-wide/16 v2, 0x10

    and-long v2, v36, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    .line 45
    iget-object v0, v1, Lc/c/a/f/Da;->F:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lc/c/a/f/Ea;->ca:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, v1, Lc/c/a/f/Da;->G:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, v1, Lc/c/a/f/Ea;->da:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, v1, Lc/c/a/f/Da;->J:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lc/c/a/f/Ea;->ea:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 48
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
    iget-wide v0, p0, Lc/c/a/f/Ea;->fa:J

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

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/Ea;->fa:J

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
