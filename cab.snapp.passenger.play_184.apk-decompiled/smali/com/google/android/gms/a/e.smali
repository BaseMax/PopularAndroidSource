.class final Lcom/google/android/gms/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/k;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Landroid/os/Bundle;

.field private synthetic c:Landroid/os/Bundle;

.field private synthetic d:Lcom/google/android/gms/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/c;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/e;->d:Lcom/google/android/gms/a/c;

    iput-object p2, p0, Lcom/google/android/gms/a/e;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/a/e;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/a/e;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/a/b;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/a/e;->d:Lcom/google/android/gms/a/c;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/a/b;

    iget-object v0, p0, Lcom/google/android/gms/a/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/a/e;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/a/e;->c:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/a/b;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
