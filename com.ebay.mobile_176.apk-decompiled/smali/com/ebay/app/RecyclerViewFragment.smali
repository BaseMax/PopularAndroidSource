.class public abstract Lcom/ebay/app/RecyclerViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "RecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/app/RecyclerViewFragment$StubHolder;
    }
.end annotation


# instance fields
.field private contentEmpty:Z

.field private contentError:Z

.field private final emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

.field private final errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

.field private loadState:Lcom/ebay/app/LoadState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private progressContainer:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected restoreLayoutState:Landroid/os/Parcelable;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 52
    sget-object v0, Lcom/ebay/app/LoadState;->READY:Lcom/ebay/app/LoadState;

    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    .line 57
    new-instance v0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;-><init>(Lcom/ebay/app/RecyclerViewFragment;Lcom/ebay/app/RecyclerViewFragment$1;)V

    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    .line 59
    new-instance v0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-direct {v0, p0, v1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;-><init>(Lcom/ebay/app/RecyclerViewFragment;Lcom/ebay/app/RecyclerViewFragment$1;)V

    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    return-void
.end method

.method private ensureList()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/app/RecyclerViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/ebay/app/RecyclerViewFragment;->getRecyclerViewId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ebay/app/RecyclerViewFragment;->ensureView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a1225

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f0a0cb4

    .line 420
    invoke-static {v0, v1}, Lcom/ebay/app/RecyclerViewFragment;->ensureView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/app/RecyclerViewFragment;->progressContainer:Landroid/view/View;

    .line 421
    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    const v2, 0x7f0a044d

    invoke-static {v0, v2}, Lcom/ebay/app/RecyclerViewFragment;->ensureView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->setView(Landroid/view/View;)V

    .line 422
    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    const v2, 0x7f0a044e

    invoke-static {v0, v2}, Lcom/ebay/app/RecyclerViewFragment;->ensureView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->setView(Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/ebay/app/RecyclerViewFragment;->initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 427
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, v0}, Lcom/ebay/app/RecyclerViewFragment;->initializeSwipeToRefresh(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->initialize()V

    .line 430
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->initialize()V

    .line 434
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    invoke-direct {p0, v0}, Lcom/ebay/app/RecyclerViewFragment;->setViewLoadState(Lcom/ebay/app/LoadState;)V

    return-void

    .line 416
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ensureView(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TV;"
        }
    .end annotation

    .line 399
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout must contain a view with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSwipeRefreshState(ZZ)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 319
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setViewLoadState(Lcom/ebay/app/LoadState;)V
    .locals 5
    .param p1    # Lcom/ebay/app/LoadState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 269
    iput-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    .line 272
    sget-object v0, Lcom/ebay/app/RecyclerViewFragment$1;->$SwitchMap$com$ebay$app$LoadState:[I

    invoke-virtual {p1}, Lcom/ebay/app/LoadState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 299
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    iget-boolean v4, p0, Lcom/ebay/app/RecyclerViewFragment;->contentEmpty:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/ebay/app/RecyclerViewFragment;->contentError:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    iget-boolean v4, p0, Lcom/ebay/app/RecyclerViewFragment;->contentError:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 304
    invoke-direct {p0, v2, v0}, Lcom/ebay/app/RecyclerViewFragment;->setSwipeRefreshState(ZZ)V

    goto :goto_1

    .line 291
    :pswitch_1
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-direct {p0, v0, v0}, Lcom/ebay/app/RecyclerViewFragment;->setSwipeRefreshState(ZZ)V

    goto :goto_1

    .line 283
    :pswitch_2
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 287
    invoke-direct {p0, v2, v2}, Lcom/ebay/app/RecyclerViewFragment;->setSwipeRefreshState(ZZ)V

    const/16 v2, 0x10

    goto :goto_1

    .line 275
    :pswitch_3
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 279
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 280
    invoke-direct {p0, v2, v2}, Lcom/ebay/app/RecyclerViewFragment;->setSwipeRefreshState(ZZ)V

    .line 307
    :goto_1
    invoke-virtual {p0}, Lcom/ebay/app/RecyclerViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 309
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 310
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v3

    if-eq v0, v2, :cond_2

    .line 311
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final getEmptyView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/ebay/app/RecyclerViewFragment;->ensureList()V

    .line 340
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getInflatedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getEmptyViewResource()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected final getErrorView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 353
    invoke-direct {p0}, Lcom/ebay/app/RecyclerViewFragment;->ensureList()V

    .line 354
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->getInflatedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorViewResource()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getLoadState()Lcom/ebay/app/LoadState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    return-object v0
.end method

.method protected getProgressContainer()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->progressContainer:Landroid/view/View;

    return-object v0
.end method

.method protected final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 376
    invoke-direct {p0}, Lcom/ebay/app/RecyclerViewFragment;->ensureList()V

    .line 377
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected getRecyclerViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    const v0, 0x7f0a0d63

    return v0
.end method

.method protected final getSwipeToRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .line 364
    invoke-direct {p0}, Lcom/ebay/app/RecyclerViewFragment;->ensureList()V

    .line 365
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public hasContentError()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/ebay/app/RecyclerViewFragment;->contentError:Z

    return v0
.end method

.method protected initializeEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected initializeErrorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected abstract initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected initializeSwipeToRefresh(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    instance-of v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    :cond_0
    return-void
.end method

.method public isContentEmpty()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/ebay/app/RecyclerViewFragment;->contentEmpty:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 74
    instance-of p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    if-eqz p3, :cond_0

    const p3, 0x7f0d039c

    goto :goto_0

    :cond_0
    const p3, 0x7f0d039d

    :goto_0
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->progressContainer:Landroid/view/View;

    .line 109
    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 111
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->errorViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->clear()V

    .line 112
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->emptyViewHolder:Lcom/ebay/app/RecyclerViewFragment$StubHolder;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->clear()V

    .line 113
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->restoreLayoutState:Landroid/os/Parcelable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->restoreLayoutState:Landroid/os/Parcelable;

    :cond_0
    const-string v0, "layoutState"

    .line 101
    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment;->restoreLayoutState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 83
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/ebay/app/RecyclerViewFragment;->ensureList()V

    if-eqz p2, :cond_0

    const-string p1, "layoutState"

    .line 88
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->restoreLayoutState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method protected final restoreRecyclerViewInstanceState()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->restoreLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment;->restoreLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->restoreLayoutState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public setContentEmpty(Z)V
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/ebay/app/RecyclerViewFragment;->contentEmpty:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 237
    :cond_0
    iput-boolean p1, p0, Lcom/ebay/app/RecyclerViewFragment;->contentEmpty:Z

    .line 238
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    sget-object v0, Lcom/ebay/app/LoadState;->READY:Lcom/ebay/app/LoadState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    invoke-direct {p0, p1}, Lcom/ebay/app/RecyclerViewFragment;->setViewLoadState(Lcom/ebay/app/LoadState;)V

    :cond_1
    return-void
.end method

.method public setContentError(Z)V
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/ebay/app/RecyclerViewFragment;->contentError:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 252
    :cond_0
    iput-boolean p1, p0, Lcom/ebay/app/RecyclerViewFragment;->contentError:Z

    .line 253
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    sget-object v0, Lcom/ebay/app/LoadState;->READY:Lcom/ebay/app/LoadState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    invoke-direct {p0, p1}, Lcom/ebay/app/RecyclerViewFragment;->setViewLoadState(Lcom/ebay/app/LoadState;)V

    :cond_1
    return-void
.end method

.method public setLoadState(Lcom/ebay/app/LoadState;)V
    .locals 1
    .param p1    # Lcom/ebay/app/LoadState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "loadState must not be null"

    .line 215
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Lcom/ebay/app/RecyclerViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/ebay/app/RecyclerViewFragment;->ensureList()V

    .line 219
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    if-eq v0, p1, :cond_1

    .line 220
    invoke-direct {p0, p1}, Lcom/ebay/app/RecyclerViewFragment;->setViewLoadState(Lcom/ebay/app/LoadState;)V

    goto :goto_0

    .line 223
    :cond_0
    iput-object p1, p0, Lcom/ebay/app/RecyclerViewFragment;->loadState:Lcom/ebay/app/LoadState;

    :cond_1
    :goto_0
    return-void
.end method
