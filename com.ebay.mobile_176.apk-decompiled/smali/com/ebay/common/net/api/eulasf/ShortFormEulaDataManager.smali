.class public Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;
.super Lcom/ebay/nautilus/domain/content/DataManager;
.source "ShortFormEulaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;,
        Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;,
        Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;,
        Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager<",
        "Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;",
        ">;"
    }
.end annotation


# instance fields
.field private final content:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;

.field private loadTask:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

.field public final parameters:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;)V
    .locals 1

    .line 24
    const-class v0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;

    invoke-direct {p0, p1, v0}, Lcom/ebay/nautilus/domain/content/DataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->loadTask:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

    .line 25
    iput-object p2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->parameters:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    .line 26
    new-instance p2, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;

    invoke-direct {p2, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;-><init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$1;)V

    iput-object p2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->content:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;

    return-void
.end method


# virtual methods
.method public getParams()Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->parameters:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    return-object v0
.end method

.method public bridge synthetic getParams()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->getParams()Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    move-result-object v0

    return-object v0
.end method

.method handleLoadDataResult(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->content:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->loadTask:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->loadTask:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->content:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;

    iput-object p2, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;->data:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->dispatcher:Ljava/lang/Object;

    check-cast p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;

    invoke-interface {p1, p0, p2}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;->getEulaContent(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;Ljava/lang/String;)V

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected load()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortFormEula"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->parameters:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    invoke-virtual {v1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ebay/common/net/ResponseCache;->getResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 39
    :cond_0
    new-instance v1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;

    iget-object v2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->parameters:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    invoke-direct {v1, v2}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;-><init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;

    .line 43
    iget-object v2, v1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;->eulaHtml:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;->eulaHtml:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-wide v4, 0x134fd9000L

    invoke-static {v2, v0, v3, v4, v5}, Lcom/ebay/common/net/ResponseCache;->setResponse(Landroid/content/Context;Ljava/lang/String;[BJ)V

    .line 47
    :cond_1
    iget-object v0, v1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;->eulaHtml:Ljava/lang/String;

    return-object v0
.end method

.method public loadData(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;)V
    .locals 4

    .line 72
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 75
    iget-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->content:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->loadTask:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

    if-eqz v1, :cond_0

    .line 78
    monitor-exit v0

    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->content:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;

    iget-object v1, v1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$InternalContent;->data:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 84
    new-instance v2, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;-><init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$1;)V

    iput-object v2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->loadTask:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

    .line 85
    iget-object v2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->loadTask:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-static {v2, v3}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->executeOnThreadPool(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 90
    invoke-interface {p1, p0, v1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;->getEulaContent(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->loadData(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;)V

    return-void
.end method
