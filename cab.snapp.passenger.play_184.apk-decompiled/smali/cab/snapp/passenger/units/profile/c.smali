.class public final Lcab/snapp/passenger/units/profile/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/profile/ProfileView;",
        "Lcab/snapp/passenger/units/profile/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field protected g:Lcab/snapp/snappdialog/b/d;

.field protected h:Lcab/snapp/snappuikit/b/a;

.field i:Ljava/lang/String;

.field j:Lcab/snapp/snappdialog/c/a;

.field protected k:Lcab/snapp/snappuikit/b/a;

.field l:Ljava/lang/String;

.field protected m:Landroid/text/TextWatcher;

.field protected n:Lcab/snapp/snappuikit/b/a;

.field protected o:Landroid/text/TextWatcher;

.field protected p:Lcab/snapp/snappuikit/b/a;

.field q:Ljava/lang/String;

.field protected r:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcab/snapp/passenger/units/profile/c;->c:Z

    .line 60
    new-instance v0, Lcab/snapp/passenger/units/profile/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$1;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->g:Lcab/snapp/snappdialog/b/d;

    .line 78
    new-instance v0, Lcab/snapp/passenger/units/profile/c$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$2;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->h:Lcab/snapp/snappuikit/b/a;

    .line 111
    new-instance v0, Lcab/snapp/passenger/units/profile/c$3;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$3;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->k:Lcab/snapp/snappuikit/b/a;

    .line 137
    new-instance v0, Lcab/snapp/passenger/units/profile/c$4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$4;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->m:Landroid/text/TextWatcher;

    .line 167
    new-instance v0, Lcab/snapp/passenger/units/profile/c$5;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$5;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->n:Lcab/snapp/snappuikit/b/a;

    .line 190
    new-instance v0, Lcab/snapp/passenger/units/profile/c$6;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$6;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->o:Landroid/text/TextWatcher;

    .line 219
    new-instance v0, Lcab/snapp/passenger/units/profile/c$7;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$7;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->p:Lcab/snapp/snappuikit/b/a;

    .line 245
    new-instance v0, Lcab/snapp/passenger/units/profile/c$8;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/c$8;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->r:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/profile/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lcab/snapp/passenger/units/profile/c;->c:Z

    .line 598
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->hideLoadingDialog()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappdialog/c/a;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/c;->j:Lcab/snapp/snappdialog/c/a;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->setBirthdayText(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 1716
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/ProfileView;

    if-eqz p1, :cond_0

    .line 1721
    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissBirthdayDialog()V

    .line 1722
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c;->j:Lcab/snapp/snappdialog/c/a;

    if-eqz p1, :cond_0

    .line 1724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c;->j:Lcab/snapp/snappdialog/c/a;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/c/a;->getYear()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->j:Lcab/snapp/snappdialog/c/a;

    invoke-virtual {v1}, Lcab/snapp/snappdialog/c/a;->getMonth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c;->j:Lcab/snapp/snappdialog/c/a;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/c/a;->getDay()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/profile/c;->i:Ljava/lang/String;

    .line 1725
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c;->i:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 674
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->onGenderConfirmed()V

    return-void
.end method

.method public static synthetic lambda$D1MFM0woNbI5yMftd7v8jt01F34(Lcab/snapp/passenger/units/profile/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/c;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$M0WfXDwJTFwTOdBA8w_FsxiFG3U(Lcab/snapp/passenger/units/profile/c;Lcab/snapp/snappdialog/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/c;->a(Lcab/snapp/snappdialog/c/a;)V

    return-void
.end method

.method public static synthetic lambda$tf0qLeACpgnGzFHVxemJgrxNYlo(Lcab/snapp/passenger/units/profile/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/c;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 3

    .line 748
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/ProfileView;

    if-eqz p1, :cond_4

    .line 749
    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 754
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c;->b:Ljava/lang/String;

    const v1, 0x7f06004b

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcab/snapp/c/i;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 760
    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120290

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    return-void

    .line 764
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/a;->a(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissEmailEditDialog()V

    return-void

    .line 756
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1200a6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final confirmApWalletUnlink()V
    .locals 1

    .line 824
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/a;->confirmApWalletUnlink()V

    return-void
.end method

.method public final finishPresentingPhoneVerificationUnit()V
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissPhoneVerificationUnitDialog()V

    return-void
.end method

.method public final onBackClicked()V
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onBeforeResendEmail()V
    .locals 0

    return-void
.end method

.method public final onBeforeSendEmail()V
    .locals 0

    return-void
.end method

.method public final onBeforeUpdateProfile()V
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->showLoadingDialog()V

    .line 400
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method public final onBirthdayClicked()V
    .locals 3

    .line 700
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 705
    :cond_0
    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$c$M0WfXDwJTFwTOdBA8w_FsxiFG3U;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$c$M0WfXDwJTFwTOdBA8w_FsxiFG3U;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$c$tf0qLeACpgnGzFHVxemJgrxNYlo;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$c$tf0qLeACpgnGzFHVxemJgrxNYlo;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->showBirthdayDialog(Lcab/snapp/snappdialog/dialogViews/a/b$b;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onEmailClicked()V
    .locals 3

    .line 734
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 736
    iput-object v0, p0, Lcab/snapp/passenger/units/profile/c;->b:Ljava/lang/String;

    .line 737
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->o:Landroid/text/TextWatcher;

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$rwq-VVk5klZdZqi2xq8O37ZVrmI;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$rwq-VVk5klZdZqi2xq8O37ZVrmI;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->showEmailEditDialog(Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b;

    :cond_0
    return-void
.end method

.method public final onGenderClicked()V
    .locals 4

    .line 660
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 665
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 669
    :cond_1
    iget v1, p0, Lcab/snapp/passenger/units/profile/c;->e:I

    iput v1, p0, Lcab/snapp/passenger/units/profile/c;->f:I

    .line 670
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1200ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1200eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1200ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v2, p0, Lcab/snapp/passenger/units/profile/c;->g:Lcab/snapp/snappdialog/b/d;

    new-instance v3, Lcab/snapp/passenger/units/profile/-$$Lambda$c$D1MFM0woNbI5yMftd7v8jt01F34;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$c$D1MFM0woNbI5yMftd7v8jt01F34;-><init>(Lcab/snapp/passenger/units/profile/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/profile/ProfileView;->showGenderDialog(Ljava/util/ArrayList;Lcab/snapp/snappdialog/b/d;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onGenderConfirmed()V
    .locals 3

    .line 682
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 687
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissGenderDialog()V

    .line 688
    iget v1, p0, Lcab/snapp/passenger/units/profile/c;->f:I

    iput v1, p0, Lcab/snapp/passenger/units/profile/c;->e:I

    .line 689
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 691
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcab/snapp/passenger/units/profile/c;->e:I

    invoke-static {v2}, Lcab/snapp/passenger/f/c;->getResourceIdFromCode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->setGenderText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onGettingProfile()V
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->r:Landroid/text/TextWatcher;

    iget-object v2, p0, Lcab/snapp/passenger/units/profile/c;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->setWatchers(Landroid/text/TextWatcher;Landroid/text/TextWatcher;)V

    .line 283
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->setStatusBarColor()V

    return-void
.end method

.method public final onNewPhoneVerified(Ljava/lang/String;)V
    .locals 1

    .line 572
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/c;->d:Ljava/lang/String;

    .line 573
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->setPhoneText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->hideKeyboard()V

    return-void
.end method

.method public final onPhoneNumberClicked()V
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/a;->onPhoneNumberClicked()V

    :cond_0
    return-void
.end method

.method public final onProfileError()V
    .locals 3

    .line 382
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->hideLoadingDialog()V

    .line 385
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onProfileReady(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_1

    return-void

    .line 312
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->hideLoadingDialog()V

    .line 314
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/units/profile/c;->q:Ljava/lang/String;

    .line 317
    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->setNameText(Ljava/lang/String;)V

    .line 320
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/units/profile/c;->a:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->setEmailText(Ljava/lang/String;)V

    .line 326
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 328
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/units/profile/c;->d:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->setPhoneText(Ljava/lang/String;)V

    .line 332
    :cond_4
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 336
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 338
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcab/snapp/passenger/units/profile/c;->e:I

    .line 339
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcab/snapp/passenger/units/profile/c;->e:I

    invoke-static {v3}, Lcab/snapp/passenger/f/c;->getResourceIdFromCode(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->setGenderText(Ljava/lang/String;)V

    .line 342
    :cond_5
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 344
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcab/snapp/passenger/units/profile/c;->l:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcab/snapp/passenger/units/profile/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->setAddressText(Ljava/lang/String;)V

    .line 348
    :cond_6
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getBirthDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 350
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getBirthDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/c/a/b;->getDatePickerJalaliDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/units/profile/c;->i:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->i:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcab/snapp/passenger/units/profile/c;->a(Ljava/lang/String;)V

    .line 355
    :cond_7
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmailVerified()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    goto :goto_0

    .line 363
    :cond_8
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->showApprovedEmailEditText()V

    .line 364
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->hideResendEmailActionButton()V

    goto :goto_0

    .line 359
    :cond_9
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->showNormalEmailEditText()V

    .line 360
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->showResendEmailActionButton()V

    .line 368
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c;->n:Lcab/snapp/snappuikit/b/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->setPhoneEditTextListener(Lcab/snapp/snappuikit/b/a;)V

    .line 370
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c;->p:Lcab/snapp/snappuikit/b/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->setEmailEditTextListener(Lcab/snapp/snappuikit/b/a;)V

    .line 372
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c;->h:Lcab/snapp/snappuikit/b/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->setGenderEditTextListener(Lcab/snapp/snappuikit/b/a;)V

    .line 374
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c;->k:Lcab/snapp/snappuikit/b/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->setBirthdayEditTextListener(Lcab/snapp/snappuikit/b/a;)V

    return-void
.end method

.method public final onResendEmailError(Ljava/lang/String;)V
    .locals 2

    .line 515
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 526
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1200b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    return-void

    .line 530
    :cond_2
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->showErrorDialog(Ljava/lang/String;)Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public final onResendEmailSuccess()V
    .locals 6

    .line 539
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120208

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 547
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1202bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessageDialog(Ljava/lang/String;)Lcab/snapp/snappdialog/b;

    :cond_1
    return-void
.end method

.method public final onSendEmailError(Ljava/lang/String;)V
    .locals 2

    .line 481
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 486
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 492
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1200b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    return-void

    .line 496
    :cond_2
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->showErrorDialog(Ljava/lang/String;)Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public final onSendEmailSuccess()V
    .locals 5

    .line 468
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120208

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcab/snapp/passenger/units/profile/c;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessageDialog(Ljava/lang/String;)Lcab/snapp/snappdialog/b;

    :cond_0
    return-void
.end method

.method public final onTickClicked()V
    .locals 8

    .line 624
    iget-boolean v0, p0, Lcab/snapp/passenger/units/profile/c;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcab/snapp/passenger/units/profile/c;->c:Z

    .line 638
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/profile/a;

    iget-object v2, p0, Lcab/snapp/passenger/units/profile/c;->q:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/passenger/units/profile/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcab/snapp/passenger/units/profile/c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcab/snapp/passenger/units/profile/c;->l:Ljava/lang/String;

    iget v6, p0, Lcab/snapp/passenger/units/profile/c;->e:I

    iget-object v7, p0, Lcab/snapp/passenger/units/profile/c;->i:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcab/snapp/passenger/units/profile/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-void

    .line 630
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 632
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    const v1, 0x7f1200d3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(I)V

    :cond_4
    return-void
.end method

.method public final onUpdateProfileError()V
    .locals 3

    .line 420
    invoke-direct {p0}, Lcab/snapp/passenger/units/profile/c;->a()V

    .line 421
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final onUpdateProfileError(I)V
    .locals 3

    .line 439
    invoke-direct {p0}, Lcab/snapp/passenger/units/profile/c;->a()V

    .line 440
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06004b

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    return-void

    .line 451
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1200b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public final onUpdateProfileSuccessful()V
    .locals 3

    .line 408
    invoke-direct {p0}, Lcab/snapp/passenger/units/profile/c;->a()V

    .line 409
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    iget-object v1, p0, Lcab/snapp/passenger/units/profile/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final presentPhoneVerificationUnit(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/profile/ProfileView;->showPhoneVerificationUnitAsDialog(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)Lcab/snapp/snappdialog/SnappControllerDialog;

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 291
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public final showApWalletUnlinkWarning()V
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/ProfileView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/ProfileView;->showApWalletUnlinkWarningDialog()V

    return-void
.end method
