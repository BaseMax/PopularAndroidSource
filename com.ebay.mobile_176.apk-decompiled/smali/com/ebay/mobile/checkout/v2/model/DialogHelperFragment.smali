.class public Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;
.super Lcom/ebay/nautilus/shell/app/BaseFragment;
.source "DialogHelperFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment$DatePickerDialogHelperContract;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseFragment;-><init>()V

    return-void
.end method

.method static getInstance(Landroidx/fragment/app/Fragment;)Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;
    .locals 4
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Hosting fragment should not be null"

    .line 39
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->isStateSaved()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "checkoutDialogHelperFragment"

    .line 49
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;

    if-nez p0, :cond_2

    .line 52
    new-instance p0, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;

    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;-><init>()V

    .line 53
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "checkoutDialogHelperFragment"

    invoke-virtual {v1, p0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 55
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method launchDatePickerDialog(Landroidx/fragment/app/Fragment;Ljava/util/Date;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Hosting fragment should not be null"

    .line 76
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 85
    :cond_0
    new-instance v2, Lcom/ebay/app/DatePickerDialogFragment$Builder;

    invoke-direct {v2}, Lcom/ebay/app/DatePickerDialogFragment$Builder;-><init>()V

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    if-eqz p3, :cond_1

    .line 87
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    :try_start_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 93
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 101
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 103
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setYear(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    const/4 p2, 0x2

    .line 104
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setMonth(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    const/4 p2, 0x5

    .line 105
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setDay(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    const-string p2, "dateOfBirthPicker"

    .line 107
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_3

    const/16 p2, 0x26bf

    .line 109
    invoke-virtual {v2, p2, p0}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->createFromFragment(ILandroidx/fragment/app/Fragment;)Lcom/ebay/app/DatePickerDialogFragment;

    move-result-object p2

    const-string p3, "dateOfBirthPicker"

    .line 110
    invoke-virtual {p2, v0, p3}, Lcom/ebay/app/DatePickerDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return p1

    :cond_3
    return v1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 121
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 122
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment$DatePickerDialogHelperContract;

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment$DatePickerDialogHelperContract;

    invoke-interface {p2, p1}, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment$DatePickerDialogHelperContract;->updateModelOnDateSet(Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
