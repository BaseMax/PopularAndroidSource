.class final Lcom/google/android/gms/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/k;


# instance fields
.field private synthetic a:Landroid/os/Bundle;

.field private synthetic b:Lcom/google/android/gms/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/c;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/f;->b:Lcom/google/android/gms/a/c;

    iput-object p2, p0, Lcom/google/android/gms/a/f;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/a/b;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/a/f;->b:Lcom/google/android/gms/a/c;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/a/b;

    iget-object v0, p0, Lcom/google/android/gms/a/f;->a:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/google/android/gms/a/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
