.class public Lcom/webengage/sdk/android/utils/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/webengage/sdk/android/utils/j;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/webengage/sdk/android/utils/j;

    invoke-direct {v0}, Lcom/webengage/sdk/android/utils/j;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/utils/j;->a:Lcom/webengage/sdk/android/utils/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/j;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/webengage/sdk/android/utils/j;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/utils/j;->a:Lcom/webengage/sdk/android/utils/j;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/j;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
