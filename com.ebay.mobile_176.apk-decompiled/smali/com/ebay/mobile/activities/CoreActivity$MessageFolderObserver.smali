.class public final Lcom/ebay/mobile/activities/CoreActivity$MessageFolderObserver;
.super Ljava/lang/Object;
.source "CoreActivity.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageFolderObserver"
.end annotation


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/activities/CoreActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;)V
    .locals 1

    .line 2731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2732
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/CoreActivity$MessageFolderObserver;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onMessageFoldersDataChanged(Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/messages/MessageFolder;",
            ">;>;)V"
        }
    .end annotation

    .line 2747
    iget-object p1, p0, Lcom/ebay/mobile/activities/CoreActivity$MessageFolderObserver;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/CoreActivity;

    if-eqz p1, :cond_3

    .line 2748
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2751
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2754
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 2757
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/messages/MessageFolder;

    .line 2759
    iget v1, v1, Lcom/ebay/nautilus/domain/data/messages/MessageFolder;->newMessageCount:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 2762
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CoreActivity;->getNavigationView()Lcom/google/android/material/navigation/NavigationView;

    move-result-object p2

    const v1, 0x7f0a0a57

    invoke-virtual {p1, v0, p2, v1}, Lcom/ebay/mobile/activities/CoreActivity;->updateMenuBadge(ILcom/google/android/material/navigation/NavigationView;I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onMessageFoldersListChanged(Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/messages/MessageFolder;",
            ">;>;)V"
        }
    .end annotation

    .line 2740
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity$MessageFolderObserver;->onMessageFoldersDataChanged(Lcom/ebay/nautilus/domain/content/dm/messages/MessageFoldersDataManager;Lcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method
