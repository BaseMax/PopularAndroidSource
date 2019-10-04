.class public Lcab/snapp/passenger/units/messages/MessagesView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;
.implements Lcab/snapp/passenger/g/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/messages/c;",
        ">;",
        "Lcab/snapp/passenger/g/a;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/messages/c;

.field private b:Lcab/snapp/passenger/f/r;

.field viewMessagesEmpty:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03a6
    .end annotation
.end field

.field viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03a7
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcab/snapp/passenger/units/messages/MessagesView;->a:Lcab/snapp/passenger/units/messages/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/messages/c;->onBackButtonClicked()V

    return-void
.end method

.method public static synthetic lambda$Rc8EZQ95iuZMF0MkPHjBqb98QDQ(Lcab/snapp/passenger/units/messages/MessagesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/messages/MessagesView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideEmptyView()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesEmpty:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public onClick(IILjava/lang/Object;)V
    .locals 0

    const p3, 0x7f0a00c7

    if-ne p1, p3, :cond_0

    .line 186
    iget-object p1, p0, Lcab/snapp/passenger/units/messages/MessagesView;->a:Lcab/snapp/passenger/units/messages/c;

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/messages/c;->itemMoreClicked(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 161
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 162
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/MessagesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->b:Lcab/snapp/passenger/f/r;

    .line 163
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    const v1, 0x7f120151

    .line 164
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 165
    new-instance v1, Lcab/snapp/passenger/units/messages/-$$Lambda$MessagesView$Rc8EZQ95iuZMF0MkPHjBqb98QDQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/messages/-$$Lambda$MessagesView$Rc8EZQ95iuZMF0MkPHjBqb98QDQ;-><init>(Lcab/snapp/passenger/units/messages/MessagesView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 24
    check-cast p1, Lcab/snapp/passenger/units/messages/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/messages/MessagesView;->setPresenter(Lcab/snapp/passenger/units/messages/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/messages/c;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcab/snapp/passenger/units/messages/MessagesView;->a:Lcab/snapp/passenger/units/messages/c;

    return-void
.end method

.method public setupRecyclerView(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;)V
    .locals 3

    .line 143
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/MessagesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 144
    iget-object v1, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 146
    new-instance v0, Lcab/snapp/snappuikit/c/c;

    .line 147
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/MessagesView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcab/snapp/snappuikit/c/c;-><init>(I)V

    .line 149
    invoke-virtual {p1, p0}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->setItemClickListener(Lcab/snapp/passenger/g/a;)V

    .line 150
    iget-object v1, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 151
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesEmpty:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->viewMessagesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/MessagesView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method
