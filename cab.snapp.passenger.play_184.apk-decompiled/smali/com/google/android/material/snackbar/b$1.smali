.class final Lcom/google/android/material/snackbar/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/b;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/android/material/snackbar/b$1;->a:Lcom/google/android/material/snackbar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/b$1;->a:Lcom/google/android/material/snackbar/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/snackbar/b$b;

    .line 1237
    iget-object v1, v0, Lcom/google/android/material/snackbar/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1238
    :try_start_0
    iget-object v2, v0, Lcom/google/android/material/snackbar/b;->b:Lcom/google/android/material/snackbar/b$b;

    if-eq v2, p1, :cond_1

    iget-object v2, v0, Lcom/google/android/material/snackbar/b;->c:Lcom/google/android/material/snackbar/b$b;

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v2, 0x2

    .line 1239
    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;I)Z

    .line 1241
    :cond_2
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
