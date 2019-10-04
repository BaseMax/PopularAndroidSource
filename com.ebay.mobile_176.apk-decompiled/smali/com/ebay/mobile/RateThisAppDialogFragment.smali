.class public Lcom/ebay/mobile/RateThisAppDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RateThisAppDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static FRAGMENT_MANAGER_TAG:Ljava/lang/String; = "rate_this_app"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static shouldShowDialog()Z
    .locals 9

    .line 50
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 53
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Verticals$B;->rateThisApp:Lcom/ebay/mobile/dcs/Dcs$Verticals$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->providerApptentive:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 58
    :cond_0
    invoke-virtual {v0, v3}, Lcom/ebay/common/Preferences;->getRateAppUserSaidNo(Z)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v3}, Lcom/ebay/common/Preferences;->getRateAppUserSaidYes(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 63
    :cond_1
    invoke-virtual {v0, v3}, Lcom/ebay/common/Preferences;->getRateAppLaunchCount(I)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/4 v5, 0x5

    if-ge v2, v5, :cond_2

    .line 67
    invoke-virtual {v0, v2}, Lcom/ebay/common/Preferences;->setRateAppLaunchCount(I)V

    return v3

    :cond_2
    const-wide/16 v5, 0x0

    .line 73
    invoke-virtual {v0, v5, v6}, Lcom/ebay/common/Preferences;->getRateAppInstallDate(J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_3

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ebay/common/Preferences;->setRateAppInstallDate(J)V

    return v3

    .line 80
    :cond_3
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 81
    invoke-virtual {v2, v7, v8}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v5, 0x6

    .line 82
    sget-object v6, Lcom/ebay/mobile/dcs/Dcs$Verticals$I;->rateThisAppLaterDaysDelay:Lcom/ebay/mobile/dcs/Dcs$Verticals$I;

    invoke-interface {v1, v6}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 85
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_4

    return v3

    .line 93
    :cond_4
    invoke-virtual {v0, v3}, Lcom/ebay/common/Preferences;->getRateAppBinAction(Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 94
    invoke-virtual {v0, v3}, Lcom/ebay/common/Preferences;->getRateAppListAction(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_7

    return v3

    :cond_7
    return v4

    :cond_8
    :goto_2
    return v3

    :cond_9
    :goto_3
    return v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 119
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/ebay/common/Preferences;->setRateAppUserSaidYes(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/ebay/mobile/RateThisAppDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 136
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/RateThisAppDialogFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/RateThisAppDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/ebay/common/Preferences;->setRateAppUserSaidNo(Z)V

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ebay/common/Preferences;->setRateAppInstallDate(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/RateThisAppDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120b12

    .line 108
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b11

    .line 109
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b13

    .line 110
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b14

    .line 111
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
