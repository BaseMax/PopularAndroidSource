.class final Lcom/google/android/gms/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/a/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/d;->a:Lcom/google/android/gms/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/a/d;->a:Lcom/google/android/gms/a/c;

    .line 1000
    iput-object p1, v0, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/a/b;

    .line 2000
    iget-object p1, v0, Lcom/google/android/gms/a/c;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/a/k;

    iget-object v1, p0, Lcom/google/android/gms/a/d;->a:Lcom/google/android/gms/a/c;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/a/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/a/k;->zzb(Lcom/google/android/gms/a/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/a/d;->a:Lcom/google/android/gms/a/c;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/a/c;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/a/d;->a:Lcom/google/android/gms/a/c;

    const/4 v0, 0x0

    .line 5000
    iput-object v0, p1, Lcom/google/android/gms/a/c;->b:Landroid/os/Bundle;

    return-void
.end method
