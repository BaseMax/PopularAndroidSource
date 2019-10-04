.class final Lcom/google/android/gms/internal/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/bd;

.field private synthetic b:Lcom/google/android/gms/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/o;Lcom/google/android/gms/internal/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/u;->b:Lcom/google/android/gms/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/internal/u;->a:Lcom/google/android/gms/internal/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->b:Lcom/google/android/gms/internal/o;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->a:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/al;->zzb(Lcom/google/android/gms/internal/bd;)V

    return-void
.end method
