.class abstract Lcom/webengage/sdk/android/as;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/as$a;,
        Lcom/webengage/sdk/android/as$b;
    }
.end annotation


# instance fields
.field private a:Lcom/webengage/sdk/android/as$b;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Messenger;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/as;->a:Lcom/webengage/sdk/android/as$b;

    iput-object v0, p0, Lcom/webengage/sdk/android/as;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/webengage/sdk/android/as;->c:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/as;)Lcom/webengage/sdk/android/as$b;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/as;->a:Lcom/webengage/sdk/android/as$b;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/webengage/sdk/android/as;->c:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/webengage/sdk/android/as;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/webengage/sdk/android/as;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/webengage/sdk/android/as$b;

    iget-object v1, p0, Lcom/webengage/sdk/android/as;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/as$b;-><init>(Lcom/webengage/sdk/android/as;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/webengage/sdk/android/as;->a:Lcom/webengage/sdk/android/as$b;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/webengage/sdk/android/as$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/webengage/sdk/android/as$a;-><init>(Lcom/webengage/sdk/android/as;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/webengage/sdk/android/as;->c:Landroid/os/Messenger;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/webengage/sdk/android/as;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iput p3, p2, Landroid/os/Message;->arg1:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p2, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/webengage/sdk/android/as;->a:Lcom/webengage/sdk/android/as$b;

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/as$b;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
