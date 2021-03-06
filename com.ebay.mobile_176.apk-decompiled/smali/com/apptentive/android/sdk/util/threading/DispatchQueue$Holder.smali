.class Lcom/apptentive/android/sdk/util/threading/DispatchQueue$Holder;
.super Ljava/lang/Object;
.source "DispatchQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final BACKGROUND_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

.field private static final MAIN_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue$Holder;->createMainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueue$Holder;->MAIN_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    .line 148
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue$Holder;->createBackgroundQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueue$Holder;->BACKGROUND_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    return-void
.end method

.method static synthetic access$000()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
    .locals 1

    .line 146
    sget-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueue$Holder;->MAIN_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$100()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
    .locals 1

    .line 146
    sget-object v0, Lcom/apptentive/android/sdk/util/threading/DispatchQueue$Holder;->BACKGROUND_QUEUE:Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    return-object v0
.end method

.method private static createBackgroundQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
    .locals 2

    .line 161
    new-instance v0, Lcom/apptentive/android/sdk/util/threading/ConcurrentDispatchQueue;

    const-string v1, "Apptentive Background Queue"

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/util/threading/ConcurrentDispatchQueue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createMainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;
    .locals 3

    .line 154
    :try_start_0
    new-instance v0, Lcom/apptentive/android/sdk/util/threading/SerialDispatchQueue;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "Main"

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/util/threading/SerialDispatchQueue;-><init>(Landroid/os/Looper;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
