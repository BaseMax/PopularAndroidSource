.class public final Lc/e/a/b/g/f/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/tb;


# static fields
.field public static final a:Lc/e/a/b/g/f/tb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Q;

    invoke-direct {v0}, Lc/e/a/b/g/f/Q;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/Q;->a:Lc/e/a/b/g/f/tb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;->a(I)Lcom/google/android/gms/internal/measurement/zzbt$zze$zzb;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
