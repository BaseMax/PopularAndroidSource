.class final Lcom/google/android/gms/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/k;


# instance fields
.field private synthetic a:Lcom/google/android/gms/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/i;->a:Lcom/google/android/gms/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/a/b;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/a/i;->a:Lcom/google/android/gms/a/c;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/a/b;

    invoke-interface {p1}, Lcom/google/android/gms/a/b;->onStart()V

    return-void
.end method
