.class public final Lcom/google/firebase/iid/h;
.super Landroid/os/Binder;


# instance fields
.field private final a:Lcom/google/firebase/iid/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/h;->a:Lcom/google/firebase/iid/d;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/iid/h;)Lcom/google/firebase/iid/d;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/h;->a:Lcom/google/firebase/iid/d;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/iid/f;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/h;->a:Lcom/google/firebase/iid/d;

    iget-object v1, p1, Lcom/google/firebase/iid/f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/d;->zzq(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/iid/f;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/h;->a:Lcom/google/firebase/iid/d;

    iget-object v0, v0, Lcom/google/firebase/iid/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/iid/i;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/i;-><init>(Lcom/google/firebase/iid/h;Lcom/google/firebase/iid/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
