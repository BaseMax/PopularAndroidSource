.class final Lcom/google/android/gms/b/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/google/android/gms/b/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/b/a$a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private final varargs a()Ljava/lang/Integer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/a;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/c;->errorCode:I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/d;->getConnectionStatusCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/b;->a()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/b/a$a;

    invoke-interface {p1}, Lcom/google/android/gms/b/a$a;->onProviderInstalled()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/b/a;->a()Lcom/google/android/gms/common/j;

    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "pi"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/j;->zza(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/b;->b:Lcom/google/android/gms/b/a$a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/b/a$a;->onProviderInstallFailed(ILandroid/content/Intent;)V

    return-void
.end method
