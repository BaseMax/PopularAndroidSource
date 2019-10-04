.class public final Lcom/adyen/threeds2/internal/h/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/h/b/f;

.field private final b:Lcom/adyen/threeds2/internal/h/a/a/d;

.field private final c:Lcom/adyen/threeds2/internal/h/b/d;


# direct methods
.method public constructor <init>(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/f;->a()Lcom/adyen/threeds2/internal/h/a/b/f;

    move-result-object v0

    .line 48
    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/b/a;->a:Lcom/adyen/threeds2/internal/h/b/f;

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/adyen/threeds2/internal/h/a/b/f;->a(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/a/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/b/a;->b:Lcom/adyen/threeds2/internal/h/a/a/d;

    .line 50
    invoke-direct {p0, v0, p2}, Lcom/adyen/threeds2/internal/h/b/a;->a(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/b/d;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/h/b/a;->c:Lcom/adyen/threeds2/internal/h/b/d;

    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/h/a/b/f;Lcom/adyen/threeds2/internal/h/c/b;)Lcom/adyen/threeds2/internal/h/b/d;
    .locals 1

    .line 79
    instance-of v0, p1, Lcom/adyen/threeds2/internal/h/a/b/e;

    if-eqz v0, :cond_0

    .line 80
    const-class v0, Lcom/adyen/threeds2/internal/h/c/d;

    invoke-static {p2, v0}, Lcom/adyen/threeds2/internal/h/c/b;->a(Lcom/adyen/threeds2/internal/h/c/b;Ljava/lang/Class;)V

    .line 82
    check-cast p1, Lcom/adyen/threeds2/internal/h/a/b/e;

    .line 83
    check-cast p2, Lcom/adyen/threeds2/internal/h/c/d;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/h/c/d;->b()Ljava/security/interfaces/RSAPublicKey;

    move-result-object p2

    .line 84
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/a;->b:Lcom/adyen/threeds2/internal/h/a/a/d;

    invoke-virtual {p1, v0, p2}, Lcom/adyen/threeds2/internal/h/a/b/e;->a(Lcom/adyen/threeds2/internal/h/a/a/d;Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    new-instance p2, Lcom/adyen/threeds2/internal/h/b/d;

    invoke-direct {p2, p1}, Lcom/adyen/threeds2/internal/h/b/d;-><init>([B)V

    return-object p2
.end method


# virtual methods
.method public a([B)Lcom/adyen/threeds2/internal/h/b/h;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/a;->a:Lcom/adyen/threeds2/internal/h/b/f;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/b/f;->b()Lcom/adyen/threeds2/internal/h/a/a/b;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/a/a/b;->h()[B

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/adyen/threeds2/internal/h/b/a;->a:Lcom/adyen/threeds2/internal/h/b/f;

    invoke-virtual {v2}, Lcom/adyen/threeds2/internal/h/b/f;->c()[B

    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/adyen/threeds2/internal/h/b/a;->b:Lcom/adyen/threeds2/internal/h/a/a/d;

    invoke-virtual {v0, v3, v1, p1, v2}, Lcom/adyen/threeds2/internal/h/a/a/b;->a(Lcom/adyen/threeds2/internal/h/a/a/d;[B[B[B)Lcom/adyen/threeds2/internal/h/a/a/e;

    move-result-object p1

    .line 59
    new-instance v5, Lcom/adyen/threeds2/internal/h/b/g;

    invoke-direct {v5, v1}, Lcom/adyen/threeds2/internal/h/b/g;-><init>([B)V

    .line 60
    new-instance v6, Lcom/adyen/threeds2/internal/h/b/e;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/e;->a()[B

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/adyen/threeds2/internal/h/b/e;-><init>([B)V

    .line 61
    new-instance v7, Lcom/adyen/threeds2/internal/h/b/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/a/a/e;->b()[B

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/adyen/threeds2/internal/h/b/c;-><init>([B)V

    .line 63
    new-instance p1, Lcom/adyen/threeds2/internal/h/b/h;

    iget-object v3, p0, Lcom/adyen/threeds2/internal/h/b/a;->a:Lcom/adyen/threeds2/internal/h/b/f;

    iget-object v4, p0, Lcom/adyen/threeds2/internal/h/b/a;->c:Lcom/adyen/threeds2/internal/h/b/d;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/adyen/threeds2/internal/h/b/h;-><init>(Lcom/adyen/threeds2/internal/h/b/f;Lcom/adyen/threeds2/internal/h/b/d;Lcom/adyen/threeds2/internal/h/b/g;Lcom/adyen/threeds2/internal/h/b/e;Lcom/adyen/threeds2/internal/h/b/c;)V

    return-object p1
.end method

.method public a(Lcom/adyen/threeds2/internal/h/b/h;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/adyen/threeds2/internal/h/b/a;->a:Lcom/adyen/threeds2/internal/h/b/f;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/b/f;->b()Lcom/adyen/threeds2/internal/h/a/a/b;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/h;->a()Lcom/adyen/threeds2/internal/h/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/b/f;->c()[B

    move-result-object v5

    .line 69
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/h;->b()Lcom/adyen/threeds2/internal/h/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/b/g;->c()[B

    move-result-object v3

    .line 70
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/h;->c()Lcom/adyen/threeds2/internal/h/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/h/b/e;->c()[B

    move-result-object v4

    .line 71
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/h;->d()Lcom/adyen/threeds2/internal/h/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/h/b/c;->c()[B

    move-result-object v6

    .line 73
    iget-object v2, p0, Lcom/adyen/threeds2/internal/h/b/a;->b:Lcom/adyen/threeds2/internal/h/a/a/d;

    invoke-virtual/range {v1 .. v6}, Lcom/adyen/threeds2/internal/h/a/a/b;->a(Lcom/adyen/threeds2/internal/h/a/a/d;[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method
