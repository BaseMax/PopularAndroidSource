.class Lcom/webengage/sdk/android/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Landroid/content/Context;

.field private c:Lcom/webengage/sdk/android/f;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;Lcom/webengage/sdk/android/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/aq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/webengage/sdk/android/aq;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/aq;->c:Lcom/webengage/sdk/android/f;

    iput-object p1, p0, Lcom/webengage/sdk/android/aq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/aq;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/webengage/sdk/android/aq;->c:Lcom/webengage/sdk/android/f;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "App has crashed\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebEngage"

    invoke-static {v1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/aq;->c:Lcom/webengage/sdk/android/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/f;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/aq;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
