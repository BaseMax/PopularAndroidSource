.class public final Lc/c/a/e/d/m/c$a;
.super Ljava/lang/Object;
.source "PaymentEntities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/d/m/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/e/d/m/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc/c/a/e/d/m/c;
    .locals 2

    const-string v0, "paymentData"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    .line 2
    invoke-virtual {v0}, Lc/c/a/e/j/b;->a()Lc/e/d/j;

    move-result-object v0

    new-instance v1, Lc/c/a/e/d/m/b;

    invoke-direct {v1}, Lc/c/a/e/d/m/b;-><init>()V

    invoke-virtual {v1}, Lc/e/d/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc/e/d/j;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/m/c;

    return-object p1
.end method
