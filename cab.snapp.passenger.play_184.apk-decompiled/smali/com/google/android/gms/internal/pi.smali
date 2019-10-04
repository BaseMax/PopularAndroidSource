.class final Lcom/google/android/gms/internal/pi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/sn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ph;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ph;

    iput-object p1, p0, Lcom/google/android/gms/internal/pi;->a:Lcom/google/android/gms/internal/ph;

    iget-object p1, p0, Lcom/google/android/gms/internal/pi;->a:Lcom/google/android/gms/internal/ph;

    iput-object p0, p1, Lcom/google/android/gms/internal/ph;->b:Lcom/google/android/gms/internal/pi;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ph;)Lcom/google/android/gms/internal/pi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ph;->b:Lcom/google/android/gms/internal/pi;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ph;->b:Lcom/google/android/gms/internal/pi;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/pi;-><init>(Lcom/google/android/gms/internal/ph;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;)V
    .locals 1

    :try_start_0
    instance-of v0, p2, Lcom/google/android/gms/internal/ou;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pi;->a:Lcom/google/android/gms/internal/ph;

    check-cast p2, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ph;->zzb(ILcom/google/android/gms/internal/ou;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pi;->a:Lcom/google/android/gms/internal/ph;

    check-cast p2, Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ph;->zzb(ILcom/google/android/gms/internal/qr;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzcwv()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphn:I

    return v0
.end method
