.class public Lcab/snapp/passenger/units/webhost/WebHostView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/webhost/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/webhost/c;

.field homeImageButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04de
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04df
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e0
    .end annotation
.end field

.field toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e1
    .end annotation
.end field

.field webView:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e2
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public changeTopBarVisibility(Ljava/lang/Boolean;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcab/snapp/passenger/units/webhost/WebHostView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void

    .line 143
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/webhost/WebHostView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method onBackButton()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04dd
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/WebHostView;->a:Lcab/snapp/passenger/units/webhost/c;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/c;->onBackButtonClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 152
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 153
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method onHomeButton()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04de
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/WebHostView;->a:Lcab/snapp/passenger/units/webhost/c;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/c;->onHomeButtonClicked()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 25
    check-cast p1, Lcab/snapp/passenger/units/webhost/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/webhost/WebHostView;->setPresenter(Lcab/snapp/passenger/units/webhost/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/webhost/c;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/WebHostView;->a:Lcab/snapp/passenger/units/webhost/c;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/WebHostView;->toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
