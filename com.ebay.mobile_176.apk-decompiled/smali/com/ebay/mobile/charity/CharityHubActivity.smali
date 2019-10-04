.class public Lcom/ebay/mobile/charity/CharityHubActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "CharityHubActivity.java"

# interfaces
.implements Lcom/ebay/mobile/charity/CharityFavoritesFragment$OnStartCharitySearch;
.implements Lcom/ebay/mobile/charity/CharitySelectionListener;
.implements Lcom/ebay/mobile/charity/OnShowCharityInfo;


# static fields
.field protected static final CHARITY_INFO:Ljava/lang/String; = "charity_info"

.field protected static final CHARITY_SEARCH:Ljava/lang/String; = "charity_search"

.field public static final FAVORITES:Ljava/lang/String; = "favorites"

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final LISTING_FORM_FAVORITES:Ljava/lang/String; = "listing_form_favorites"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SELL_FAVORITES:Ljava/lang/String; = "sell_favorites"

.field public static final SPOKE:Ljava/lang/String; = "spoke"


# instance fields
.field private isSearchingForCharity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method

.method private addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    const v0, 0x7f0a0377

    invoke-virtual {p3, v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 101
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateImportantForAccessibility(I)V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    .line 162
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "listing_form_favorites"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/listingform/fragment/CharitySelector;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Lcom/ebay/mobile/listingform/fragment/CharitySelector;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onBackPressed()V

    .line 198
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->finish()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 202
    iput-boolean v1, p0, Lcom/ebay/mobile/charity/CharityHubActivity;->isSearchingForCharity:Z

    .line 203
    invoke-direct {p0, v2}, Lcom/ebay/mobile/charity/CharityHubActivity;->updateImportantForAccessibility(I)V

    .line 204
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0377

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    instance-of v2, v1, Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    if-eqz v2, :cond_1

    .line 206
    check-cast v1, Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-virtual {v1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->onBackPressed()V

    :cond_1
    const/16 v1, 0x1000

    .line 207
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/charity/CharityHubActivity;->addToolbarFlags(I)V

    .line 208
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 210
    :cond_2
    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityHubActivity;->isSearchingForCharity:Z

    if-eqz v1, :cond_3

    .line 212
    invoke-direct {p0, v2}, Lcom/ebay/mobile/charity/CharityHubActivity;->updateImportantForAccessibility(I)V

    .line 213
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    :goto_0
    return-void
.end method

.method public onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V
    .locals 4

    .line 112
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 115
    invoke-direct {p0, v2}, Lcom/ebay/mobile/charity/CharityHubActivity;->updateImportantForAccessibility(I)V

    :cond_0
    const-string/jumbo v1, "sell_favorites"

    .line 117
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/sell/CharityFragment;

    const-string v2, "listing_form_favorites"

    .line 118
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/listingform/fragment/CharitySelector;

    const-string v3, "favorites"

    .line 119
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/sell/CharityFragment;->onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/charity/CharityHubActivity;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v2, p1}, Lcom/ebay/mobile/listingform/fragment/CharitySelector;->onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/charity/CharityHubActivity;->setResult(I)V

    .line 131
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->finish()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 37
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x1001

    .line 39
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/charity/CharityHubActivity;->setToolbarFlags(I)V

    const v0, 0x7f0d00ab

    .line 40
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/charity/CharityHubActivity;->setContentView(I)V

    const v0, 0x7f120326

    .line 41
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/charity/CharityHubActivity;->setTitle(I)V

    if-nez p1, :cond_6

    .line 45
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string/jumbo v0, "spoke"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6a6895a9

    if-eq v2, v3, :cond_3

    const v3, -0x23674a56

    if-eq v2, v3, :cond_2

    const v3, 0x3164ae

    if-eq v2, v3, :cond_1

    const v3, 0x58127b7

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "listing_form_favorites"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "sell_favorites"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "favorites"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 62
    new-instance v0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;-><init>()V

    const-string v1, "favorites"

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/charity/CharityHubActivity;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 58
    :pswitch_0
    new-instance v0, Lcom/ebay/mobile/listingform/fragment/CharitySelector;

    invoke-direct {v0}, Lcom/ebay/mobile/listingform/fragment/CharitySelector;-><init>()V

    const-string v1, "listing_form_favorites"

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/charity/CharityHubActivity;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 55
    :pswitch_1
    new-instance v0, Lcom/ebay/mobile/sell/CharityFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/sell/CharityFragment;-><init>()V

    const-string/jumbo v1, "sell_favorites"

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/charity/CharityHubActivity;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 52
    :pswitch_2
    new-instance v0, Lcom/ebay/mobile/charity/CharityInfoFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/charity/CharityInfoFragment;-><init>()V

    const-string v1, "info"

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/charity/CharityHubActivity;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 67
    :cond_5
    new-instance p1, Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;-><init>()V

    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/mobile/charity/CharityHubActivity;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    const-string v0, "info_or_search"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "is_searching_for_charity"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/charity/CharityHubActivity;->isSearchingForCharity:Z

    const/16 p1, 0x1000

    .line 72
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/charity/CharityHubActivity;->removeToolbarFlags(I)V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 227
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 80
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "charity_info"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 81
    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityHubActivity;->isSearchingForCharity:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 82
    invoke-direct {p0, v0}, Lcom/ebay/mobile/charity/CharityHubActivity;->updateImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "charity_search"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "charity_info"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "info_or_search"

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_searching_for_charity"

    .line 93
    iget-boolean v1, p0, Lcom/ebay/mobile/charity/CharityHubActivity;->isSearchingForCharity:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShowCharityInfo(Lcom/ebay/nautilus/domain/data/Nonprofit;Landroid/os/Bundle;)V
    .locals 2

    .line 140
    new-instance p1, Lcom/ebay/mobile/charity/CharityInfoFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/charity/CharityInfoFragment;-><init>()V

    .line 141
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 p2, 0x1000

    .line 142
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/charity/CharityHubActivity;->removeToolbarFlags(I)V

    const/4 p2, 0x4

    .line 144
    invoke-direct {p0, p2}, Lcom/ebay/mobile/charity/CharityHubActivity;->updateImportantForAccessibility(I)V

    .line 145
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const-string v0, "charity_info"

    const v1, 0x7f0a0377

    .line 146
    invoke-virtual {p2, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const-string p1, "charity_info"

    .line 147
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 148
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 149
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onStartCharitySearch(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/ebay/mobile/charity/CharityHubActivity;->isSearchingForCharity:Z

    .line 182
    new-instance v0, Lcom/ebay/mobile/charity/CharitySearchFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/charity/CharitySearchFragment;-><init>()V

    .line 183
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/charity/CharitySearchFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 p1, 0x1000

    .line 184
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/charity/CharityHubActivity;->removeToolbarFlags(I)V

    .line 185
    invoke-virtual {p0}, Lcom/ebay/mobile/charity/CharityHubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v1, "charity_search"

    const v2, 0x7f0a0710

    .line 186
    invoke-virtual {p1, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const-string v0, "charity_search"

    .line 187
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
