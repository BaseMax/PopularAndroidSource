.class public Lcab/snapp/passenger/units/support/SupportView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/support/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/support/c;

.field ticketsRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a6
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcab/snapp/passenger/units/support/SupportView;->a:Lcab/snapp/passenger/units/support/c;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcab/snapp/passenger/units/support/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$r78TTRrOqiOApsvCwfzr4LZ7tCo(Lcab/snapp/passenger/units/support/SupportView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/support/SupportView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public loadTickets(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcab/snapp/passenger/a/n;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcab/snapp/passenger/units/support/SupportView;->ticketsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    iget-object p1, p0, Lcab/snapp/passenger/units/support/SupportView;->ticketsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 88
    iget-object p1, p0, Lcab/snapp/passenger/units/support/SupportView;->ticketsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 97
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 98
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    const v1, 0x7f120258

    .line 99
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 100
    new-instance v1, Lcab/snapp/passenger/units/support/-$$Lambda$SupportView$r78TTRrOqiOApsvCwfzr4LZ7tCo;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/support/-$$Lambda$SupportView$r78TTRrOqiOApsvCwfzr4LZ7tCo;-><init>(Lcab/snapp/passenger/units/support/SupportView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 19
    check-cast p1, Lcab/snapp/passenger/units/support/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/support/SupportView;->setPresenter(Lcab/snapp/passenger/units/support/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/support/c;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcab/snapp/passenger/units/support/SupportView;->a:Lcab/snapp/passenger/units/support/c;

    return-void
.end method
