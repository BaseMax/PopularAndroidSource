.class public final Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UpgradableAppRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/ba;->a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.app.UpgradableAppRepository"
    f = "UpgradableAppRepository.kt"
    l = {
        0x7e,
        0x7f
    }
    m = "removeIfAppIsUpdate"
.end annotation


# instance fields
.field public J$0:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lc/c/a/e/d/b/ba;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->this$0:Lc/c/a/e/d/b/ba;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->label:I

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->this$0:Lc/c/a/e/d/b/ba;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lc/c/a/e/d/b/ba;->a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
