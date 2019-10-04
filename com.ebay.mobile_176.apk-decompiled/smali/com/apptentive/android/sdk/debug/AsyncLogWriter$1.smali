.class Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "AsyncLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->createInitializationTask()Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/debug/AsyncLogWriter;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;->this$0:Lcom/apptentive/android/sdk/debug/AsyncLogWriter;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;->this$0:Lcom/apptentive/android/sdk/debug/AsyncLogWriter;

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->access$100(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1$1;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1$1;-><init>(Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    new-instance v1, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1$2;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1$2;-><init>(Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 133
    iget-object v1, p0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter$1;->this$0:Lcom/apptentive/android/sdk/debug/AsyncLogWriter;

    invoke-static {v1}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;->access$200(Lcom/apptentive/android/sdk/debug/AsyncLogWriter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 134
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method
