.class public Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/ticket/TicketView;

.field private view7f0a04aa:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/ticket/TicketView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;-><init>(Lcab/snapp/passenger/units/ticket/TicketView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/ticket/TicketView;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;->target:Lcab/snapp/passenger/units/ticket/TicketView;

    .line 33
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04ae

    const-string v2, "field \'ticketTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->ticketTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04a7

    const-string v2, "field \'ticketDescTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->ticketDescTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04ac

    const-string v2, "field \'rideInfoLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->rideInfoLayout:Landroid/widget/LinearLayout;

    .line 36
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04ad

    const-string v2, "field \'rideTitleAndCodeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->rideTitleAndCodeTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04ab

    const-string v2, "field \'rideAddressTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->rideAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04a8

    const-string v2, "field \'issueCharCounterTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->issueCharCounterTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0a04a9

    const-string v2, "field \'issueDescEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->issueDescEt:Landroidx/appcompat/widget/AppCompatEditText;

    const v0, 0x7f0a04aa

    const-string v1, "field \'sendTicketBtn\' and method \'onSendTicketClicked\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 41
    const-class v1, Lcab/snapp/snappuikit/SnappButton;

    const-string v2, "field \'sendTicketBtn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/ticket/TicketView;->sendTicketBtn:Lcab/snapp/snappuikit/SnappButton;

    .line 42
    iput-object p2, p0, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;->view7f0a04aa:Landroid/view/View;

    .line 43
    new-instance v0, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;Lcab/snapp/passenger/units/ticket/TicketView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;->target:Lcab/snapp/passenger/units/ticket/TicketView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;->target:Lcab/snapp/passenger/units/ticket/TicketView;

    .line 58
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->ticketTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->ticketDescTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->rideInfoLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->rideTitleAndCodeTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->rideAddressTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->issueCharCounterTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->issueDescEt:Landroidx/appcompat/widget/AppCompatEditText;

    .line 65
    iput-object v1, v0, Lcab/snapp/passenger/units/ticket/TicketView;->sendTicketBtn:Lcab/snapp/snappuikit/SnappButton;

    .line 67
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;->view7f0a04aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcab/snapp/passenger/units/ticket/TicketView_ViewBinding;->view7f0a04aa:Landroid/view/View;

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
