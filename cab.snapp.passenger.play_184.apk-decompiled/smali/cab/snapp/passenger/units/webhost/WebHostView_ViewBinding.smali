.class public Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/webhost/WebHostView;

.field private view7f0a04dd:Landroid/view/View;

.field private view7f0a04de:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/webhost/WebHostView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;-><init>(Lcab/snapp/passenger/units/webhost/WebHostView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/webhost/WebHostView;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->target:Lcab/snapp/passenger/units/webhost/WebHostView;

    .line 36
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a04e0

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcab/snapp/passenger/units/webhost/WebHostView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 37
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a04df

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcab/snapp/passenger/units/webhost/WebHostView;->progressBar:Landroid/widget/ProgressBar;

    .line 38
    const-class v0, Landroid/webkit/WebView;

    const v1, 0x7f0a04e2

    const-string v2, "field \'webView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    .line 39
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04e1

    const-string v2, "field \'toolbarTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/webhost/WebHostView;->toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a04de

    const-string v1, "field \'homeImageButton\' and method \'onHomeButton\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'homeImageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/webhost/WebHostView;->homeImageButton:Landroid/widget/ImageButton;

    .line 42
    iput-object v1, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->view7f0a04de:Landroid/view/View;

    .line 43
    new-instance v0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;Lcab/snapp/passenger/units/webhost/WebHostView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04dd

    const-string v1, "method \'onBackButton\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    iput-object p2, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->view7f0a04dd:Landroid/view/View;

    .line 51
    new-instance v0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;Lcab/snapp/passenger/units/webhost/WebHostView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->target:Lcab/snapp/passenger/units/webhost/WebHostView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->target:Lcab/snapp/passenger/units/webhost/WebHostView;

    .line 66
    iput-object v1, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 67
    iput-object v1, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->progressBar:Landroid/widget/ProgressBar;

    .line 68
    iput-object v1, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    .line 69
    iput-object v1, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    iput-object v1, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->homeImageButton:Landroid/widget/ImageButton;

    .line 72
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->view7f0a04de:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->view7f0a04de:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->view7f0a04dd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iput-object v1, p0, Lcab/snapp/passenger/units/webhost/WebHostView_ViewBinding;->view7f0a04dd:Landroid/view/View;

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
