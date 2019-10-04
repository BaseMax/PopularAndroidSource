.class public Lc/c/a/f/Ia;
.super Lc/c/a/f/Ha;
.source "ItemListSerialBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final L:Landroidx/databinding/ViewDataBinding$b;

.field public static final M:Landroid/util/SparseIntArray;


# instance fields
.field public final N:Landroid/widget/FrameLayout;

.field public final O:Landroid/view/View$OnClickListener;

.field public P:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lc/c/a/f/Ia;->M:Landroid/util/SparseIntArray;

    .line 2
    sget-object v0, Lc/c/a/f/Ia;->M:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00c3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/Ia;->L:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/Ia;->M:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/Ia;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x5

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

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lc/c/a/f/Ha;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;Lcom/farsitel/bazaar/widget/LocalAwareTextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lc/c/a/f/Ia;->P:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lc/c/a/f/Ia;->N:Landroid/widget/FrameLayout;

    .line 5
    iget-object p1, p0, Lc/c/a/f/Ia;->N:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/f/Ha;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/Ha;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lc/c/a/f/Ha;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lc/c/a/f/Ha;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 11
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/Ia;->O:Landroid/view/View$OnClickListener;

    .line 12
    invoke-virtual {p0}, Lc/c/a/f/Ia;->l()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/c/a/a/a/j;)V
    .locals 4

    .line 22
    iput-object p1, p0, Lc/c/a/f/Ha;->K:Lc/c/a/n/c/c/a/a/a/j;

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ia;->P:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ia;->P:J

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 26
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 27
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem;)V
    .locals 4

    .line 14
    iput-object p1, p0, Lc/c/a/f/Ha;->G:Lcom/farsitel/bazaar/common/model/page/ListItem;

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ia;->P:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ia;->P:J

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 18
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 19
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;)V
    .locals 4

    .line 7
    iput-object p1, p0, Lc/c/a/f/Ha;->F:Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/Ia;->P:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/Ia;->P:J

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2c

    .line 11
    invoke-virtual {p0, p1}, Lb/l/a;->a(I)V

    .line 12
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lc/c/a/f/Ha;->I:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    return-void
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x2c

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ia;->a(Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/ListItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ia;->a(Lcom/farsitel/bazaar/common/model/page/ListItem;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ia;->b(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ia;->a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    if-ne v0, p1, :cond_4

    .line 5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ia;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    if-ne v0, p1, :cond_5

    .line 6
    check-cast p2, Lc/c/a/n/c/c/a/a/a/j;

    invoke-virtual {p0, p2}, Lc/c/a/f/Ia;->a(Lc/c/a/n/c/c/a/a/a/j;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(ILandroid/view/View;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lc/c/a/f/Ha;->G:Lcom/farsitel/bazaar/common/model/page/ListItem;

    .line 4
    iget-object p2, p0, Lc/c/a/f/Ha;->K:Lc/c/a/n/c/c/a/a/a/j;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lc/c/a/n/c/c/a/a/a/j;->a(Lcom/farsitel/bazaar/common/model/page/ListItem;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/Ha;->J:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/f/Ha;->H:Ljava/lang/Integer;

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
    iget-wide v2, v1, Lc/c/a/f/Ia;->P:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lc/c/a/f/Ia;->P:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lc/c/a/f/Ha;->F:Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    .line 6
    iget-object v6, v1, Lc/c/a/f/Ha;->G:Lcom/farsitel/bazaar/common/model/page/ListItem;

    .line 7
    iget-object v6, v1, Lc/c/a/f/Ha;->K:Lc/c/a/n/c/c/a/a/a/j;

    const-wide/16 v6, 0x41

    and-long/2addr v6, v2

    const/4 v8, 0x0

    cmp-long v9, v6, v4

    if-eqz v9, :cond_2

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getName()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v8

    move-object v9, v0

    move-object v10, v9

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ShortInfo;->getInfo()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ShortInfo;->getMoreInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v8

    :goto_1
    move-object v12, v9

    goto :goto_2

    :cond_2
    move-object v0, v8

    move-object v10, v0

    move-object v12, v10

    :goto_2
    const-wide/16 v13, 0x40

    and-long/2addr v2, v13

    cmp-long v9, v2, v4

    if-eqz v9, :cond_3

    .line 13
    iget-object v2, v1, Lc/c/a/f/Ia;->N:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lc/c/a/f/Ia;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    cmp-long v2, v6, v4

    if-eqz v2, :cond_4

    .line 14
    iget-object v11, v1, Lc/c/a/f/Ha;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f080074

    invoke-static {v11, v2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v2, v1, Lc/c/a/f/Ha;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static/range {v11 .. v17}, Lc/c/a/d/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 15
    iget-object v2, v1, Lc/c/a/f/Ha;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v8}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, v1, Lc/c/a/f/Ha;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v0}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, v1, Lc/c/a/f/Ha;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v2, v0}, Lc/c/a/d/a/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 18
    iget-object v0, v1, Lc/c/a/f/Ha;->E:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    invoke-static {v0, v10}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 19
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
    iget-wide v0, p0, Lc/c/a/f/Ia;->P:J

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

    const-wide/16 v0, 0x40

    .line 2
    :try_start_0
    iput-wide v0, p0, Lc/c/a/f/Ia;->P:J

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
