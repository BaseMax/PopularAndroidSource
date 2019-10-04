.class public Lcab/snapp/passenger/units/about_us/AboutUsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/about_us/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/about_us/c;

.field loadingAboutUs:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0322
    .end annotation
.end field

.field tvAboutContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0324
    .end annotation
.end field

.field tvApiServer:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0321
    .end annotation
.end field

.field tvVersionName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0325
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcab/snapp/passenger/units/about_us/AboutUsView;->a:Lcab/snapp/passenger/units/about_us/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/about_us/c;->onBackButtonClicked()V

    return-void
.end method

.method public static synthetic lambda$c2XifFfoIIphs3PFx_r4dhQUC2s(Lcab/snapp/passenger/units/about_us/AboutUsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/about_us/AboutUsView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method goToRulesLink()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0323
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/AboutUsView;->a:Lcab/snapp/passenger/units/about_us/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/c;->onTermsAndConditionLinkClicked()V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/AboutUsView;->loadingAboutUs:Lcab/snapp/snappuikit/SnappLoading;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappLoading;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/AboutUsView;->loadingAboutUs:Lcab/snapp/snappuikit/SnappLoading;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 155
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 156
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    const v1, 0x7f12001c

    .line 157
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 158
    new-instance v1, Lcab/snapp/passenger/units/about_us/-$$Lambda$AboutUsView$c2XifFfoIIphs3PFx_r4dhQUC2s;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/about_us/-$$Lambda$AboutUsView$c2XifFfoIIphs3PFx_r4dhQUC2s;-><init>(Lcab/snapp/passenger/units/about_us/AboutUsView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAboutUsContent(Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvAboutContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 20
    check-cast p1, Lcab/snapp/passenger/units/about_us/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/about_us/AboutUsView;->setPresenter(Lcab/snapp/passenger/units/about_us/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/about_us/c;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcab/snapp/passenger/units/about_us/AboutUsView;->a:Lcab/snapp/passenger/units/about_us/c;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvVersionName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
