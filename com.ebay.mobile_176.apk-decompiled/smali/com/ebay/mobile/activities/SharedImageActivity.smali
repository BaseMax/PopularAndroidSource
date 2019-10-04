.class public Lcom/ebay/mobile/activities/SharedImageActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "SharedImageActivity.java"


# instance fields
.field private errorTextView:Landroid/view/View;

.field private imageLoadFailed:Z

.field private imageView:Lcom/ebay/android/widget/RemoteImageView;

.field private startImageSearchButton:Landroid/view/View;

.field private startTextSearchButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->imageLoadFailed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/activities/SharedImageActivity;Lcom/ebay/nautilus/domain/data/Photo;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->launchImageSearch(Lcom/ebay/nautilus/domain/data/Photo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/activities/SharedImageActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->trackImageSearchTapped()V

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/mobile/activities/SharedImageActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->launchSearchLandingPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/ebay/mobile/activities/SharedImageActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->trackKeywordSearchTapped()V

    return-void
.end method

.method static synthetic access$400(Lcom/ebay/mobile/activities/SharedImageActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->trackKeywordSearchOnErrorTapped()V

    return-void
.end method

.method private handleDownload()V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SharedImageActivity;->loadPhotoFromIntent(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/data/Photo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/SharedImageActivity;->initSearchConfirmationUi(Lcom/ebay/nautilus/domain/data/Photo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->imageLoadFailed:Z

    .line 192
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->initImageLoadFailedUi()V

    :goto_0
    return-void
.end method

.method private initImageLoadFailedUi()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startImageSearchButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->imageView:Lcom/ebay/android/widget/RemoteImageView;

    const v1, 0x7f0803bd

    invoke-virtual {v0, v1}, Lcom/ebay/android/widget/RemoteImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->errorTextView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startTextSearchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startTextSearchButton:Landroid/view/View;

    new-instance v1, Lcom/ebay/mobile/activities/SharedImageActivity$3;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/SharedImageActivity$3;-><init>(Lcom/ebay/mobile/activities/SharedImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSearchConfirmationUi(Lcom/ebay/nautilus/domain/data/Photo;)V
    .locals 4
    .param p1    # Lcom/ebay/nautilus/domain/data/Photo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->errorTextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startImageSearchButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startTextSearchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    new-instance v0, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/Photo;->uri:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;-><init>(JLandroid/net/Uri;)V

    .line 87
    iget-object v1, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->imageView:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {v1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setGalleryImageData(Lcom/ebay/nautilus/domain/data/image/GalleryImageData;)V

    .line 89
    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startImageSearchButton:Landroid/view/View;

    new-instance v1, Lcom/ebay/mobile/activities/SharedImageActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity$1;-><init>(Lcom/ebay/mobile/activities/SharedImageActivity;Lcom/ebay/nautilus/domain/data/Photo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startTextSearchButton:Landroid/view/View;

    new-instance v0, Lcom/ebay/mobile/activities/SharedImageActivity$2;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/SharedImageActivity$2;-><init>(Lcom/ebay/mobile/activities/SharedImageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isSupportedScheme(Landroid/net/Uri;)Z
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "content"

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "file"

    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    sget-object p1, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_GALLERY:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    .line 162
    :cond_1
    sget-object p1, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_GALLERY:[Ljava/lang/String;

    const/4 v1, 0x4

    const v2, 0x7f12090a

    const v3, 0x7f120910

    invoke-static {p0, p1, v1, v2, v3}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;III)Z

    return v0

    :cond_2
    return v0
.end method

.method private launchImageSearch(Lcom/ebay/nautilus/domain/data/Photo;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/Photo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string/jumbo v1, "sharedimagesearch"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v1, Lcom/ebay/mobile/search/SearchIntentBuilder;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/search/SearchIntentBuilder;-><init>(Landroid/content/Context;)V

    .line 237
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/Photo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setUriImageSearch(Landroid/net/Uri;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 238
    invoke-virtual {v1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 240
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->get(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/mobile/search/image/ImageSearchComponent;

    move-result-object p1

    .line 241
    invoke-virtual {p1, p0, v1}, Lcom/ebay/mobile/search/image/ImageSearchComponent;->getSharedEntryPoint(Lcom/ebay/mobile/activities/CoreActivity;Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/image/common/ImageSearchEntryPoint;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Lcom/ebay/mobile/search/image/common/ImageSearchEntryPoint;->startImageSearchFlow()V

    return-void
.end method

.method private launchSearchLandingPage()V
    .locals 2

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/search/landing/SearchLandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/SharedImageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private loadPhotoFromIntent(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/data/Photo;
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "image/"

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->isSupportedScheme(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/ebay/nautilus/domain/data/Photo;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/domain/data/Photo;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static setComponentEnabledState(Landroid/content/Context;Lcom/ebay/nonfatalreporter/NonFatalReporter;ZZ)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nonfatalreporter/NonFatalReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 267
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/ebay/mobile/activities/SharedImageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 269
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    const/4 p3, 0x2

    .line 286
    invoke-virtual {p0, v1, p3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 293
    sget-object p3, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->SEARCH:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    const-string v0, "Exception while setting component state to %s"

    if-eqz p2, :cond_2

    const-string p2, "enabled"

    goto :goto_0

    :cond_2
    const-string p2, "disabled"

    :goto_0
    invoke-interface {p1, p0, p3, v0, p2}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Ljava/lang/Throwable;Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private trackImageSearchCancelled()V
    .locals 3

    .line 200
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->imageLoadFailed:Z

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "SharedImageSearchCancelledOnError"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "SharedImageSearchCancelled"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method private trackImageSearchTapped()V
    .locals 3

    .line 222
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "SharedImageSearch"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 223
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method private trackKeywordSearchOnErrorTapped()V
    .locals 3

    .line 215
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "SharedImageKeywordSearchOnError"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 217
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method private trackKeywordSearchTapped()V
    .locals 3

    .line 228
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "SharedImageSearchTextSearchClick"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 230
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d04bc

    .line 46
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->setContentView(I)V

    const/16 p1, 0x1000

    .line 47
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->setToolbarFlags(I)V

    const p1, 0x7f120e07

    .line 48
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a119c

    .line 50
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startImageSearchButton:Landroid/view/View;

    const p1, 0x7f0a119d

    .line 51
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->startTextSearchButton:Landroid/view/View;

    const p1, 0x7f0a1028

    .line 52
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->errorTextView:Landroid/view/View;

    const p1, 0x7f0a1027

    .line 53
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->imageView:Lcom/ebay/android/widget/RemoteImageView;

    .line 55
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity;->imageLoadFailed:Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->setIntent(Landroid/content/Intent;)V

    .line 65
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->handleDownload()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->trackImageSearchCancelled()V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 176
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/mobile/util/PermissionUtil;->verifyPermissionGranted(Landroid/app/Activity;I[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->handleDownload()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SharedImageActivity;->initImageLoadFailedUi()V

    :goto_0
    return-void
.end method
