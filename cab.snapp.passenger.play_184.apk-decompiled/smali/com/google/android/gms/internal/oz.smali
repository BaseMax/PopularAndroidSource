.class final Lcom/google/android/gms/internal/oz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ph;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/oz;->b:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/oz;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ph;->zzbc([B)Lcom/google/android/gms/internal/ph;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/oz;->a:Lcom/google/android/gms/internal/ph;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/oz;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzcvr()Lcom/google/android/gms/internal/ou;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/oz;->a:Lcom/google/android/gms/internal/ph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ph;->zzcwt()V

    new-instance v0, Lcom/google/android/gms/internal/pb;

    iget-object v1, p0, Lcom/google/android/gms/internal/oz;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pb;-><init>([B)V

    return-object v0
.end method

.method public final zzcvs()Lcom/google/android/gms/internal/ph;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oz;->a:Lcom/google/android/gms/internal/ph;

    return-object v0
.end method
