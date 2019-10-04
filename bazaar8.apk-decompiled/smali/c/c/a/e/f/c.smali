.class public final Lc/c/a/e/f/c;
.super Ljava/lang/Object;
.source "ConverterDownloadPrice.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/f/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/f/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/f/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/f/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/f/c;->a:Lc/c/a/e/f/c$a;

    return-void
.end method

.method public static final a(I)Lcom/farsitel/bazaar/common/model/VideoPurchaseState;
    .locals 1

    sget-object v0, Lc/c/a/e/f/c;->a:Lc/c/a/e/f/c$a;

    invoke-virtual {v0, p0}, Lc/c/a/e/f/c$a;->a(I)Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/farsitel/bazaar/common/model/VideoPurchaseState;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lc/c/a/e/f/c;->a:Lc/c/a/e/f/c$a;

    invoke-virtual {v0, p0}, Lc/c/a/e/f/c$a;->a(Lcom/farsitel/bazaar/common/model/VideoPurchaseState;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
