.class Lcom/ebay/app/RecyclerViewFragment$StubHolder;
.super Ljava/lang/Object;
.source "RecyclerViewFragment.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/app/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubHolder"
.end annotation


# instance fields
.field private id:I

.field private inflatedView:Landroid/view/View;

.field private shouldInitialize:Z

.field final synthetic this$0:Lcom/ebay/app/RecyclerViewFragment;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/ebay/app/RecyclerViewFragment;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->this$0:Lcom/ebay/app/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/app/RecyclerViewFragment;Lcom/ebay/app/RecyclerViewFragment$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;-><init>(Lcom/ebay/app/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    iput-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->view:Landroid/view/View;

    return-void
.end method

.method getInflatedView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method initialize()V
    .locals 2

    .line 487
    iget-boolean v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->shouldInitialize:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->shouldInitialize:Z

    .line 490
    iget v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->id:I

    const v1, 0x7f0a044e

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->this$0:Lcom/ebay/app/RecyclerViewFragment;

    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ebay/app/RecyclerViewFragment;->initializeErrorView(Landroid/view/View;)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->this$0:Lcom/ebay/app/RecyclerViewFragment;

    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ebay/app/RecyclerViewFragment;->initializeEmptyView(Landroid/view/View;)V

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->this$0:Lcom/ebay/app/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment;->getSwipeToRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/ebay/nautilus/shell/widget/EbaySwipeRefreshLayout;

    if-eqz v1, :cond_1

    .line 496
    check-cast v0, Lcom/ebay/nautilus/shell/widget/EbaySwipeRefreshLayout;

    iget-object v1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/widget/EbaySwipeRefreshLayout;->setSwipeableChild(I)V

    :cond_1
    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->shouldInitialize:Z

    .line 541
    iput-object p2, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    iput-object p2, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->view:Landroid/view/View;

    .line 542
    invoke-virtual {p0}, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->initialize()V

    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->id:I

    .line 465
    iput-object p1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->view:Landroid/view/View;

    .line 466
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 468
    check-cast p1, Landroid/view/ViewStub;

    .line 469
    invoke-virtual {p1, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 470
    iget v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->id:I

    const v1, 0x7f0a044e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->this$0:Lcom/ebay/app/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment;->getErrorViewResource()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->this$0:Lcom/ebay/app/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/ebay/app/RecyclerViewFragment;->getEmptyViewResource()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto :goto_1

    .line 476
    :cond_1
    iput-object p1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->inflatedView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 477
    iput-boolean p1, p0, Lcom/ebay/app/RecyclerViewFragment$StubHolder;->shouldInitialize:Z

    :cond_2
    :goto_1
    return-void
.end method
