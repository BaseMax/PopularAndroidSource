.class public final Lc/c/a/e/d/m/c;
.super Ljava/lang/Object;
.source "PaymentEntities.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/m/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/m/c$a;


# instance fields
.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final productId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "productId"
    .end annotation
.end field

.field public final purchaseTime:J
    .annotation runtime Lc/e/d/a/c;
        value = "purchaseTime"
    .end annotation
.end field

.field public final purchaseToken:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "purchaseToken"
    .end annotation
.end field

.field public final state:I
    .annotation runtime Lc/e/d/a/c;
        value = "state"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/d/m/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/m/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/m/c;->a:Lc/c/a/e/d/m/c$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/c;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/c;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/e/d/m/c;->purchaseTime:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/c;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/d/m/c;->state:I

    return v0
.end method
