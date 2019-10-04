.class abstract enum Lcom/google/android/gms/internal/sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/sj;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/google/android/gms/internal/sj;

.field private static enum b:Lcom/google/android/gms/internal/sj;

.field private static final synthetic c:[Lcom/google/android/gms/internal/sj;

.field public static final enum zzpmw:Lcom/google/android/gms/internal/sj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/sk;

    const-string v1, "LOOSE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/sk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/sj;->a:Lcom/google/android/gms/internal/sj;

    new-instance v0, Lcom/google/android/gms/internal/sl;

    const-string v1, "STRICT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/sl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/sj;->zzpmw:Lcom/google/android/gms/internal/sj;

    new-instance v0, Lcom/google/android/gms/internal/sm;

    const-string v1, "LAZY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/sm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/sj;->b:Lcom/google/android/gms/internal/sj;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/sj;

    sget-object v1, Lcom/google/android/gms/internal/sj;->a:Lcom/google/android/gms/internal/sj;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/sj;->zzpmw:Lcom/google/android/gms/internal/sj;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/sj;->b:Lcom/google/android/gms/internal/sj;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/sj;->c:[Lcom/google/android/gms/internal/sj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/sj;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/sj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/sj;->c:[Lcom/google/android/gms/internal/sj;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/sj;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/google/android/gms/internal/pd;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
