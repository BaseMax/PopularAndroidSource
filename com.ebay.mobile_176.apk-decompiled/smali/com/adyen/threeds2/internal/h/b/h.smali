.class public final Lcom/adyen/threeds2/internal/h/b/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/adyen/threeds2/internal/h/b/f;

.field private final c:Lcom/adyen/threeds2/internal/h/b/d;

.field private final d:Lcom/adyen/threeds2/internal/h/b/g;

.field private final e:Lcom/adyen/threeds2/internal/h/b/e;

.field private final f:Lcom/adyen/threeds2/internal/h/b/c;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2b0

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/b/d;Lcom/adyen/threeds2/internal/h/b/g;Lcom/adyen/threeds2/internal/h/b/e;Lcom/adyen/threeds2/internal/h/b/c;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/b/h;->b:Lcom/adyen/threeds2/internal/h/b/f;

    .line 68
    iput-object p2, p0, Lcom/adyen/threeds2/internal/h/b/h;->c:Lcom/adyen/threeds2/internal/h/b/d;

    .line 69
    iput-object p3, p0, Lcom/adyen/threeds2/internal/h/b/h;->d:Lcom/adyen/threeds2/internal/h/b/g;

    .line 70
    iput-object p4, p0, Lcom/adyen/threeds2/internal/h/b/h;->e:Lcom/adyen/threeds2/internal/h/b/e;

    .line 71
    iput-object p5, p0, Lcom/adyen/threeds2/internal/h/b/h;->f:Lcom/adyen/threeds2/internal/h/b/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/h/b/h;
    .locals 8

    const/16 v0, 0x2ae

    .line 45
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 47
    array-length v0, p0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v3, Lcom/adyen/threeds2/internal/h/b/f;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-direct {v3, v0}, Lcom/adyen/threeds2/internal/h/b/f;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v4, Lcom/adyen/threeds2/internal/h/b/d;

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-direct {v4, v0}, Lcom/adyen/threeds2/internal/h/b/d;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v5, Lcom/adyen/threeds2/internal/h/b/g;

    const/4 v0, 0x2

    aget-object v0, p0, v0

    invoke-direct {v5, v0}, Lcom/adyen/threeds2/internal/h/b/g;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v6, Lcom/adyen/threeds2/internal/h/b/e;

    const/4 v0, 0x3

    aget-object v0, p0, v0

    invoke-direct {v6, v0}, Lcom/adyen/threeds2/internal/h/b/e;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v7, Lcom/adyen/threeds2/internal/h/b/c;

    const/4 v0, 0x4

    aget-object p0, p0, v0

    invoke-direct {v7, p0}, Lcom/adyen/threeds2/internal/h/b/c;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance p0, Lcom/adyen/threeds2/internal/h/b/h;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/adyen/threeds2/internal/h/b/h;-><init>(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/b/d;Lcom/adyen/threeds2/internal/h/b/g;Lcom/adyen/threeds2/internal/h/b/e;Lcom/adyen/threeds2/internal/h/b/c;)V

    return-object p0

    .line 48
    :cond_0
    sget-object p0, Lcom/adyen/threeds2/internal/e/c;->CRYPTO_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a()Lcom/adyen/threeds2/internal/h/b/f;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/h;->b:Lcom/adyen/threeds2/internal/h/b/f;

    return-object v0
.end method

.method public b()Lcom/adyen/threeds2/internal/h/b/g;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/h;->d:Lcom/adyen/threeds2/internal/h/b/g;

    return-object v0
.end method

.method public c()Lcom/adyen/threeds2/internal/h/b/e;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/h;->e:Lcom/adyen/threeds2/internal/h/b/e;

    return-object v0
.end method

.method public d()Lcom/adyen/threeds2/internal/h/b/c;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/h;->f:Lcom/adyen/threeds2/internal/h/b/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .line 95
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x2af

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adyen/threeds2/internal/h/b/h;->b:Lcom/adyen/threeds2/internal/h/b/f;

    .line 96
    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/h/b/f;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adyen/threeds2/internal/h/b/h;->c:Lcom/adyen/threeds2/internal/h/b/d;

    .line 97
    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/h/b/d;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adyen/threeds2/internal/h/b/h;->d:Lcom/adyen/threeds2/internal/h/b/g;

    .line 98
    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/h/b/g;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adyen/threeds2/internal/h/b/h;->e:Lcom/adyen/threeds2/internal/h/b/e;

    .line 99
    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/h/b/e;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adyen/threeds2/internal/h/b/h;->f:Lcom/adyen/threeds2/internal/h/b/c;

    .line 100
    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/h/b/c;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 95
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
