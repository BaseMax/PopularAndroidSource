.class public abstract Lcom/google/android/gms/common/internal/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/bp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/bq;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/bq;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static zza(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/bp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/br;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/br;-><init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/internal/bd;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/bp;
    .locals 0

    new-instance p2, Lcom/google/android/gms/common/internal/bs;

    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/common/internal/bs;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/bd;)V

    return-object p2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/bp;->zzale()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw p2

    :catch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected abstract zzale()V
.end method
