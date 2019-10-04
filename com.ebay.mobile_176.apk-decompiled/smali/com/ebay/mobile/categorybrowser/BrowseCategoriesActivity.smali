.class public final Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "BrowseCategoriesActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/ebay/mobile/ErrorDialogFragment$OnDismissMessageListener;
.implements Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$Observer;


# static fields
.field public static final EXTRA_SKIP_BACKSTACK:Ljava/lang/String; = "skipBackstack"


# instance fields
.field private backgroundImageUrl:Ljava/lang/String;

.field private categoryId:J

.field private categoryName:Ljava/lang/String;

.field private categorySite:Lcom/ebay/nautilus/domain/EbaySite;

.field private dataManagerKey:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

.field private isStarting:Z

.field private navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

.field private progressView:Landroid/view/View;

.field private skipBackstack:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->isStarting:Z

    return-void
.end method

.method private handleCategoriesChanged(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;",
            "J",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/EbayCategoryNode;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 240
    iget-object v1, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->progressView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-virtual/range {p4 .. p4}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    .line 243
    invoke-virtual/range {p4 .. p4}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    .line 245
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 246
    invoke-static {p0, v4, v1}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    goto/16 :goto_2

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getDataManagerContainer()Lcom/ebay/nautilus/shell/app/DataManagerContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v3, v0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->dataManagerKey:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->delete(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)V

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 258
    invoke-static {v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 261
    new-instance v3, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;

    invoke-direct {v3}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;-><init>()V

    .line 262
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "categoryId"

    const-wide/16 v7, -0x1

    .line 263
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "categoryName"

    const v7, 0x7f1206b8

    .line 264
    invoke-virtual {p0, v7}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "categoryLevel"

    .line 265
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v6

    const-string v7, "categorySite"

    .line 267
    iget-object v6, v6, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "categoryImageUrl"

    const/4 v7, 0x0

    .line 268
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 271
    invoke-static {v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    const v8, 0x7f0a06bd

    .line 273
    invoke-virtual {v6, v8, v3, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    if-eqz v2, :cond_2

    .line 277
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v5, v3, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    .line 278
    invoke-static {v5, v6}, Lcom/ebay/mobile/categorybrowser/CategoryViewModel;->getCategoryImageUrl(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v7

    :goto_0
    if-eqz v2, :cond_6

    .line 282
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    if-eqz v5, :cond_6

    .line 284
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 285
    new-instance v6, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-direct {v6}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;-><init>()V

    .line 286
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "categoryId"

    .line 287
    iget-wide v11, v5, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "categoryName"

    .line 288
    iget-object v11, v5, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "categoryLevel"

    .line 289
    iget v11, v5, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "navigationIdPath"

    .line 291
    invoke-static {v5}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->constructNavigationBreadcrumbs(Lcom/ebay/nautilus/domain/data/EbayCategory;)[Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object v11

    .line 290
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 292
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    move-result-object v10

    iget-object v10, v10, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    sget-object v11, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    if-ne v10, v11, :cond_3

    iget-wide v10, v5, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    const-wide/16 v12, 0x1770

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    sget-object v10, Lcom/ebay/nautilus/domain/EbaySite;->MOTOR:Lcom/ebay/nautilus/domain/EbaySite;

    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    move-result-object v10

    iget-object v10, v10, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;->ebaySite:Lcom/ebay/nautilus/domain/EbaySite;

    :goto_1
    const-string v11, "categorySite"

    .line 296
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v10, "categoryImageUrl"

    .line 297
    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v6, v9}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 300
    iget v5, v5, Lcom/ebay/nautilus/domain/data/EbayCategory;->level:I

    invoke-static {v5}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v9

    .line 302
    invoke-virtual {v9, v5}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v9

    .line 303
    invoke-virtual {v9, v8, v6, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 304
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 307
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->category:Lcom/ebay/nautilus/domain/data/EbayCategory;

    iget-wide v5, v5, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    cmp-long v5, p2, v5

    if-nez v5, :cond_5

    :cond_4
    move-object v2, v7

    goto :goto_0

    .line 309
    :cond_5
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->children:[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 310
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/EbayCategoryNode;->children:[Lcom/ebay/nautilus/domain/data/EbayCategoryNode;

    aget-object v2, v2, v4

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic lambda$onCategoriesChanged$1(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->handleCategoriesChanged(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method

.method public static synthetic lambda$onStart$0(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->sendTracking(I)V

    :cond_1
    return-void
.end method

.method private sendTracking(I)V
    .locals 5

    .line 326
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-lez p1, :cond_2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 330
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 331
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 334
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 335
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 336
    instance-of v2, p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    if-eqz v2, :cond_0

    .line 338
    check-cast p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->getCategoryInfo()Lcom/ebay/nautilus/domain/data/EbayCategory;

    move-result-object p1

    const-string v2, "catlbl"

    .line 339
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v2, "catID"

    .line 340
    iget-wide v3, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    goto :goto_0

    .line 342
    :cond_0
    instance-of p1, p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;

    if-eqz p1, :cond_1

    const-string p1, "catlbl"

    const-string v2, "all"

    .line 344
    invoke-virtual {v0, p1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 345
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 349
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->addXpTrackingToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Z)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 351
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected getNavigationId()I
    .locals 1

    const v0, 0x7f0a0a50

    return v0
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "Browse"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 365
    iget-boolean v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->skipBackstack:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->finish()V

    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getNavigationDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 377
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->finish()V

    return-void

    .line 384
    :cond_2
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onBackPressed()V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 321
    invoke-direct {p0, v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->sendTracking(I)V

    return-void
.end method

.method public onCategoriesChanged(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;",
            "J",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/EbayCategoryNode;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p4, :cond_2

    return-void

    .line 229
    :cond_2
    iget-boolean v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->isStarting:Z

    if-eqz v0, :cond_3

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$Pqd1YKYaXQgRVfXz84B-eR3Qc0w;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 234
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->handleCategoriesChanged(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;JLcom/ebay/nautilus/domain/content/Content;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onCategoriesLoading(Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;J)V
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->progressView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 59
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x2000

    .line 61
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->addToolbarFlags(I)V

    const v0, 0x7f0d007f

    .line 62
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->setContentView(I)V

    const v0, 0x7f120308

    .line 63
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->setTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    const-string p1, "categoryId"

    .line 69
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    const-string p1, "categoryName"

    .line 70
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryName:Ljava/lang/String;

    const-string p1, "navigationIdPath"

    .line 71
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    const-string v4, "categoryImageUrl"

    .line 72
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->backgroundImageUrl:Ljava/lang/String;

    const-string v4, "categorySite"

    .line 73
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/EbaySite;

    iput-object v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    const-string/jumbo v4, "skipBackstack"

    .line 74
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->skipBackstack:Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "categoryId"

    .line 78
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    const-string v0, "categoryName"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryName:Ljava/lang/String;

    const-string v0, "navigationIdPath"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const-string v4, "categoryImageUrl"

    .line 81
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->backgroundImageUrl:Ljava/lang/String;

    const-string v4, "categorySite"

    .line 82
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/EbaySite;

    iput-object v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    const-string/jumbo v4, "skipBackstack"

    .line 83
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->skipBackstack:Z

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v4, 0x7f1206b8

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryName:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    .line 92
    array-length v0, p1

    new-array v0, v0, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    iput-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    aget-object v2, p1, v1

    check-cast v2, Lcom/ebay/nautilus/domain/data/EbayCategory;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 98
    new-array p1, p1, [Lcom/ebay/nautilus/domain/data/EbayCategory;

    new-instance v0, Lcom/ebay/nautilus/domain/data/EbayCategory;

    .line 100
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/ebay/nautilus/domain/data/EbayCategory;-><init>(JLjava/lang/String;)V

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    :cond_4
    const p1, 0x7f0a0cb2

    .line 104
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->progressView:Landroid/view/View;

    return-void
.end method

.method public onDismissMessage(IZ)V
    .locals 1

    if-eqz p2, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p2

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 396
    :goto_0
    invoke-static {p2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 400
    instance-of p2, p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    if-eqz p2, :cond_1

    .line 401
    check-cast p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->refresh()V

    goto :goto_1

    .line 402
    :cond_1
    instance-of p2, p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;

    if-eqz p2, :cond_2

    .line 403
    check-cast p1, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;->refresh()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 4

    .line 179
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 183
    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 185
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    iget-object v2, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    :goto_0
    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/EbaySite;)V

    iput-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->dataManagerKey:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    .line 187
    iget-object v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->dataManagerKey:Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;

    .line 188
    iget-wide v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    invoke-virtual {p1, v0, v1, p0}, Lcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager;->getPathToCategory(JLcom/ebay/nautilus/domain/content/dm/CategoryServiceDataManager$Observer;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 157
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->isStarting:Z

    .line 167
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 195
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "categoryId"

    .line 197
    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "categoryName"

    .line 198
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navigationIdPath"

    .line 199
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->navigationBreadcrumbs:[Lcom/ebay/nautilus/domain/data/EbayCategory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v0, "categoryImageUrl"

    .line 200
    iget-object v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->backgroundImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "skipBackstack"

    .line 201
    iget-boolean v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->skipBackstack:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 110
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onStart()V

    .line 113
    invoke-virtual {p0}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-wide v1, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 116
    invoke-static {v1}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesFragment;->createFragmentTag(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 120
    new-instance v2, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;

    invoke-direct {v2}, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesTileFragment;-><init>()V

    .line 121
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "selectedCategoryId"

    .line 123
    iget-wide v5, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categoryId:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 124
    iget-object v4, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    if-eqz v4, :cond_0

    const-string v4, "categorySite"

    .line 125
    iget-object v5, p0, Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;->categorySite:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    :cond_0
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x7f0a06bd

    .line 131
    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 138
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$eFH0Vndombj-UQsmcisPg3gM71Q;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/categorybrowser/-$$Lambda$BrowseCategoriesActivity$eFH0Vndombj-UQsmcisPg3gM71Q;-><init>(Lcom/ebay/mobile/categorybrowser/BrowseCategoriesActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
