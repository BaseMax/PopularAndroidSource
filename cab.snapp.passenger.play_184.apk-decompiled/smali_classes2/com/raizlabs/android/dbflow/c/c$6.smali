.class final Lcom/raizlabs/android/dbflow/c/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/c/c;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/c/c;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$6;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$6;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/c/c;->e(Lcom/raizlabs/android/dbflow/c/c;)Z

    .line 654
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$6;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/c;->refresh()V

    return-void

    :catchall_0
    move-exception v0

    .line 654
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
