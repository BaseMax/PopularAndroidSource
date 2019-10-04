.class public Lcab/snapp/passenger/units/sideMenu/SideMenuView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/sideMenu/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcab/snapp/passenger/units/sideMenu/c;

.field private b:I

.field footerFreeRideLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02a6
    .end annotation
.end field

.field footerLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02a7
    .end annotation
.end field

.field footerSnappFoodLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02a8
    .end annotation
.end field

.field headerCarIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02a9
    .end annotation
.end field

.field headerLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02aa
    .end annotation
.end field

.field headerRoadIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02ab
    .end annotation
.end field

.field recycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02ac
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/sideMenu/SideMenuView;)I
    .locals 0

    .line 27
    iget p0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->b:I

    return p0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/sideMenu/SideMenuView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->b:I

    return p1
.end method


# virtual methods
.method public hideSoftKeyboard()V
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 202
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_0

    return-void

    .line 206
    :cond_0
    check-cast v1, Landroid/app/Activity;

    .line 207
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 211
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 215
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    return-void
.end method

.method public initScrollGestures()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerCarIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;-><init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public loadSideMenuItems(Lcab/snapp/passenger/a/m;)V
    .locals 4

    .line 183
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 184
    iget-object v1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 224
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 225
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onFooterFreeRideLayoutClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02a6
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->a:Lcab/snapp/passenger/units/sideMenu/c;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/c;->onFreeRideClicked()V

    :cond_0
    return-void
.end method

.method public onFooterSnappFoodLayoutClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02a8
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->a:Lcab/snapp/passenger/units/sideMenu/c;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/c;->onSnappFoodClicked()V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 27
    check-cast p1, Lcab/snapp/passenger/units/sideMenu/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->setPresenter(Lcab/snapp/passenger/units/sideMenu/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/sideMenu/c;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->a:Lcab/snapp/passenger/units/sideMenu/c;

    return-void
.end method
