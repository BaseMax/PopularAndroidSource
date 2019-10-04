.class public Lcom/adyen/threeds2/internal/a/a/a/g;
.super Lcom/adyen/threeds2/internal/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adyen/threeds2/internal/a/a/a/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x48

    .line 31
    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/a;->Y:Lcom/adyen/threeds2/internal/a/a/b/a/a;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/a/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/a/a/a/g;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method a(Ljava/lang/String;)Z
    .locals 0

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/adyen/threeds2/internal/a/a/b/a/a;->a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/a;
    :try_end_0
    .catch Lcom/adyen/threeds2/internal/g/a; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
