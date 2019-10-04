.class public Lcab/snapp/passenger/units/search/SearchView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/search/SearchView;

.field private view7f0a0447:Landroid/view/View;

.field private view7f0a044e:Landroid/view/View;

.field private view7f0a0451:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/search/SearchView;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;-><init>(Lcab/snapp/passenger/units/search/SearchView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/search/SearchView;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->target:Lcab/snapp/passenger/units/search/SearchView;

    .line 41
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a044d

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 42
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a044f

    const-string v2, "field \'toolbarBaseLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->toolbarBaseLayout:Landroid/widget/RelativeLayout;

    .line 43
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0450

    const-string v2, "field \'toolbarTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->toolbarTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a044e

    const-string v1, "field \'toolbarBackBtn\' and method \'onBackClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'toolbarBackBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->toolbarBackBtn:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a044e:Landroid/view/View;

    .line 47
    new-instance v0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/search/SearchView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/search/SearchView_ViewBinding;Lcab/snapp/passenger/units/search/SearchView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0a0449

    const-string v2, "field \'searchEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->searchEt:Landroidx/appcompat/widget/AppCompatEditText;

    const v0, 0x7f0a0451

    const-string v1, "field \'startVoiceSearchBtn\' and method \'onVoiceSearchClick\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'startVoiceSearchBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->startVoiceSearchBtn:Landroid/widget/ImageView;

    .line 56
    iput-object v1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a0451:Landroid/view/View;

    .line 57
    new-instance v0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/search/SearchView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/search/SearchView_ViewBinding;Lcab/snapp/passenger/units/search/SearchView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0447

    const-string v1, "field \'deleteInputTextBtn\' and method \'onDeleteInputTextClick\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 64
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'deleteInputTextBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->deleteInputTextBtn:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a0447:Landroid/view/View;

    .line 66
    new-instance v0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/search/SearchView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/search/SearchView_ViewBinding;Lcab/snapp/passenger/units/search/SearchView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a044b

    const-string v2, "field \'loadingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->loadingLayout:Landroid/widget/LinearLayout;

    .line 73
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a044a

    const-string v2, "field \'loading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    .line 74
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a044c

    const-string v2, "field \'resultsRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/search/SearchView;->resultsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0448

    const-string v2, "field \'emptyLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcab/snapp/passenger/units/search/SearchView;->emptyLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->target:Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->target:Lcab/snapp/passenger/units/search/SearchView;

    .line 85
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 86
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->toolbarBaseLayout:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->toolbarTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->toolbarBackBtn:Landroid/widget/ImageView;

    .line 89
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->searchEt:Landroidx/appcompat/widget/AppCompatEditText;

    .line 90
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->startVoiceSearchBtn:Landroid/widget/ImageView;

    .line 91
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->deleteInputTextBtn:Landroid/widget/ImageView;

    .line 92
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->loadingLayout:Landroid/widget/LinearLayout;

    .line 93
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    .line 94
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->resultsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    iput-object v1, v0, Lcab/snapp/passenger/units/search/SearchView;->emptyLayout:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a044e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a044e:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a0451:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a0451:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a0447:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcab/snapp/passenger/units/search/SearchView_ViewBinding;->view7f0a0447:Landroid/view/View;

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
