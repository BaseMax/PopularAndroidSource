.class public final Lc/c/a/n/w/b;
.super Ljava/util/TimerTask;
.source "SearchBoxViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/w/b;->a:Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/w/b;->a:Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$scheduleSearchTask$2;->$searchTask:Lh/f/a/a;

    invoke-interface {v0}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    return-void
.end method
