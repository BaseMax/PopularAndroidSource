.class public final Lcab/snapp/passenger/units/box_options/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/box_options/BoxOptionsView;",
        "Lcab/snapp/passenger/units/box_options/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/text/TextWatcher;

.field protected b:Landroid/text/TextWatcher;

.field protected c:Landroid/text/TextWatcher;

.field protected d:Landroid/text/TextWatcher;

.field protected e:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    .line 14
    new-instance v0, Lcab/snapp/passenger/units/box_options/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/box_options/c$1;-><init>(Lcab/snapp/passenger/units/box_options/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->a:Landroid/text/TextWatcher;

    .line 37
    new-instance v0, Lcab/snapp/passenger/units/box_options/c$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/box_options/c$2;-><init>(Lcab/snapp/passenger/units/box_options/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->b:Landroid/text/TextWatcher;

    .line 60
    new-instance v0, Lcab/snapp/passenger/units/box_options/c$3;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/box_options/c$3;-><init>(Lcab/snapp/passenger/units/box_options/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->c:Landroid/text/TextWatcher;

    .line 83
    new-instance v0, Lcab/snapp/passenger/units/box_options/c$4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/box_options/c$4;-><init>(Lcab/snapp/passenger/units/box_options/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->d:Landroid/text/TextWatcher;

    .line 106
    new-instance v0, Lcab/snapp/passenger/units/box_options/-$$Lambda$c$RFKyZCoqnxQCse6-97C72J_fKEM;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/box_options/-$$Lambda$c$RFKyZCoqnxQCse6-97C72J_fKEM;-><init>(Lcab/snapp/passenger/units/box_options/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/box_options/a;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/box_options/a;->updateCashByRecipient(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/box_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$RFKyZCoqnxQCse6-97C72J_fKEM(Lcab/snapp/passenger/units/box_options/c;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/box_options/c;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public final onInitialize(Lcab/snapp/passenger/data/models/BoxOptions;Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/box_options/c;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setFullNameTextChangeListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/box_options/c;->b:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setMobileTextChangeListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/box_options/c;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setDescriptionTextChangeListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/box_options/c;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setAddressTextChangeListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/box_options/c;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setCashByRecipientCheckBoxListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/BoxOptions;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setFullNameText(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/BoxOptions;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setDescriptionText(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/BoxOptions;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setMobileText(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/BoxOptions;->isPaidByRecipient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setCashByRecipientCheckBoxChecked(Z)V

    .line 131
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/BoxOptions;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p2, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p2, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/BoxOptions;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setAddressText(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setAddressText(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/box_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setAddressText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
