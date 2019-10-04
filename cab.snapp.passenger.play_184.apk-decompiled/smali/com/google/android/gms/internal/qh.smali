.class final Lcom/google/android/gms/internal/qh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rg;


# static fields
.field private static final c:Lcom/google/android/gms/internal/qq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/qq;

.field private final b:Lcom/google/android/gms/internal/zzfgu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qh;->c:Lcom/google/android/gms/internal/qq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfgu;->zzpil:Lcom/google/android/gms/internal/zzfgu;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/qh;-><init>(Lcom/google/android/gms/internal/zzfgu;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/qq;Lcom/google/android/gms/internal/zzfgu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/qq;

    iput-object p1, p0, Lcom/google/android/gms/internal/qh;->a:Lcom/google/android/gms/internal/qq;

    const-string p1, "mode"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/pu;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfgu;

    iput-object p1, p0, Lcom/google/android/gms/internal/qh;->b:Lcom/google/android/gms/internal/zzfgu;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzfgu;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/qk;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/qq;

    invoke-static {}, Lcom/google/android/gms/internal/pr;->zzcxl()Lcom/google/android/gms/internal/pr;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/qh;->a()Lcom/google/android/gms/internal/qq;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qk;-><init>([Lcom/google/android/gms/internal/qq;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/qh;-><init>(Lcom/google/android/gms/internal/qq;Lcom/google/android/gms/internal/zzfgu;)V

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/qq;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/qh;->c:Lcom/google/android/gms/internal/qq;

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/rf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/qp;",
            ")",
            "Lcom/google/android/gms/internal/rf<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ps;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/qh;->a(Lcom/google/android/gms/internal/qp;)Z

    move-result p0

    invoke-static {}, Lcom/google/android/gms/internal/qe;->b()Lcom/google/android/gms/internal/qe;

    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzczg()Lcom/google/android/gms/internal/ru;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/pn;->a()Lcom/google/android/gms/internal/pl;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/qo;->b()Lcom/google/android/gms/internal/qm;

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/qv;->a(Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/qv;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/qh;->a(Lcom/google/android/gms/internal/qp;)Z

    move-result p0

    invoke-static {}, Lcom/google/android/gms/internal/qe;->a()Lcom/google/android/gms/internal/qe;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzcze()Lcom/google/android/gms/internal/ru;

    invoke-static {}, Lcom/google/android/gms/internal/pn;->b()Lcom/google/android/gms/internal/pl;

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/qo;->a()Lcom/google/android/gms/internal/qm;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzczf()Lcom/google/android/gms/internal/ru;

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/internal/qp;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/qp;->zzcyv()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/qy;->zzpiy:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/Class;Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/rf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/qp;",
            ")",
            "Lcom/google/android/gms/internal/rf<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ps;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/qh;->a(Lcom/google/android/gms/internal/qp;)Z

    move-result p0

    invoke-static {}, Lcom/google/android/gms/internal/qe;->b()Lcom/google/android/gms/internal/qe;

    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzczg()Lcom/google/android/gms/internal/ru;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/pn;->a()Lcom/google/android/gms/internal/pl;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/qo;->b()Lcom/google/android/gms/internal/qm;

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/qv;->b(Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/qv;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/qh;->a(Lcom/google/android/gms/internal/qp;)Z

    move-result p0

    invoke-static {}, Lcom/google/android/gms/internal/qe;->a()Lcom/google/android/gms/internal/qe;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzcze()Lcom/google/android/gms/internal/ru;

    invoke-static {}, Lcom/google/android/gms/internal/pn;->b()Lcom/google/android/gms/internal/pl;

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/qo;->a()Lcom/google/android/gms/internal/qm;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzczf()Lcom/google/android/gms/internal/ru;

    goto :goto_1
.end method


# virtual methods
.method public final zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/rf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/rf<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/rh;->zzm(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qh;->a:Lcom/google/android/gms/internal/qq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/qq;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/qp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/qp;->zzcyw()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ps;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzczg()Lcom/google/android/gms/internal/ru;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/pn;->a()Lcom/google/android/gms/internal/pl;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/qp;->zzcyx()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/qw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ru;Lcom/google/android/gms/internal/pl;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qw;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/rh;->zzcze()Lcom/google/android/gms/internal/ru;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/pn;->b()Lcom/google/android/gms/internal/pl;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/qj;->a:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/qh;->b:Lcom/google/android/gms/internal/zzfgu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfgu;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/qp;->zzcyy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/rf;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qh;->b(Ljava/lang/Class;Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/rf;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qh;->b(Ljava/lang/Class;Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/rf;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/qp;)Lcom/google/android/gms/internal/rf;

    move-result-object p1

    return-object p1
.end method
