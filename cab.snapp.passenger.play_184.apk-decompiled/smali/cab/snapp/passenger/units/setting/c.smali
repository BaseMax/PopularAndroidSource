.class public final Lcab/snapp/passenger/units/setting/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/setting/SettingView;",
        "Lcab/snapp/passenger/units/setting/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final activateNewsLetterEmail(Z)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setNewsLetterCheckBox(Z)V

    .line 26
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setNewsLetterSummaryState(Z)V

    return-void
.end method

.method public final activateRideInfoEmail(Z)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setRideInfoEmailCheckBox(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setRideInfoEmailSummaryState(Z)V

    return-void
.end method

.method public final activateRideInfoSMS(Z)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setRideInfoSMSCheckBox(Z)V

    .line 48
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setRideInfoSMSSummaryState(Z)V

    return-void
.end method

.method public final activateStatisticalInfo(Z)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setStatisticalCheckBox(Z)V

    return-void
.end method

.method public final activateTransactionSMS(Z)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setRideTransactionSMSCheckBox(Z)V

    .line 59
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setTransactionSummaryState(Z)V

    return-void
.end method

.method public final activeTrafficMap(Z)V
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setTrafficMapCheckBox(Z)V

    .line 396
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->setTrafficMapSummaryState(Z)V

    return-void
.end method

.method public final checkBoxClicked(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->getId()I

    move-result v0

    const v1, 0x7f0a0462

    if-ne v0, v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/setting/a;->newsLetterCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V

    :cond_1
    const v1, 0x7f0a046b

    if-ne v0, v1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/setting/a;->rideInfoEmailCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V

    :cond_2
    const v1, 0x7f0a046f

    if-ne v0, v1, :cond_3

    .line 203
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/setting/a;->rideInfoSMSCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V

    :cond_3
    const v1, 0x7f0a045f

    if-ne v0, v1, :cond_4

    .line 207
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/setting/a;->statisticInfoCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V

    :cond_4
    const v1, 0x7f0a0473

    if-ne v0, v1, :cond_5

    .line 211
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/setting/a;->rideTransactionCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V

    :cond_5
    const v1, 0x7f0a047b

    if-ne v0, v1, :cond_6

    .line 215
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/a;->trafficMapCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V

    :cond_6
    return-void
.end method

.method public final defaultWalletSelectTextViewClicked()V
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/a;->defaultWalletSelectTextViewClicked()V

    return-void
.end method

.method public final defaultWalletSelectedAtIndex(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/a;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/a;->defaultWalletSelectedAtIndex(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final finishedFetchData()V
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/SettingView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final languageSelectTextViewClicked()V
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/a;->languageSelectTextViewClicked()V

    return-void
.end method

.method public final languageSelectedAtIndex(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/a;->languageSelectedAtIndex(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/a;->goBack()V

    :cond_0
    return-void
.end method

.method public final onItemsTitleOrSummaryClick(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    .line 412
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/c;->checkBoxClicked(Lcab/snapp/snappuikit/SnappCheckBox;)V

    return-void
.end method

.method public final removeApWalletFromDefaultWalletList()V
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/SettingView;->removeApWalletFromDefaultWalletList()V

    :cond_0
    return-void
.end method

.method public final setDefaultWallet(I)V
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSelectedDefaultWalletIndex(I)V

    :cond_0
    return-void
.end method

.method public final setLanguageSummary(Ljava/lang/String;)V
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setLanguageSummary(Ljava/lang/String;)V

    return-void
.end method

.method public final setNewsLetterCheckBox(Z)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setNewsLetterCheckBox(Z)V

    return-void
.end method

.method public final setNewsLetterSummaryState(Z)V
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setNewsLetterSummary(Z)V

    return-void
.end method

.method public final setRideInfoEmailCheckBox(Z)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setRideInfoEmailCheckBox(Z)V

    return-void
.end method

.method public final setRideInfoEmailSummaryState(Z)V
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setRideInfoEmailSummary(Z)V

    return-void
.end method

.method public final setRideInfoSMSCheckBox(Z)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setRideInfoSMSCheckBox(Z)V

    return-void
.end method

.method public final setRideInfoSMSSummaryState(Z)V
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setRideInfoSMSSummary(Z)V

    return-void
.end method

.method public final setRideTransactionSMSCheckBox(Z)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setTransactionCheckBox(Z)V

    return-void
.end method

.method public final setStatisticalCheckBox(Z)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setStatisticalInfoCheckBox(Z)V

    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 456
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public final setTrafficMapCheckBox(Z)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setTrafficMapCheckBox(Z)V

    return-void
.end method

.method public final setTrafficMapSummaryState(Z)V
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setTrafficMapSummary(Z)V

    return-void
.end method

.method public final setTransactionSummaryState(Z)V
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setTransactionSummary(Z)V

    return-void
.end method

.method public final showSelectDefaultWalletDialog()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/SettingView;->showSelectDefaultWalletDialog()V

    :cond_0
    return-void
.end method

.method public final showSelectLanguageDialog()V
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/SettingView;->showSelectLanguageDialog()V

    :cond_0
    return-void
.end method

.method public final showTrafficSection(Z)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/setting/SettingView;->showMapSetting()V

    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/setting/SettingView;->hideMapSetting()V

    return-void
.end method

.method public final startToFetchData()V
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/SettingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/SettingView;->showLoadingDialog()V

    :cond_0
    return-void
.end method
