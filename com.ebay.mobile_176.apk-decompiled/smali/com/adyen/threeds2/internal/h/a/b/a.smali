.class final Lcom/adyen/threeds2/internal/h/a/b/a;
.super Lcom/adyen/threeds2/internal/h/a/b/b;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method private static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x295

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/h/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/h/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/h/a/a/b;[B)Lcom/adyen/threeds2/internal/h/a/a/d;
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/b;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    .line 54
    invoke-static {p2, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 56
    new-instance v0, Lcom/adyen/threeds2/internal/h/a/a/d;

    invoke-direct {v0, p2, p1}, Lcom/adyen/threeds2/internal/h/a/a/d;-><init>([BLcom/adyen/threeds2/internal/h/a/a/b;)V

    return-object v0
.end method

.method public a(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/a/a/d;
    .locals 1

    .line 43
    const-class v0, Lcom/adyen/threeds2/internal/h/c/e;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/internal/h/c/b;->a(Lcom/adyen/threeds2/internal/h/c/b;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/f;->b()Lcom/adyen/threeds2/internal/h/a/a/b;

    move-result-object p1

    .line 46
    check-cast p2, Lcom/adyen/threeds2/internal/h/c/e;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/c/e;->a()[B

    move-result-object p2

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/adyen/threeds2/internal/h/a/b/a;->a(Lcom/adyen/threeds2/internal/h/a/a/b;[B)Lcom/adyen/threeds2/internal/h/a/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x294

    .line 38
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
