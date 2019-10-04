.class public Lcab/snapp/passenger/units/jek_header/JekHeaderView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/jek_header/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/jek_header/c;

.field addCreditTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a034f
    .end annotation
.end field

.field protected b:Lbutterknife/Unbinder;

.field creditHolder:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0350
    .end annotation
.end field

.field creditTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0351
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public hideAddCreditLayout()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->creditHolder:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->addCreditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method onAddCreditClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a034e
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->a:Lcab/snapp/passenger/units/jek_header/c;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcab/snapp/passenger/units/jek_header/c;->addCreditClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 73
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->b:Lbutterknife/Unbinder;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 21
    check-cast p1, Lcab/snapp/passenger/units/jek_header/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->setPresenter(Lcab/snapp/passenger/units/jek_header/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/jek_header/c;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->a:Lcab/snapp/passenger/units/jek_header/c;

    return-void
.end method

.method public showAddCreditLayout()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->creditHolder:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->addCreditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method
