.class final Lcom/a/a/b/b;
.super Lcom/a/a/b/a;
.source "SourceFile"


# instance fields
.field final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lio/fabric/sdk/android/a$b;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/a/a/b/a;-><init>()V

    .line 18
    new-instance v0, Lcom/a/a/b/b$1;

    invoke-direct {v0, p0}, Lcom/a/a/b/b$1;-><init>(Lcom/a/a/b/b;)V

    iput-object v0, p0, Lcom/a/a/b/b;->d:Lio/fabric/sdk/android/a$b;

    .line 38
    iput-object p2, p0, Lcom/a/a/b/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 39
    iget-object p2, p0, Lcom/a/a/b/b;->d:Lio/fabric/sdk/android/a$b;

    invoke-virtual {p1, p2}, Lio/fabric/sdk/android/a;->registerCallbacks(Lio/fabric/sdk/android/a$b;)Z

    return-void
.end method


# virtual methods
.method public final isActivityLifecycleTriggered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
