.class Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RtmHtmlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/RtmHtmlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RtmWebViewClient"
.end annotation


# instance fields
.field private hasPageEverFinished:Z

.field final synthetic this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->hasPageEverFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;Lcom/ebay/mobile/activities/RtmHtmlActivity$1;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;-><init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 367
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    iget-boolean v1, v1, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isDoneFlag:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-virtual {v1, p2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isUrlLastPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isDoneFlag:Z

    .line 373
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$200(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$300(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 381
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$400(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 382
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p1, v2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$302(Lcom/ebay/mobile/activities/RtmHtmlActivity;Z)Z

    .line 385
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$500(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 387
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 389
    iput-boolean v3, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->hasPageEverFinished:Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 355
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 356
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Page started: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p1}, Lcom/ebay/mobile/util/Util;->resetAppStatus(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "RtmHtmlActivity"

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": errorCode = <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: description = <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: failingUrl = <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ">"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_0

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/RtmHtmlActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const/4 p2, 0x0

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 473
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->finish()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 395
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 396
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p1, p2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$600(Lcom/ebay/mobile/activities/RtmHtmlActivity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 402
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_1

    .line 403
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p2

    const-string v1, "Page shouldOverrideUrlLoading: Launching Activity"

    invoke-virtual {p2, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 404
    :cond_1
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-virtual {p2, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->startActivity(Landroid/content/Intent;)V

    .line 410
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->hasPageEverFinished:Z

    if-nez p1, :cond_2

    .line 411
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->finish()V

    :cond_2
    return v0

    .line 419
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 423
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    const-string v2, "/ws/eBayISAPI.dll"

    .line 424
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    const-string v2, "SignIn"

    .line 425
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 427
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    const-string v2, "ru"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$702(Lcom/ebay/mobile/activities/RtmHtmlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {p1, p2}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$802(Lcom/ebay/mobile/activities/RtmHtmlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 430
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_4

    .line 431
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sign-in URL detected with return path:\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {v1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$700(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 433
    :cond_4
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 436
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_5

    .line 437
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p2

    const-string v1, "User already logged in, launching SSO"

    invoke-virtual {p2, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 439
    :cond_5
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-static {v1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$700(Lcom/ebay/mobile/activities/RtmHtmlActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$900(Lcom/ebay/mobile/activities/RtmHtmlActivity;Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;)Z

    goto :goto_0

    .line 443
    :cond_6
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_7

    .line 444
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    const-string p2, "User not logged in, showing sign in"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_7
    const/4 p1, 0x0

    .line 446
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    .line 447
    invoke-static {p1, p2}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 448
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    invoke-virtual {p2, p1, v0}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v0

    .line 455
    :cond_8
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_9

    .line 456
    invoke-static {}, Lcom/ebay/mobile/activities/RtmHtmlActivity;->access$100()Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    move-result-object p1

    const-string p2, "Page shouldOverrideUrlLoading: Staying in this WebView"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
