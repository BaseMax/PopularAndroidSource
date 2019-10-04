.class public final enum Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lc/e/a/b/g/f/rb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbt$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;",
        ">;",
        "Lc/e/a/b/g/f/rb;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

.field public static final enum b:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

.field public static final c:Lc/e/a/b/g/f/sb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/sb<",
            "Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic d:[Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->a:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    const/4 v3, 0x2

    const-string v4, "PROVISIONING"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->b:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    .line 3
    new-array v0, v3, [Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->a:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->b:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->d:[Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    .line 4
    new-instance v0, Lc/e/a/b/g/f/P;

    invoke-direct {v0}, Lc/e/a/b/g/f/P;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->c:Lc/e/a/b/g/f/sb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->b:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->a:Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    return-object p0
.end method

.method public static f()Lc/e/a/b/g/f/tb;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/Q;->a:Lc/e/a/b/g/f/tb;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->d:[Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->value:I

    return v0
.end method
