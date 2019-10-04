.class public Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/footer/mainfooter/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/footer/mainfooter/c;

.field addressTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036a
    .end annotation
.end field

.field destAddressTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036b
    .end annotation
.end field

.field originAddressTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036d
    .end annotation
.end field

.field selectDestinationLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a036f
    .end annotation
.end field

.field selectOriginLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0370
    .end annotation
.end field

.field vehiclesProgressBar:Lcab/snapp/snappuikit/SnappCircleProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0371
    .end annotation
.end field

.field vehiclesTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0372
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 19
    check-cast p1, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->setPresenter(Lcab/snapp/passenger/units/footer/mainfooter/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/footer/mainfooter/c;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/MainFooterView;->a:Lcab/snapp/passenger/units/footer/mainfooter/c;

    return-void
.end method
