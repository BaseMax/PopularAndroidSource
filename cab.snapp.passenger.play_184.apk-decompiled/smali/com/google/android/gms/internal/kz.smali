.class final Lcom/google/android/gms/internal/kz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/internal/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ky;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kz;->b:Lcom/google/android/gms/internal/ky;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/kz;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->b:Lcom/google/android/gms/internal/ky;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/kz;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/ky;Z)V

    return-void
.end method
