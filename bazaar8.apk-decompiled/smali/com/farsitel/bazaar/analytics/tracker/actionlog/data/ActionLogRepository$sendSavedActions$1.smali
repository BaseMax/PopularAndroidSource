.class public final Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ActionLogRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/b/a/a/a;->a(Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.analytics.tracker.actionlog.data.ActionLogRepository"
    f = "ActionLogRepository.kt"
    l = {
        0x4a
    }
    m = "sendSavedActions"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lc/c/a/a/b/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/a/b/a/a/a;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->this$0:Lc/c/a/a/b/a/a/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->label:I

    iget-object p1, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->this$0:Lc/c/a/a/b/a/a/a;

    invoke-virtual {p1, p0}, Lc/c/a/a/b/a/a/a;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
