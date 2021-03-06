.class public Lcom/apptentive/android/sdk/debug/AsyncLogWriter;
.super Ljava/lang/Object;
.source "AsyncLogWriter.java"

# interfaces
.implements Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/debug/AsyncLogWriter$LogFileWriteTask;
    }
.end annotation


# instance fields
.field private final destDir:Ljava/io/File;

.field private final logHistorySize:I

.field private final mutex:Ljava/lang/Object;

.field private final pendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final writeQueue:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

.field private final writeQueueTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 2

    const-string v0, "Apptentive Log Queue"

    .line 64
    sget-object v1, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Serial:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->createBackgroundQueue(Ljava/lang/String;Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;)Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;-><init>(Ljava/io/File;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/apptentive/android/sdk/util/threading/DispatchQueue;I)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->mutex:Ljava/lang/Object;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->destDir:Ljava/io/File;

    .line 81
    iput p3, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->logHistorySize:I

    .line 82
    iput-object p2, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->writeQueue:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    .line 84
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0x100

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->pendingMessages:Ljava/util/List;

    .line 86
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->createLogFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->UTIL:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    new-instance p1, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$LogFileWriteTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, v0}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$LogFileWriteTask;-><init>(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;Ljava/io/File;Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->writeQueueTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    .line 91
    invoke-direct {p0}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->createInitializationTask()Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal log history size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Write queue is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Dest dir is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)Ljava/io/File;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->destDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->logHistorySize:I

    return p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->mutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->pendingMessages:Ljava/util/List;

    return-object p0
.end method

.method private createInitializationTask()Lcom/apptentive/android/sdk/util/threading/DispatchTask;
    .locals 1

    .line 101
    new-instance v0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;-><init>(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)V

    return-object v0
.end method


# virtual methods
.method protected createLogFilename()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "apptentive-"

    const-string v1, ".log"

    .line 97
    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/Util;->currentDateAsFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLogMessage(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/apptentive/android/sdk/ApptentiveLog$Level;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    iget-object v0, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->pendingMessages:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->getShortName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->writeQueue:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    iget-object p2, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->writeQueueTask:Lcom/apptentive/android/sdk/util/threading/DispatchTask;

    invoke-virtual {p1, p2}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsyncOnce(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)Z

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
