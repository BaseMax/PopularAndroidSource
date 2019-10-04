.class public Lcom/ebay/mobile/camera/BaseCameraViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "BaseCameraViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseCameraViewModel"


# instance fields
.field private backgroundHandler:Landroid/os/Handler;

.field fatalErrorShown:Z

.field private final imagePathGenerator:Lcom/ebay/mobile/camera/ImagePathGenerator;

.field private final imageUri:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ebay/mobile/camera/Event<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final storageError:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ebay/mobile/camera/Event<",
            "Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;",
            ">;>;"
        }
    .end annotation
.end field

.field private final storageIssueAssessor:Lcom/ebay/mobile/camera/StorageIssueAssessor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 24
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->imageUri:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->storageError:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance p1, Lcom/ebay/mobile/camera/ImagePathGenerator;

    invoke-direct {p1}, Lcom/ebay/mobile/camera/ImagePathGenerator;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->imagePathGenerator:Lcom/ebay/mobile/camera/ImagePathGenerator;

    .line 27
    new-instance p1, Lcom/ebay/mobile/camera/StorageIssueAssessor;

    invoke-direct {p1}, Lcom/ebay/mobile/camera/StorageIssueAssessor;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->storageIssueAssessor:Lcom/ebay/mobile/camera/StorageIssueAssessor;

    return-void
.end method

.method private getBackgroundHandler()Landroid/os/Handler;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->backgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->backgroundHandler:Landroid/os/Handler;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->backgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic lambda$processBitmap$0(Lcom/ebay/mobile/camera/BaseCameraViewModel;Landroid/net/Uri;[B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->writePictureToFile(Ljava/lang/String;[B)V

    .line 57
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->imageUri:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/ebay/mobile/camera/Event;

    invoke-direct {v0, p1}, Lcom/ebay/mobile/camera/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->imagePathGenerator:Lcom/ebay/mobile/camera/ImagePathGenerator;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/camera/ImagePathGenerator;->generateFilePath(Ljava/util/Date;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->writePictureToFile(Ljava/lang/String;[B)V

    .line 63
    invoke-direct {p0, p1}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->scanMediaLibraryForPhoto(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->storageIssueAssessor:Lcom/ebay/mobile/camera/StorageIssueAssessor;

    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->imagePathGenerator:Lcom/ebay/mobile/camera/ImagePathGenerator;

    invoke-virtual {p2}, Lcom/ebay/mobile/camera/ImagePathGenerator;->getDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/camera/StorageIssueAssessor;->assessCause(Ljava/io/File;)Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->storageError:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/ebay/mobile/camera/Event;

    invoke-direct {v0, p1}, Lcom/ebay/mobile/camera/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private scanMediaLibraryForPhoto(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Lcom/ebay/mobile/camera/-$$Lambda$58I_Bl9WgnM3tmOavJr7u_JW30o;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/camera/-$$Lambda$58I_Bl9WgnM3tmOavJr7u_JW30o;-><init>(Lcom/ebay/mobile/camera/BaseCameraViewModel;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private writePictureToFile(Ljava/lang/String;[B)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 100
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_0

    .line 101
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 104
    sget-object p2, Lcom/ebay/mobile/camera/BaseCameraViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Failed to write image data to file"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    throw p1
.end method


# virtual methods
.method protected onCleared()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->backgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->backgroundHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method onMediaScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 120
    iget-object p1, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->imageUri:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/ebay/mobile/camera/Event;

    invoke-direct {v0, p2}, Lcom/ebay/mobile/camera/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method processBitmap([BLandroid/net/Uri;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;

    invoke-direct {v1, p0, p2, p1}, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;-><init>(Lcom/ebay/mobile/camera/BaseCameraViewModel;Landroid/net/Uri;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method processedBitmapUri()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ebay/mobile/camera/Event<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->imageUri:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method storageError()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ebay/mobile/camera/Event<",
            "Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/ebay/mobile/camera/BaseCameraViewModel;->storageError:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
