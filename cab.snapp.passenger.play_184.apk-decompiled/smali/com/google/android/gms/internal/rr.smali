.class final Lcom/google/android/gms/internal/rr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rs;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ou;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ou;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rr;->a:Lcom/google/android/gms/internal/ou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rr;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    return v0
.end method

.method public final zzkn(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rr;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ou;->zzkn(I)B

    move-result p1

    return p1
.end method
