.class Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;
.super Landroid/os/AsyncTask;
.source "ShowWebViewActivity.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ShowWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetDeviceIdStringTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/activities/ShowWebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V
    .locals 1
    .param p1    # Lcom/ebay/mobile/activities/ShowWebViewActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1572
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1573
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1566
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 1579
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 1580
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1583
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/nautilus/kernel/identity/EbayIdentity;->getDeviceIdString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1566
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$GetDeviceIdStringTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    if-eqz v0, :cond_1

    .line 1590
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1593
    :cond_0
    invoke-static {v0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->access$300(Lcom/ebay/mobile/activities/ShowWebViewActivity;Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->addDeviceIdToUrl()V

    .line 1595
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onRefresh()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
