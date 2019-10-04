.class Lcom/apptentive/android/sdk/network/HttpRequestManager$Holder;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/network/HttpRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/apptentive/android/sdk/network/HttpRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 182
    new-instance v0, Lcom/apptentive/android/sdk/network/HttpRequestManager;

    const-string v1, "Apptentive Network Queue"

    sget-object v2, Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;->Concurrent:Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->createBackgroundQueue(Ljava/lang/String;Lcom/apptentive/android/sdk/util/threading/DispatchQueueType;)Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/network/HttpRequestManager;-><init>(Lcom/apptentive/android/sdk/util/threading/DispatchQueue;)V

    sput-object v0, Lcom/apptentive/android/sdk/network/HttpRequestManager$Holder;->INSTANCE:Lcom/apptentive/android/sdk/network/HttpRequestManager;

    return-void
.end method

.method static synthetic access$100()Lcom/apptentive/android/sdk/network/HttpRequestManager;
    .locals 1

    .line 181
    sget-object v0, Lcom/apptentive/android/sdk/network/HttpRequestManager$Holder;->INSTANCE:Lcom/apptentive/android/sdk/network/HttpRequestManager;

    return-object v0
.end method
