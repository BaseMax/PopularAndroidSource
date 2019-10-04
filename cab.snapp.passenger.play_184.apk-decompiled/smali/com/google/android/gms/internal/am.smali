.class final Lcom/google/android/gms/internal/am;
.super Lcom/google/android/gms/internal/az;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/am;->a:Lcom/google/android/gms/internal/al;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/az;-><init>(Lcom/google/android/gms/internal/z;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/am;->a:Lcom/google/android/gms/internal/al;

    .line 2000
    new-instance v1, Lcom/google/android/gms/internal/ap;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ap;-><init>(Lcom/google/android/gms/internal/al;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/al;->zzb(Lcom/google/android/gms/internal/bd;)V

    return-void
.end method
