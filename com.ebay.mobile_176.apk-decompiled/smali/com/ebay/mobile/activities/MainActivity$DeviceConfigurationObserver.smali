.class public Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;
.super Landroid/database/DataSetObserver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfigurationObserver"
.end annotation


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/activities/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/MainActivity;)V
    .locals 1

    .line 869
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 870
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 876
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 878
    iget-object v0, p0, Lcom/ebay/mobile/activities/MainActivity$DeviceConfigurationObserver;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/activities/MainActivity;

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/MainActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/MainActivity;->updateSearchView()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
