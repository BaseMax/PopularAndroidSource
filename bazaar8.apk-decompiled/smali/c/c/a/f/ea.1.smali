.class public Lc/c/a/f/ea;
.super Lc/c/a/f/da;
.source "ItemCinemaEpisodeBindingImpl.java"

# interfaces
.implements Lc/c/a/j/a/a$a;


# static fields
.field public static final E:Landroidx/databinding/ViewDataBinding$b;

.field public static final F:Landroid/util/SparseIntArray;


# instance fields
.field public final G:Landroid/widget/LinearLayout;

.field public final H:Landroid/view/View$OnClickListener;

.field public final I:Landroid/view/View$OnClickListener;

.field public J:J


# direct methods
.method public constructor <init>(Lb/l/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/f/ea;->E:Landroidx/databinding/ViewDataBinding$b;

    sget-object v1, Lc/c/a/f/ea;->F:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/f/ea;-><init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    .line 2
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lc/c/a/f/da;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/farsitel/bazaar/widget/LoadingButton;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lc/c/a/f/ea;->J:J

    .line 4
    iget-object p1, p0, Lc/c/a/f/da;->A:Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lc/c/a/f/ea;->G:Landroid/widget/LinearLayout;

    .line 6
    iget-object p1, p0, Lc/c/a/f/ea;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/f/da;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)V

    .line 9
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v0}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/ea;->H:Landroid/view/View$OnClickListener;

    .line 10
    new-instance p1, Lc/c/a/j/a/a;

    invoke-direct {p1, p0, v1}, Lc/c/a/j/a/a;-><init>(Lc/c/a/j/a/a$a;I)V

    iput-object p1, p0, Lc/c/a/f/ea;->I:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lc/c/a/f/ea;->l()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;)V
    .locals 4

    .line 10
    iput-object p1, p0, Lc/c/a/f/da;->D:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ea;->J:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ea;->J:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xe

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

.method public a(Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lc/c/a/f/da;->C:Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ea;->J:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/a/f/ea;->J:J

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
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    invoke-virtual {p0, p2}, Lc/c/a/f/ea;->a(Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    invoke-virtual {p0, p2}, Lc/c/a/f/ea;->a(Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;)V

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

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/f/da;->C:Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    .line 2
    iget-object v1, p0, Lc/c/a/f/da;->D:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;->onPlayOrBuyClicked(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/f/da;->C:Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    .line 5
    iget-object v1, p0, Lc/c/a/f/da;->D:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 6
    invoke-interface {v1, p1}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;->onEpisodeItemClicked(Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lc/c/a/f/ea;->J:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/c/a/f/ea;->J:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 5
    iget-object v5, p0, Lc/c/a/f/da;->C:Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    .line 6
    iget-object v6, p0, Lc/c/a/f/da;->D:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    const/4 v8, 0x0

    cmp-long v9, v6, v2

    if-eqz v9, :cond_0

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->getShowLoadingButton()Z

    move-result v4

    .line 8
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    const-wide/16 v9, 0x4

    and-long/2addr v0, v9

    cmp-long v9, v0, v2

    if-eqz v9, :cond_1

    .line 10
    iget-object v0, p0, Lc/c/a/f/da;->A:Lcom/farsitel/bazaar/widget/LoadingButton;

    iget-object v1, p0, Lc/c/a/f/ea;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lc/c/a/f/ea;->G:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc/c/a/f/ea;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lc/c/a/f/da;->A:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v0, v8}, Lcom/farsitel/bazaar/widget/LoadingButton;->setText(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lc/c/a/f/da;->A:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {v0, v4}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 14
    iget-object v0, p0, Lc/c/a/f/da;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v5}, Lb/l/a/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

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
    iget-wide v0, p0, Lc/c/a/f/ea;->J:J

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
    iput-wide v0, p0, Lc/c/a/f/ea;->J:J

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
