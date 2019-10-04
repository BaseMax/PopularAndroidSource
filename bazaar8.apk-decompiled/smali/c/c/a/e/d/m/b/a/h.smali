.class public final Lc/c/a/e/d/m/b/a/h;
.super Ljava/lang/Object;
.source "GetSKUDetailsRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.productFinancialDetailsRequest"
.end annotation


# instance fields
.field public final apiVersion:I
    .annotation runtime Lc/e/d/a/c;
        value = "apiVersion"
    .end annotation
.end field

.field public final dealerPackageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "dealerPackageName"
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "language"
    .end annotation
.end field

.field public final skus:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "skus"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dealerPackageName"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/m/b/a/h;->language:Ljava/lang/String;

    iput p2, p0, Lc/c/a/e/d/m/b/a/h;->apiVersion:I

    iput-object p3, p0, Lc/c/a/e/d/m/b/a/h;->dealerPackageName:Ljava/lang/String;

    iput-object p4, p0, Lc/c/a/e/d/m/b/a/h;->type:Ljava/lang/String;

    iput-object p5, p0, Lc/c/a/e/d/m/b/a/h;->skus:Ljava/util/List;

    return-void
.end method
