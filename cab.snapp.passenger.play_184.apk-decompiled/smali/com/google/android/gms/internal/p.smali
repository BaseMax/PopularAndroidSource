.class final Lcom/google/android/gms/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/google/android/gms/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/p;->b:Lcom/google/android/gms/internal/o;

    iput p2, p0, Lcom/google/android/gms/internal/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/p;->b:Lcom/google/android/gms/internal/o;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/o;->a:Lcom/google/android/gms/internal/al;

    iget v1, p0, Lcom/google/android/gms/internal/p;->a:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/al;->zzr(J)V

    return-void
.end method
