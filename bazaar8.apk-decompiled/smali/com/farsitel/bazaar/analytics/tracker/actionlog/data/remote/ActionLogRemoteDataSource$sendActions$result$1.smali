.class public final Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ActionLogRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/b/a/a/c/a;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/a/b/a/a/c/a/e;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/a/b/a/a/c/a;


# direct methods
.method public constructor <init>(Lc/c/a/a/b/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$result$1;->this$0:Lc/c/a/a/b/a/a/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/b/a/a/c/a/e;)I
    .locals 2

    const-string v0, "sendActionLogResponseDto"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$result$1;->this$0:Lc/c/a/a/b/a/a/c/a;

    invoke-virtual {p1}, Lc/c/a/a/b/a/a/c/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/a/b/a/a/c/a;->a(Lc/c/a/a/b/a/a/c/a;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lc/c/a/a/b/a/a/c/a/e;->a()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/a/b/a/a/c/a/e;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$result$1;->a(Lc/c/a/a/b/a/a/c/a/e;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
