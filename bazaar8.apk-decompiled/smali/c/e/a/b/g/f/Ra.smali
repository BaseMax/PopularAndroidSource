.class public final Lc/e/a/b/g/f/Ra;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzeg;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lc/e/a/b/g/f/Ra;->b:[B

    .line 3
    iget-object p1, p0, Lc/e/a/b/g/f/Ra;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzeg;->a([B)Lcom/google/android/gms/internal/measurement/zzeg;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/g/f/Ra;->a:Lcom/google/android/gms/internal/measurement/zzeg;

    return-void
.end method

.method public synthetic constructor <init>(ILc/e/a/b/g/f/La;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lc/e/a/b/g/f/Ra;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzdp;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Ra;->a:Lcom/google/android/gms/internal/measurement/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzeg;->c()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdz;

    iget-object v1, p0, Lc/e/a/b/g/f/Ra;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdz;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/zzeg;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Ra;->a:Lcom/google/android/gms/internal/measurement/zzeg;

    return-object v0
.end method
