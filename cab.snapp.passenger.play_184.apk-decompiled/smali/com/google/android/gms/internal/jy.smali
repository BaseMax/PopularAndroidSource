.class final Lcom/google/android/gms/internal/jy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/jx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jy;->a:Lcom/google/android/gms/internal/jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jy;->a:Lcom/google/android/gms/internal/jx;

    invoke-static {v0}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/jx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jy;->a:Lcom/google/android/gms/internal/jx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->c()V

    return-void
.end method
