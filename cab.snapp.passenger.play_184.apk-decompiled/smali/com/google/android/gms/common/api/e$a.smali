.class public final Lcom/google/android/gms/common/api/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final zzfmj:Lcom/google/android/gms/common/api/e$a;


# instance fields
.field public final zzfmk:Lcom/google/android/gms/common/api/internal/bx;

.field public final zzfml:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/r;->zzagq()Lcom/google/android/gms/common/api/e$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/e$a;->zzfmj:Lcom/google/android/gms/common/api/e$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/bx;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/e$a;->zzfmk:Lcom/google/android/gms/common/api/internal/bx;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e$a;->zzfml:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/bx;Landroid/os/Looper;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/e$a;-><init>(Lcom/google/android/gms/common/api/internal/bx;Landroid/os/Looper;)V

    return-void
.end method
