.class public Lcom/ebay/mobile/activities/ShowWebViewActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "ShowWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/ebay/app/DialogFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;,
        Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;,
        Lcom/ebay/mobile/activities/ShowWebViewActivity$UrlRewriter;
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_SIGN_IN:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final ACTIVITY_REQUEST_SIGN_IN_BEFORE_ACTION:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final COMPLETION_EMAIL:Ljava/lang/String; = "ebay-mobile-email"

.field protected static final COMPLETION_EPLUS:Ljava/lang/String; = "eplus"

.field protected static final COMPLETION_ERRORID:Ljava/lang/String; = "ebay-mobile-errorid"

.field protected static final COMPLETION_STATUS:Ljava/lang/String; = "ebay-mobile-status"

.field protected static final COMPLETION_USERID:Ljava/lang/String; = "ebay-mobile-userid"

.field public static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field protected static final DEFAULT_SSO_SCOPE:Ljava/lang/String; = "//EBAYSSO/EBAYCLASSIC"

.field public static final EXTRA_ADD_DEVICE_ID:Ljava/lang/String; = "add_device_id"

.field public static final EXTRA_ADD_REDIRECT_URL:Ljava/lang/String; = "add_redirect_url"

.field public static final EXTRA_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final EXTRA_CUSTOM_TOOLBAR:Ljava/lang/String; = "extra_toolbar"

.field public static final EXTRA_DONE_PATTERN:Ljava/lang/String; = "done_pattern"

.field public static final EXTRA_ENABLE_FILE_DOWNLOAD:Ljava/lang/String; = "enablefileDownload"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "headers"

.field public static final EXTRA_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final EXTRA_LAST_PAGE_PATTERN:Ljava/lang/String; = "last_page_pattern"

.field public static final EXTRA_LAYOUT:Ljava/lang/String; = "layout"

.field public static final EXTRA_LESS_PROGRESS_SPINNER:Ljava/lang/String; = "lessProgress"

.field public static final EXTRA_LOAD_TITLE:Ljava/lang/String; = "load_title"

.field public static final EXTRA_MAX_WIDTH:Ljava/lang/String; = "maxWidth"

.field public static final EXTRA_NUM_HISTORY_TO_SKIP:Ljava/lang/String; = "num_history_to_skip"

.field public static final EXTRA_PASSIVE_SSO:Ljava/lang/String; = "passive_sso"

.field public static final EXTRA_REQUIRE_AUTH:Ljava/lang/String; = "requireAuth"

.field public static final EXTRA_RETURN_URL:Ljava/lang/String; = "ru"

.field public static final EXTRA_SCOPE:Ljava/lang/String; = "extra_scope"

.field public static final EXTRA_SHOW_MENU:Ljava/lang/String; = "show_menu"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_TITLE_CONTENT_DESC:Ljava/lang/String; = "title_content_desc"

.field public static final EXTRA_TRACKING_DATA:Ljava/lang/String; = "extra_tracking_data"

.field public static final EXTRA_TRACKING_TAG:Ljava/lang/String; = "trackingPair"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_USE_BACK_STACK:Ljava/lang/String; = "back"

.field public static final EXTRA_USE_OK_BUTTON:Ljava/lang/String; = "ok"

.field public static final EXTRA_USE_SSO:Ljava/lang/String; = "use_sso"

.field public static final EXTRA_USE_WIDE_VIEWPORT:Ljava/lang/String; = "use_wide_viewport"

.field protected static final LAST_LOADER_ID:I = 0x1

.field protected static final LOADER_ID_SSO_TOKEN:I = 0x1

.field public static final REDIRECT_URL:Ljava/lang/String; = "http://www.ebay.com/mobile-redirect-done"

.field protected static final RESULT_PHOTO_FROM_CAMERA:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RESULT_VALUE_EMAIL:Ljava/lang/String; = "email"

.field public static final RESULT_VALUE_EPLUS:Ljava/lang/String; = "eplus"

.field public static final RESULT_VALUE_ERRORID:Ljava/lang/String; = "errorid"

.field public static final RESULT_VALUE_USERID:Ljava/lang/String; = "userid"

.field protected static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field protected addDeviceId:Z

.field protected addRedirectUrl:Z

.field protected animationSlideUp:Landroid/view/animation/Animation;

.field protected backgroundColor:I

.field protected cachedDeviceId:Ljava/lang/String;

.field private cameraImageUri:Landroid/net/Uri;

.field protected donePattern:Ljava/util/regex/Pattern;

.field protected enableFileDownload:Z

.field private extraTracking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private fileDownloadUrl:Ljava/lang/String;

.field protected filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private gDetector:Landroid/view/GestureDetector;

.field protected hasContentSettled:Z

.field protected headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected httpErrorCode:I

.field protected httpErrorDescription:Ljava/lang/String;

.field protected impression:Ljava/lang/String;

.field protected isCustomToolbar:Z

.field protected isDoneFlag:Z

.field protected isHandlingError:Z

.field protected isLoadingLastPage:Z

.field protected lastPagePattern:Ljava/util/regex/Pattern;

.field protected layout:I

.field private loadTitle:Z

.field protected maxWidth:I

.field protected numHistoryToSkip:I

.field protected okButtonView:Landroid/view/View;

.field protected passiveSso:Z

.field protected progressView:Landroid/view/View;

.field protected requireAuth:Z

.field private resultCode:I

.field private resultData:Landroid/content/Intent;

.field protected returnUrl:Ljava/lang/String;

.field protected scope:Ljava/lang/String;

.field private screenShareUtil:Lcom/ebay/mobile/screenshare/ScreenShareUtil;

.field private scrollContainer:Landroid/view/View;

.field protected ssoUrl:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected trackingTag:[Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field protected urlRewriter:Lcom/ebay/mobile/activities/ShowWebViewActivity$UrlRewriter;

.field protected useBackStack:Z

.field protected useLessProgressSpinner:Z

.field protected useOkButton:Z

.field protected useSso:Z

.field protected useWideViewPort:Z

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 234
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "ShowWebViewActivity"

    const-string v2, "Show WebView"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->urlRewriter:Lcom/ebay/mobile/activities/ShowWebViewActivity$UrlRewriter;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->requireAuth:Z

    .line 227
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isHandlingError:Z

    .line 228
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isLoadingLastPage:Z

    .line 229
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    .line 233
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->hasContentSettled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showAddPhotoDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/activities/ShowWebViewActivity;)Lcom/ebay/mobile/screenshare/ScreenShareUtil;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->screenShareUtil:Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/activities/ShowWebViewActivity;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->loadTitle:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/activities/ShowWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setCachedDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method private addRedirectUrlToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo v0, "returnto"

    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const-string v0, "\\bru=[^&]+&?"

    const-string v1, ""

    .line 400
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v0, "ru"

    const-string v1, "http://www.ebay.com/mobile-redirect-done"

    .line 408
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 409
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private cancelFileUpload()V
    .locals 2

    .line 1482
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1485
    :cond_0
    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method private downloadFile()V
    .locals 4

    .line 1018
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->fileDownloadUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1021
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->fileDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    new-instance v1, Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->fileDownloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v2, "cookie"

    .line 1024
    invoke-virtual {v1, v2, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1025
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 v0, 0x1

    .line 1026
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1027
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v3, "ValetLabel.pdf"

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string v2, "download"

    .line 1028
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 1029
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 1031
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120fee

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private downloadFileOrPromptForPermission()V
    .locals 4

    .line 1008
    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_WRITE_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_WRITE_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x2

    const v2, 0x7f12090a

    const v3, 0x7f120910

    invoke-static {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;III)Z

    goto :goto_0

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->downloadFile()V

    :goto_0
    return-void
.end method

.method public static getPatternExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 0
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 328
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 332
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$createUI$0(Lcom/ebay/mobile/activities/ShowWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 962
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string/jumbo p3, "printable"

    .line 964
    invoke-virtual {p2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "true"

    .line 965
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 968
    :cond_1
    iput-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->fileDownloadUrl:Ljava/lang/String;

    .line 969
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->downloadFileOrPromptForPermission()V

    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$1(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$2(Lcom/ebay/mobile/activities/ShowWebViewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1313
    iput-boolean p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isHandlingError:Z

    .line 1314
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onRefresh()V

    .line 1315
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$3(Lcom/ebay/mobile/activities/ShowWebViewActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1318
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onDone()V

    return-void
.end method

.method private launchCamera()V
    .locals 4

    .line 1522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1527
    :try_start_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.ebay.mobile.fileProvider"

    .line 1528
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->createImageFile()Ljava/io/File;

    move-result-object v3

    .line 1527
    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cameraImageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1532
    sget-object v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v3, "Exception creating photos temp file"

    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1535
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cameraImageUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "output"

    .line 1537
    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cameraImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 1538
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1542
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120916

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void
.end method

.method private launchCameraOrPromptForPermission()V
    .locals 4

    .line 1513
    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_PHOTO:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1514
    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_PHOTO:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f120908

    const v3, 0x7f12090f

    invoke-static {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;III)Z

    goto :goto_0

    .line 1517
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchCamera()V

    :goto_0
    return-void
.end method

.method private launchGallery()V
    .locals 3

    .line 1500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 1501
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1502
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const v1, 0x7f120937

    .line 1504
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12091b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private launchGalleryOrPromptForPermission()V
    .locals 4

    .line 1490
    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_GALLERY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    sget-object v0, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_GALLERY:[Ljava/lang/String;

    const/4 v1, 0x4

    const v2, 0x7f12090a

    const v3, 0x7f120910

    invoke-static {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;III)Z

    goto :goto_0

    .line 1495
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchGallery()V

    :goto_0
    return-void
.end method

.method private setCachedDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1547
    iput-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cachedDeviceId:Ljava/lang/String;

    return-void
.end method

.method protected static show(Landroid/view/View;Z)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 650
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showAddPhotoDialog()V
    .locals 4

    const/4 v0, 0x2

    .line 1421
    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f120919

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f12091a

    .line 1422
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1423
    new-instance v1, Lcom/ebay/app/AlertDialogFragment$Builder;

    invoke-direct {v1}, Lcom/ebay/app/AlertDialogFragment$Builder;-><init>()V

    const v3, 0x7f120d2d

    .line 1424
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    .line 1425
    invoke-virtual {v1, v0}, Lcom/ebay/app/AlertDialogFragment$Builder;->setItems([Ljava/lang/String;)Lcom/ebay/app/AlertDialogFragment$Builder;

    .line 1426
    invoke-virtual {v1, v2}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "add_photo"

    invoke-virtual {v0, v1, v2}, Lcom/ebay/app/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 278
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 311
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TITLE"

    .line 312
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "impression"

    .line 314
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo p1, "use_sso"

    const/4 p2, 0x1

    .line 317
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    if-ltz p5, :cond_2

    .line 319
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 320
    const-class p1, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addDeviceIdToUrl()V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "UUID"

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cachedDeviceId:Ljava/lang/String;

    .line 585
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    return-void
.end method

.method protected addToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;)V
    .locals 0

    return-void
.end method

.method protected createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".jpg"

    .line 1047
    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public createUI()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 669
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->loadTitle:Z

    if-nez v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 673
    iget v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 675
    iget v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->maxWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const v1, 0x7f0a1474

    .line 677
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 678
    instance-of v1, v0, Lcom/ebay/android/widget/MaxSizeHelper$MaxSizeWidget;

    if-eqz v1, :cond_2

    .line 679
    check-cast v0, Lcom/ebay/android/widget/MaxSizeHelper$MaxSizeWidget;

    iget v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->maxWidth:I

    invoke-interface {v0, v1}, Lcom/ebay/android/widget/MaxSizeHelper$MaxSizeWidget;->setMaxWidth(I)V

    :cond_2
    const v0, 0x7f0a0cb9

    .line 682
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->progressView:Landroid/view/View;

    const v0, 0x7f0a1473

    .line 683
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 684
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useOkButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const v0, 0x7f0a0254

    .line 686
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 688
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useOkButton:Z

    goto :goto_1

    .line 691
    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0238

    .line 692
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->okButtonView:Landroid/view/View;

    const v0, 0x7f01002b

    .line 693
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->animationSlideUp:Landroid/view/animation/Animation;

    :cond_4
    :goto_1
    const-string v0, "WebViewSettings"

    .line 698
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "double_tap_toast_count"

    const/4 v3, 0x1

    .line 699
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_5

    .line 700
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "double_tap_toast_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 702
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 703
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 704
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 705
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 706
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 707
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 708
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 709
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 710
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 711
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 712
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 713
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 714
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useWideViewPort:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 716
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 717
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 740
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 955
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->enableFileDownload:Z

    if-eqz v0, :cond_6

    .line 957
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$eqa0l8WgQOo8rpoRAsarW_RLA2A;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$eqa0l8WgQOo8rpoRAsarW_RLA2A;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_6
    const v0, 0x7f0a0e45

    .line 973
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scrollContainer:Landroid/view/View;

    .line 974
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scrollContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 976
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scrollContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 977
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->gDetector:Landroid/view/GestureDetector;

    :cond_7
    return-void
.end method

.method protected getDeviceIdThenRefresh()V
    .locals 2

    .line 591
    invoke-static {}, Lcom/ebay/nautilus/kernel/identity/EbayIdentity;->getDeviceIdStringIfAlreadyInitialized()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cachedDeviceId:Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cachedDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addDeviceIdToUrl()V

    .line 596
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onRefresh()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showProgress(Z)V

    .line 601
    new-instance v0, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method protected getResultCode(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "success"

    .line 1194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    const-string v0, "error"

    .line 1196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "cancel"

    .line 1198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1201
    :cond_2
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->impression:Ljava/lang/String;

    return-object v0
.end method

.method protected final getWebViewResultCode()I
    .locals 1

    .line 1243
    iget v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->resultCode:I

    return v0
.end method

.method protected final getWebViewResultData()Landroid/content/Intent;
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->resultData:Landroid/content/Intent;

    return-object v0
.end method

.method protected isSignIn(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "/ws/eBayISAPI.dll"

    .line 991
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "signin"

    .line 995
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isUrlLastPage(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->lastPagePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->lastPagePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isUrlPastLastPage(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "http://www.ebay.com/mobile-redirect-done"

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->donePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->donePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 440
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ebay-mobile-status"

    .line 442
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected launchSso(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/app/Authentication;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 617
    new-instance v1, Lcom/ebay/common/SsoScopeLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/ebay/common/SsoScopeLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return p2

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 504
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onPostCreate()V

    goto/16 :goto_0

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->finish()V

    goto/16 :goto_0

    :pswitch_1
    if-ne p2, v3, :cond_2

    .line 541
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_1

    .line 542
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "Sign in successful, launching SSO"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scope:Ljava/lang/String;

    iget-object p3, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->returnUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchSso(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 545
    :cond_2
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_6

    .line 546
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "Sign in failed, doing nothing"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6

    if-ne p2, v3, :cond_4

    .line 519
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cameraImageUri:Landroid/net/Uri;

    if-eqz p3, :cond_3

    .line 520
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 521
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 523
    :cond_3
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    new-array p3, v2, [Landroid/net/Uri;

    aput-object p1, p3, v1

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 526
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 530
    :pswitch_3
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6

    if-ne p2, v3, :cond_5

    .line 533
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    new-array p2, v2, [Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :cond_5
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .line 1109
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 1111
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed() isDoneFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1112
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed() useBackStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useBackStack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed() webview.canGoBack(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1114
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed() numHistoryToSkip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->numHistoryToSkip:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1115
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed() currentIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1118
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useBackStack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 1119
    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    iget v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->numHistoryToSkip:I

    if-le v0, v1, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onBackPressed()V

    goto :goto_0

    .line 1128
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onDone()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1293
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    :goto_0
    const v0, 0x7f0a0254

    if-ne v0, p1, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onDone()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1075
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1076
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scrollContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07013b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 1079
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scrollContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1081
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$wSN_lreL1ZO1kWVv4KtSfoYAUWA;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$wSN_lreL1ZO1kWVv4KtSfoYAUWA;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 451
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 453
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->screenShareUtil:Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    .line 456
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->requireAuth:Z

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "requireAuth"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->requireAuth:Z

    .line 457
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 458
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->requireAuth:Z

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x4

    .line 461
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "ru"

    .line 466
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->returnUrl:Ljava/lang/String;

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onPostCreate()V

    .line 470
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isCustomToolbar:Z

    if-eqz p1, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setupCustomToolbar()V

    goto :goto_0

    :cond_3
    const/16 p1, 0x1001

    .line 473
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setToolbarFlags(I)V

    :goto_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const v0, 0x7f120224

    if-eq p1, v0, :cond_0

    const v0, 0x7f120226

    if-eq p1, v0, :cond_0

    .line 1323
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    goto :goto_0

    .line 1307
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1308
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 1309
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120209

    .line 1310
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120b7a

    new-instance v2, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$TZnb3hXUHONf_2qdm85EqX6rsp4;

    invoke-direct {v2, p0}, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$TZnb3hXUHONf_2qdm85EqX6rsp4;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    .line 1311
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1202e5

    new-instance v2, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$eeAdDrJN2vx31P9YTlix8GXKqXY;

    invoke-direct {v2, p0}, Lcom/ebay/mobile/activities/-$$Lambda$ShowWebViewActivity$eeAdDrJN2vx31P9YTlix8GXKqXY;-><init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    .line 1317
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1320
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->screenShareUtil:Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    .line 662
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onDestroy()V

    return-void
.end method

.method public onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1437
    :pswitch_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchGalleryOrPromptForPermission()V

    goto :goto_0

    .line 1440
    :pswitch_1
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchCameraOrPromptForPermission()V

    goto :goto_0

    .line 1443
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cancelFileUpload()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDone()V
    .locals 1

    const/4 v0, 0x1

    .line 1138
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onDone(Z)V

    return-void
.end method

.method protected onDone(Z)V
    .locals 6

    .line 1150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 1153
    :try_start_0
    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "ebay-mobile-status"

    .line 1154
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1155
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getResultCode(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ebay-mobile-errorid"

    .line 1157
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1158
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "errorid"

    .line 1159
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v4, "ebay-mobile-userid"

    .line 1161
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1162
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "userid"

    .line 1163
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v4, "ebay-mobile-email"

    .line 1165
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "email"

    .line 1167
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v4, "eplus"

    .line 1169
    invoke-virtual {v2, v4, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "eplus"

    .line 1170
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1172
    invoke-virtual {p0, v2, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->readAdditionalQueryParameters(Landroid/net/Uri;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 1179
    :catch_0
    sget-object v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v2, v2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v2, :cond_3

    .line 1181
    sget-object v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDone() return code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1182
    sget-object v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDone() final url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1183
    sget-object v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDone() finishing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 1186
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setWebViewResult(ILandroid/content/Intent;)V

    if-eqz p1, :cond_4

    .line 1188
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->finish()V

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1088
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isCustomToolbar:Z

    if-eqz v0, :cond_0

    .line 1089
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1091
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    .line 1097
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1094
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onDone()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onPostCreate()V
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->readIntent()V

    .line 486
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addRedirectUrl:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addRedirectUrlToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    .line 489
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->layout:I

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setContentView(I)V

    .line 490
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->createUI()V

    .line 492
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addDeviceId:Z

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getDeviceIdThenRefresh()V

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onRefresh()V

    :goto_0
    return-void
.end method

.method protected onRefresh()V
    .locals 4

    .line 626
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    .line 627
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showProgress(Z)V

    .line 629
    iget-boolean v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useSso:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ebay/mobile/dcs/DcsBoolean;->SSO:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scope:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchSso(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 634
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const v0, 0x7f0a1473

    .line 635
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
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

    .line 1452
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1454
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/mobile/util/PermissionUtil;->verifyPermissionGranted(Landroid/app/Activity;I[Ljava/lang/String;[I)Z

    move-result p2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_0

    .line 1466
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchCamera()V

    goto :goto_0

    .line 1468
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cancelFileUpload()V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    .line 1473
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchGallery()V

    goto :goto_0

    .line 1475
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->cancelFileUpload()V

    goto :goto_0

    .line 1460
    :cond_2
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->downloadFile()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    .line 554
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 556
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 557
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 558
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 559
    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->trackingTag:[Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->trackingTag:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v3, :cond_0

    .line 561
    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->trackingTag:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->trackingTag:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->extraTracking:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->extraTracking:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperties(Ljava/util/List;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 565
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;)V

    .line 567
    invoke-static {v1, v0, v3}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->addXpTrackingToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Z)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 569
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 479
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ru"

    .line 480
    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->returnUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 2

    .line 1339
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    .line 1341
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1347
    :cond_1
    check-cast p2, Lcom/ebay/common/SsoScopeLoader;

    .line 1349
    invoke-virtual {p2}, Lcom/ebay/common/SsoScopeLoader;->isError()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1351
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1354
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSO failed. Is the URL properly white listed? Details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/ebay/common/SsoScopeLoader;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/ebay/common/SsoScopeLoader;->errorDescription:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;)V

    .line 1356
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->headers:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1360
    :cond_2
    new-instance p1, Lcom/ebay/common/view/EbayErrorHandler;

    invoke-direct {p1, p0}, Lcom/ebay/common/view/EbayErrorHandler;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x0

    .line 1361
    invoke-virtual {p1, v0, p2}, Lcom/ebay/common/view/EbayErrorHandler;->handleEbayError(Ljava/util/List;Lcom/ebay/nautilus/shell/content/FwNetLoader;)Z

    .line 1362
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->finish()V

    goto :goto_0

    .line 1367
    :cond_3
    invoke-virtual {p2}, Lcom/ebay/common/SsoScopeLoader;->getSsoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->ssoUrl:Ljava/lang/String;

    .line 1368
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->ssoUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->headers:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1377
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->gDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected readAdditionalQueryParameters(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected readIntent()V
    .locals 4

    .line 347
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    const-string v1, "android.intent.extra.TITLE"

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->title:Ljava/lang/String;

    const-string/jumbo v1, "title_content_desc"

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setTitleContentDescription(Ljava/lang/String;)V

    :cond_0
    const-string v1, "impression"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->impression:Ljava/lang/String;

    const-string/jumbo v1, "trackingPair"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->trackingTag:[Ljava/lang/String;

    const-string v1, "layout"

    const v2, 0x7f0d04fb

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->layout:I

    const-string v1, "backgroundColor"

    const/4 v2, -0x1

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->backgroundColor:I

    const-string v1, "maxWidth"

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->maxWidth:I

    const-string v1, "ok"

    const/4 v2, 0x0

    .line 359
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useOkButton:Z

    const-string v1, "back"

    .line 360
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useBackStack:Z

    const-string v1, "last_page_pattern"

    .line 361
    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getPatternExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->lastPagePattern:Ljava/util/regex/Pattern;

    const-string v1, "done_pattern"

    .line 362
    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getPatternExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->donePattern:Ljava/util/regex/Pattern;

    const-string/jumbo v1, "use_wide_viewport"

    const/4 v3, 0x1

    .line 363
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useWideViewPort:Z

    const-string/jumbo v1, "use_sso"

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useSso:Z

    const-string/jumbo v1, "passive_sso"

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->passiveSso:Z

    const-string v1, "add_device_id"

    .line 366
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addDeviceId:Z

    const-string v1, "add_redirect_url"

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addRedirectUrl:Z

    const-string v1, "num_history_to_skip"

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->numHistoryToSkip:I

    const-string v1, "extra_scope"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scope:Ljava/lang/String;

    const-string v1, "lessProgress"

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useLessProgressSpinner:Z

    const-string v1, "enablefileDownload"

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->enableFileDownload:Z

    const-string v1, "extra_toolbar"

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isCustomToolbar:Z

    const-string v1, "load_title"

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->loadTitle:Z

    .line 374
    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scope:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "//EBAYSSO/EBAYCLASSIC"

    .line 375
    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scope:Ljava/lang/String;

    :cond_1
    const-string v1, "headers"

    .line 376
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->headers:Ljava/util/HashMap;

    const-string v1, "extra_tracking_data"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->extraTracking:Ljava/util/ArrayList;

    return-void
.end method

.method protected rewriteUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->urlRewriter:Lcom/ebay/mobile/activities/ShowWebViewActivity$UrlRewriter;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->urlRewriter:Lcom/ebay/mobile/activities/ShowWebViewActivity$UrlRewriter;

    invoke-interface {v0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity$UrlRewriter;->rewriteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method protected final setWebViewResult(ILandroid/content/Intent;)V
    .locals 0

    .line 1231
    iput p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->resultCode:I

    .line 1232
    iput-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->resultData:Landroid/content/Intent;

    .line 1233
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected setupCustomToolbar()V
    .locals 0

    return-void
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected showProgress(Z)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->progressView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->show(Landroid/view/View;Z)V

    return-void
.end method
