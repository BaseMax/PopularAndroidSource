.class final Lcom/google/android/gms/internal/mk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/mf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mk;->a:Lcom/google/android/gms/internal/mf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->a:Lcom/google/android/gms/internal/mf;

    iget-object v0, v0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    const/4 v1, 0x0

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ir;

    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->a:Lcom/google/android/gms/internal/mf;

    iget-object v0, v0, Lcom/google/android/gms/internal/mf;->a:Lcom/google/android/gms/internal/lr;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/lr;->h()V

    return-void
.end method
