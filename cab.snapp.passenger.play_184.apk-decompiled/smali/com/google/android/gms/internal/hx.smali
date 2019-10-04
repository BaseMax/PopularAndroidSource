.class final Lcom/google/android/gms/internal/hx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/google/android/gms/internal/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hu;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hx;->b:Lcom/google/android/gms/internal/hu;

    iput-wide p2, p0, Lcom/google/android/gms/internal/hx;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->b:Lcom/google/android/gms/internal/hu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/hx;->a:J

    .line 1000
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hu;->a(J)V

    return-void
.end method
