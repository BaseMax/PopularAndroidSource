.class final Lcom/google/android/gms/internal/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bd;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/google/android/gms/internal/bp;

.field final synthetic c:Landroid/app/job/JobParameters;

.field final synthetic d:Lcom/google/android/gms/internal/bw;

.field private synthetic e:Lcom/google/android/gms/internal/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bw;Ljava/lang/Integer;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/bp;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/bw;

    iput-object p2, p0, Lcom/google/android/gms/internal/bx;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/bx;->e:Lcom/google/android/gms/internal/z;

    iput-object p4, p0, Lcom/google/android/gms/internal/bx;->b:Lcom/google/android/gms/internal/bp;

    iput-object p5, p0, Lcom/google/android/gms/internal/bx;->c:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/bx;->d:Lcom/google/android/gms/internal/bw;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/internal/bw;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/by;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/by;-><init>(Lcom/google/android/gms/internal/bx;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
