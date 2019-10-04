.class public final Lcom/google/android/gms/common/util/r;
.super Ljava/lang/Object;


# direct methods
.method public static zzb(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/fr;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/fq;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fq;->zzf(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zzf(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "com.google.android.gms"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/r;->zzb(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/google/android/gms/common/t;->zzci(Landroid/content/Context;)Lcom/google/android/gms/common/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/t;->zza(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0

    :catch_0
    return v1
.end method
