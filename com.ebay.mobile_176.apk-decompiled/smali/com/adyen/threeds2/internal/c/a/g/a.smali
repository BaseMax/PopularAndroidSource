.class public abstract Lcom/adyen/threeds2/internal/c/a/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/internal/c/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/c/a/g/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/adyen/threeds2/internal/c/a/g/a$a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->STRING:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/c/a/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adyen/threeds2/internal/c/a/g/a$a;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adyen/threeds2/internal/c/a/g/a$a;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->c:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/c/a/g/a;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract b(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/adyen/threeds2/internal/c/a/g/a$a;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->c:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-object v0
.end method

.method public d()Lcom/adyen/threeds2/internal/c/a/g/a;
    .locals 1

    .line 77
    sget-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->FLOAT:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->c:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-object p0
.end method

.method public e()Lcom/adyen/threeds2/internal/c/a/g/a;
    .locals 1

    .line 82
    sget-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->INTEGER:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->c:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-object p0
.end method

.method public f()Lcom/adyen/threeds2/internal/c/a/g/a;
    .locals 1

    .line 87
    sget-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->LONG:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    iput-object v0, p0, Lcom/adyen/threeds2/internal/c/a/g/a;->c:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-object p0
.end method
