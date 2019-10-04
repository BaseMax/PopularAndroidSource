.class public Lcab/snapp/passenger/units/ticket/TicketView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/ticket/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/ticket/c;

.field issueCharCounterTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a8
    .end annotation
.end field

.field issueDescEt:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a9
    .end annotation
.end field

.field rideAddressTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ab
    .end annotation
.end field

.field rideInfoLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ac
    .end annotation
.end field

.field rideTitleAndCodeTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ad
    .end annotation
.end field

.field sendTicketBtn:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04aa
    .end annotation
.end field

.field ticketDescTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04a7
    .end annotation
.end field

.field ticketTitleTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ae
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

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 263
    iget-object p1, p0, Lcab/snapp/passenger/units/ticket/TicketView;->a:Lcab/snapp/passenger/units/ticket/c;

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1}, Lcab/snapp/passenger/units/ticket/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$SSnLgp78jbLswjRkI7_u9lVl6uk(Lcab/snapp/passenger/units/ticket/TicketView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ticket/TicketView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getIssueDescEt()Landroid/widget/EditText;
    .locals 1

    .line 235
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->issueDescEt:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public getIssueDescription()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->issueDescEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->issueDescEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideRideInfoLayout()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->rideInfoLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 259
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 260
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    const v1, 0x7f120258

    .line 261
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 262
    new-instance v1, Lcab/snapp/passenger/units/ticket/-$$Lambda$TicketView$SSnLgp78jbLswjRkI7_u9lVl6uk;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ticket/-$$Lambda$TicketView$SSnLgp78jbLswjRkI7_u9lVl6uk;-><init>(Lcab/snapp/passenger/units/ticket/TicketView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onSendTicketClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04aa
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->a:Lcab/snapp/passenger/units/ticket/c;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/c;->onSendTicketClicked()V

    :cond_0
    return-void
.end method

.method public setIssueDescCount(Ljava/lang/String;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->issueCharCounterTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIssueDescEtTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->issueDescEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 25
    check-cast p1, Lcab/snapp/passenger/units/ticket/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ticket/TicketView;->setPresenter(Lcab/snapp/passenger/units/ticket/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/ticket/c;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcab/snapp/passenger/units/ticket/TicketView;->a:Lcab/snapp/passenger/units/ticket/c;

    return-void
.end method

.method public setRideAddress(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->rideAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRideTitleAndCode(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->rideTitleAndCodeTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTicketDescription(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->ticketDescTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTicketTitle(Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->ticketTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showRideInfoLayout()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView;->rideInfoLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method
