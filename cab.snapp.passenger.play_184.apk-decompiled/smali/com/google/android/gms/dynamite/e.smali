.class final Lcom/google/android/gms/dynamite/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/i;)Lcom/google/android/gms/dynamite/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$c;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/dynamite/j;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/j;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/i;->zzab(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/j;->zzgxg:I

    iget v1, v0, Lcom/google/android/gms/dynamite/j;->zzgxg:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/i;->zzc(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/i;->zzc(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    :goto_0
    iput p1, v0, Lcom/google/android/gms/dynamite/j;->zzgxh:I

    iget p1, v0, Lcom/google/android/gms/dynamite/j;->zzgxg:I

    if-nez p1, :cond_1

    iget p1, v0, Lcom/google/android/gms/dynamite/j;->zzgxh:I

    if-nez p1, :cond_1

    iput v2, v0, Lcom/google/android/gms/dynamite/j;->zzgxi:I

    goto :goto_1

    :cond_1
    iget p1, v0, Lcom/google/android/gms/dynamite/j;->zzgxg:I

    iget p2, v0, Lcom/google/android/gms/dynamite/j;->zzgxh:I

    if-lt p1, p2, :cond_2

    const/4 p1, -0x1

    iput p1, v0, Lcom/google/android/gms/dynamite/j;->zzgxi:I

    goto :goto_1

    :cond_2
    iput v3, v0, Lcom/google/android/gms/dynamite/j;->zzgxi:I

    :goto_1
    return-object v0
.end method
