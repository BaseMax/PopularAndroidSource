.class public Lcom/ebay/mobile/activities/PreferredCountryActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "PreferredCountryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final EXTRA_ALLOW_APO_FPO:Ljava/lang/String; = "apo_fpo_dpo"

.field public static final EXTRA_COUNTRY:Ljava/lang/String; = "extraCountry"

.field public static final EXTRA_COUNTRY_MILITARY:Ljava/lang/String; = "extraCountryMilitary"

.field static final logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "CountryAutoDetect"

    const-string v2, "Country Auto-Detect mode"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/PreferredCountryActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "AddNewCountryAddress"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 28
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d01a0

    .line 29
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->setContentView(I)V

    const p1, 0x7f1209cf

    .line 30
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1000

    .line 31
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->setToolbarFlags(I)V

    .line 33
    new-instance p1, Lcom/ebay/mobile/settings/general/PreferredCountryFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/settings/general/PreferredCountryFragment;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "apo_fpo_dpo"

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "apo_fpo_dpo"

    const-string v3, "apo_fpo_dpo"

    const/4 v4, 0x0

    .line 37
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v2, "extraCountry"

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "extraCountry"

    const-string v3, "extraCountry"

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    :cond_1
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/settings/general/PreferredCountryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a06bc

    .line 43
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;

    .line 51
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->isCountryUsMilitary()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "extraCountryMilitary"

    const/4 p4, 0x1

    .line 53
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->getCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    const-string p3, "extraCountry"

    .line 55
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p3, -0x1

    .line 56
    invoke-virtual {p0, p3, p2}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    sget-object p2, Lcom/ebay/mobile/activities/PreferredCountryActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_1

    .line 58
    sget-object p2, Lcom/ebay/mobile/activities/PreferredCountryActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Manually selected country: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 65
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 66
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/PreferredCountryActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method
