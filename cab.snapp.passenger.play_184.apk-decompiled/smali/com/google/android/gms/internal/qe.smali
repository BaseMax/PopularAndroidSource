.class Lcom/google/android/gms/internal/qe;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/qe;

.field private static final b:Lcom/google/android/gms/internal/qe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/qf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qf;-><init>(B)V

    sput-object v0, Lcom/google/android/gms/internal/qe;->a:Lcom/google/android/gms/internal/qe;

    new-instance v0, Lcom/google/android/gms/internal/qg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qg;-><init>(B)V

    sput-object v0, Lcom/google/android/gms/internal/qe;->b:Lcom/google/android/gms/internal/qe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qe;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/qe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qe;->a:Lcom/google/android/gms/internal/qe;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/qe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qe;->b:Lcom/google/android/gms/internal/qe;

    return-object v0
.end method
